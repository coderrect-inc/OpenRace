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

#pragma once

#include <assert.h>

#include <memory>
#include <variant>

#include "IR/IRImpls.h"
#include "Trace/Build/TraceBuilder.h"
#include "Trace/Event.h"

namespace race {

class Runtime {
 public:
  // called before the IR is traversed by trace builder. Return true if this ir should be skipped
  virtual bool preVisit(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) { return false; }

  // called after a fork event is created, but just before the thread trace is built
  virtual void preFork(const std::shared_ptr<const ForkIR> &forkIr, const ForkEvent *forkEvent) {}
  // called just after the forked thread trace has been built
  virtual void postFork(const std::shared_ptr<const ForkIR> &forkIr, const ForkEvent *forkEvent) {}
};

namespace {
bool isOpenMPTeamSpecific(const IR *ir) {
  auto const type = ir->type;
  return type == IR::Type::OpenMPBarrier || type == IR::Type::OpenMPCriticalStart ||
         type == IR::Type::OpenMPCriticalEnd || type == IR::Type::OpenMPSetLock || type == IR::Type::OpenMPUnsetLock;
}
}  // namespace

class OpenMPRuntime : Runtime {
  bool inTeamsregion = false;
  bool inSingleRegion = false;

  bool onMasterThread = false;
  std::map<const llvm::Instruction *, const llvm::Instruction *> masterRegions;
  const llvm::Instruction *currentMasterStart = nullptr;
  void markMasterStart(const llvm::Instruction *start) {
    assert(!currentMasterStart && "encountered two master starts in a row");
    currentMasterStart = start;
  }
  void markMasterEnd(const llvm::Instruction *end) {
    assert(currentMasterStart && "encountered master end without start");
    masterRegions.insert({currentMasterStart, end});
    currentMasterStart = nullptr;
  }
  const llvm::Instruction *getMasterRegionEnd(const llvm::Instruction *start) const { return masterRegions.at(start); }

  // NOTE: this ugliness is only needed because there is no way to get the shared_ptr
  // from the forkEvent. forkEvent->getIRInst() returns a raw pointer instead.
  struct UnjoinedTask {
    const ForkEvent *forkEvent;
    std::shared_ptr<const OpenMPTaskFork> forkIR;

    UnjoinedTask(const ForkEvent *forkEvent, std::shared_ptr<const OpenMPTaskFork> forkIR)
        : forkEvent(forkEvent), forkIR(forkIR) {}
  };

  // List of unjoined OpenMP task threads
  std::vector<UnjoinedTask> unjoinedTasks;

 public:
  bool preVisit(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) override {
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
    if (ir->type == IR::Type::OpenMPBarrier || ir->type == IR::Type::OpenMPTaskWait ||
        ir->type == IR::Type::OpenMPJoin) {
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

  void preFork(const std::shared_ptr<const ForkIR> &forkIR, const ForkEvent *forkEvent) override {
    if (forkIR->type == IR::Type::OpenMPTaskFork) {
      std::shared_ptr<const OpenMPTaskFork> task(forkIR, llvm::cast<OpenMPTaskFork>(forkIR.get()));
      unjoinedTasks.emplace_back(forkEvent, task);
    }
  }

  void postFork(const std::shared_ptr<const ForkIR> &forkIR, const ForkEvent *forkEvent) override {
    if (forkIR->type == IR::Type::OpenMPForkTeams) {
      inTeamsregion = false;
    }
  }
};

}  // namespace race