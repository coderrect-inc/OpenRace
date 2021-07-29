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

#include <Trace/Event.h>
#include <llvm/Passes/PassBuilder.h>

namespace race {

class SimpleArrayAnalysis {
  llvm::PassBuilder PB;
  llvm::FunctionAnalysisManager FAM;

 public:
  SimpleArrayAnalysis();

  // return true if events are array accesses who's access sets could overlap
  bool canIndexOverlap(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2);

  // return true if both events are array accesses in an omp loop
  bool isLoopArrayAccess(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2);

  // return true if event is an array access, not every getelementptr is an array access
  bool isArrayAccess(const llvm::GetElementPtrInst* gep);
};

}  // namespace race