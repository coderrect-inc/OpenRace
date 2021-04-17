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

#include <llvm/Passes/PassBuilder.h>

#include "Trace/Event.h"
#include "Trace/ThreadTrace.h"

namespace race {

class OmpArrayIndexAnalysis {
  llvm::PassBuilder PB;
  llvm::FunctionAnalysisManager FAM;

  // Start/End of omp loop
  using LoopRegion = std::pair<EventID, EventID>;

  // per-thread map of omp for loop regions
  std::map<ThreadID, std::vector<LoopRegion>> ompForLoops;

  // get cached list of loop regions, else create them
  const std::vector<LoopRegion>& getOmpForLoops(const ThreadTrace& trace);

  bool isInOmpFor(const race::MemAccessEvent* event);

 public:
  OmpArrayIndexAnalysis();

  // return true if events are array accesses who's access sets could overlap
  bool canIndexOverlap(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2);

  // return true if both events are array accesses in an omp loop
  bool isOmpLoopArrayAccess(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2);

  // return true if both events are part of the same omp team
  bool inSameTeam(const Event* lhs, const Event* rhs);
};

}  // namespace race