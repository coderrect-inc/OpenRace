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

#include <llvm/IR/PassManager.h>
#include <llvm/Passes/PassBuilder.h>

#include "Trace/Event.h"

namespace race {

// This class is a simple wrapper for LLVM's ScopedNoAliasAA Pass
class SimpleAlias {
  llvm::PassBuilder PB;
  llvm::FunctionAnalysisManager FAM;

 public:
  SimpleAlias() { PB.registerFunctionAnalyses(FAM); }

  // return true if the memory accessed by each instruction cannot alias
  bool mustNotAlias(const WriteEvent *write, const MemAccessEvent *other);
};

}  // namespace race