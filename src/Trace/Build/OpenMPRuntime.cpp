/* Copyright 2021 Coderrect Inc. All Rights Reserved.
Licensed under the GNU Affero General Public License, version 3 or later (“AGPL”), as published by the Free Software
Foundation. You may not use this file except in compliance with the License. You may obtain a copy of the License at
https://www.gnu.org/licenses/agpl-3.0.en.html
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "OpenMPRuntime.h"

using namespace race;

namespace {
bool isOpenMPTeamSpecific(const IR *ir) {
  auto const type = ir->type;
  return type == IR::Type::OpenMPBarrier || type == IR::Type::OpenMPCriticalStart ||
         type == IR::Type::OpenMPCriticalEnd || type == IR::Type::OpenMPSetLock || type == IR::Type::OpenMPUnsetLock;
}

// return the spawning omp fork if this is an omp thread, else return nullptr
const OpenMPFork *isOpenMPThread(const ThreadTrace &thread) {
  if (!thread.spawnSite) return nullptr;
  return llvm::dyn_cast<OpenMPFork>(thread.spawnSite.value()->getIRInst());
}

// return true if thread is an OpenMP master thread
bool isOpenMPMasterThread(const ThreadTrace &thread) {
  auto const ompThread = isOpenMPThread(thread);
  if (!ompThread) return false;
  return ompThread->isForkingMaster();
}

bool isOpenMPTaskThread(const ThreadTrace &thread) {
  return thread.spawnSite.has_value() && thread.spawnSite.value()->getIRType() == IR::Type::OpenMPTaskFork;
}

}  // namespace

void OpenMPRuntime::addJoinEvent(const UnjoinedTask &task, ThreadBuildState &state) {
  auto taskJoin = std::make_shared<OpenMPTaskJoin>(task.forkIR);
  std::shared_ptr<const JoinIR> join(taskJoin, llvm::cast<JoinIR>(taskJoin.get()));
  state.events.push_back(std::make_unique<const JoinEventImpl>(join, state.einfo, state.events.size(), task.forkEvent));
}

bool OpenMPRuntime::preVisit(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) {
  // Some OpenMP features (e.g. locks) do not work across GPU teams, and so cannot prevent data races
  if (inTeamsregion && isOpenMPTeamSpecific(ir.get())) {
    // Skip this ir
    return true;
  }

  // If task is spawned in single region, only put spawn on master thread, or other task threads
  if (ir->type == IR::Type::OpenMPTaskFork && inSingleRegion && !isOpenMPMasterThread(state.thread) &&
      !isOpenMPTaskThread(state.thread)) {
    // Skip this ir
    return true;
  }

  if (ir->type == IR::Type::OpenMPForkTeams) {
    inTeamsregion = true;
    return false;
  }

  // at taskwait, join all child tasks of the current thread
  if (ir->type == IR::Type::OpenMPTaskWait) {
    // Join all tasks spawned by this thread and tasks spawned by any of its child threads

    std::vector<const ThreadTrace *> worklist;
    worklist.push_back(&state.thread);

    while (!worklist.empty()) {
      auto const thread = worklist.back();
      worklist.pop_back();

      for (auto const &childThread : thread->getChildThreads()) {
        // Add the thread to the worklist to be processed
        // worklist.push_back(childThread.get());

        // Check if this is an unjoined task thread
        if (!isOpenMPTaskThread(*childThread)) continue;
        auto forkEvent = childThread->spawnSite.value();
        auto it = std::find_if(unjoinedTasks.begin(), unjoinedTasks.end(),
                               [&forkEvent](auto const &unjoinedTask) { return unjoinedTask.forkEvent == forkEvent; });
        if (it == unjoinedTasks.end()) continue;

        // If so, join it
        addJoinEvent(*it, state);
        unjoinedTasks.erase(it);
      }
    }

    return false;
  }

  // If at barrier or end of parallel region, join all unjoined tasks
  if (ir->type == IR::Type::OpenMPBarrier || ir->type == IR::Type::OpenMPJoin) {
    for (auto const &task : unjoinedTasks) {
      addJoinEvent(task, state);
    }
    unjoinedTasks.clear();

    return false;
  }

  if (ir->type == IR::Type::OpenMPMasterStart) {
    if (!isOpenMPMasterThread(state.thread)) {
      // skip on non-master threads
      auto end = getMasterRegionEnd(ir->getInst());
      assert(end && "encountered master start without end");
      state.skipUntil = end;
      return true;
    }
    markMasterStart(ir->getInst());
    return false;
  }

  if (ir->type == IR::Type::OpenMPMasterEnd) {
    if (isOpenMPMasterThread(state.thread)) {
      markMasterEnd(ir->getInst());
    }
    return false;
  }

  if (ir->type == IR::Type::OpenMPSingleStart) {
    inSingleRegion = true;
  }

  if (ir->type == IR::Type::OpenMPSingleEnd) {
    inSingleRegion = false;
  }

  return false;
}

void OpenMPRuntime::preFork(const std::shared_ptr<const ForkIR> &forkIR, const ForkEvent *forkEvent) {
  if (forkIR->type == IR::Type::OpenMPTaskFork) {
    std::shared_ptr<const OpenMPTaskFork> task(forkIR, llvm::cast<OpenMPTaskFork>(forkIR.get()));
    unjoinedTasks.emplace_back(forkEvent, task);
  }
}

void OpenMPRuntime::postFork(const std::shared_ptr<const ForkIR> &forkIR, const ForkEvent *forkEvent) {
  if (forkIR->type == IR::Type::OpenMPForkTeams) {
    inTeamsregion = false;
  }
}