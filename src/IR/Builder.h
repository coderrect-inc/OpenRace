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

using FunctionSummary = std::vector<std::shared_ptr<const IR>>;

// cache FunctionSummary here
class FunctionSummaryBuilder {
  std::map<const llvm::Function *, std::shared_ptr<const FunctionSummary>> cache;

 public:
  std::shared_ptr<const FunctionSummary> getFunctionSummary(const llvm::Function *func);
};
}  // namespace race