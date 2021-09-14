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

#include "Trace/Build/RuntimeModel.h"
#include "Trace/Build/TraceBuilder.h"

namespace race {

class OpenMPRuntime : public Runtime {
  bool inTeamsregion = false;
  bool inSingleRegion = false;

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
  bool preVisit(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) override;
  void preFork(const std::shared_ptr<const ForkIR> &forkIR, const ForkEvent *forkEvent) override;
  void postFork(const std::shared_ptr<const ForkIR> &forkIR, const ForkEvent *forkEvent) override;
};

}  // namespace race