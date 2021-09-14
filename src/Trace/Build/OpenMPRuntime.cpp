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
}  // namespace

bool OpenMPRuntime::preVisit(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) {
  // Some OpenMP features (e.g. locks) do not work across GPU teams, and so cannot prevent data races
  if (inTeamsregion && isOpenMPTeamSpecific(ir.get())) {
    // Skip this ir
    return true;
  }

  // If task is spawned in single region, only put spawn on master thread
  if (ir->type == IR::Type::OpenMPTaskFork && inSingleRegion && !onMasterThread) {
    // Skip this ir
    return true;
  }

  if (ir->type == IR::Type::OpenMPForkTeams) {
    inTeamsregion = true;
    return false;
  }

  // if omp join IR, omp barrier, or taskwait,  check for tasks that need to be joined
  if (ir->type == IR::Type::OpenMPBarrier || ir->type == IR::Type::OpenMPTaskWait || ir->type == IR::Type::OpenMPJoin) {
    std::vector<std::unique_ptr<const Event>> newEvents;
    newEvents.reserve(unjoinedTasks.size());

    for (auto const &task : unjoinedTasks) {
      auto taskJoin = std::make_shared<OpenMPTaskJoin>(task.forkIR);
      std::shared_ptr<const JoinIR> join(taskJoin, llvm::cast<JoinIR>(taskJoin.get()));
      state.events.push_back(
          std::make_unique<const JoinEventImpl>(join, state.einfo, state.events.size(), task.forkEvent));
    }

    return false;
  }

  if (ir->type == IR::Type::OpenMPMasterStart) {
    if (!onMasterThread) {
      // skip on non-master threads
      auto end = getMasterRegionEnd(ir->getInst());
      assert(end && "encountered master start without end");
      return true;
    }
    markMasterStart(ir->getInst());
    return false;
  }

  if (ir->type == IR::Type::OpenMPMasterEnd) {
    if (onMasterThread) {
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