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

#include <memory>
#include <queue>
#include <set>
#include <vector>

#include "IR/IR.h"
#include "IRImpls.h"

namespace race {

struct FunctionSummary {
  std::vector<std::shared_ptr<const IR>> instructions;
  std::queue<std::shared_ptr<OpenMPTask>> tasks;  // indicate whether there are omp tasks, for omp use only
};

// cache FunctionSummary here
class Builder {
  std::map<const llvm::Function *, std::shared_ptr<FunctionSummary>> cache;

  FunctionSummary generateFunctionSummary(const llvm::Function &func);

  std::shared_ptr<FunctionSummary> insert(const llvm::Function *func, FunctionSummary summary) {
    auto sum = std::make_shared<FunctionSummary>(summary);
    cache.insert(std::make_pair(func, sum));
    return sum;
  }

  std::shared_ptr<FunctionSummary> getSummary(const llvm::Function *func) {
    auto it = cache.find(func);
    if (it != cache.end()) return it->second;
    return nullptr;
  }

 public:
  std::shared_ptr<FunctionSummary> generateFunctionSummary(const llvm::Function *func);
};
}  // namespace race