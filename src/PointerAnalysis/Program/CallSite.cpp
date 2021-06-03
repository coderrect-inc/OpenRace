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

#include "PointerAnalysis/Program/CallSite.h"

#include <llvm/IR/GlobalAlias.h>
#include <llvm/IR/Operator.h>

#include <set>

#include "Logging/Log.h"

using namespace pta;
using namespace llvm;

const Function* pta::CallSite::resolveTargetFunction(const Value* calledValue) {
  // TODO: In this case, a constant expression/global aliases, which can be
  // resolved directly
  if (auto bitcast = dyn_cast<BitCastOperator>(calledValue)) {
    if (auto function = dyn_cast<Function>(bitcast->getOperand(0))) {
      return function;
    }
  }

  if (auto globalAlias = dyn_cast<GlobalAlias>(calledValue)) {
    auto globalSymbol = globalAlias->getIndirectSymbol()->stripPointerCasts();
    if (auto function = dyn_cast<Function>(globalSymbol)) {
      return function;
    }
    llvm_unreachable(
        "resolveTargetFunction matched globalAlias but symbol was not "
        "Function");
  }

  if (isa<UndefValue>(calledValue)) {
    return nullptr;
  }
  llvm_unreachable("Unable to resolveTargetFunction from calledValue");
}
