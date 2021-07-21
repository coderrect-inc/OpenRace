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

#include <llvm/IR/Function.h>

namespace race {

class CallStack {
  std::vector<const llvm::Function *> stack;

 public:
  void push(const llvm::Function *func) { stack.push_back(func); }

  const llvm::Function *pop() {
    auto f = stack.back();
    stack.pop_back();
    return f;
  }
  bool contains(const llvm::Function *func) const { return std::find(stack.begin(), stack.end(), func) != stack.end(); }
  bool isEmpty() { return stack.empty(); }
};

}  // namespace race