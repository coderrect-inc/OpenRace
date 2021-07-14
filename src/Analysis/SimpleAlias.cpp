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

#include "Analysis/SimpleAlias.h"

#include <llvm/Analysis/ScopedNoAliasAA.h>
#include <llvm/IR/Instruction.h>

using namespace race;

bool SimpleAlias::mustNotAlias(const WriteEvent *write, const MemAccessEvent *other) {
  // anallysis requires the instructions are in the same function
  if (write->getFunction() == other->getFunction()) return false;

  auto const writeMemLoc = llvm::MemoryLocation::getOrNone(write->getInst());
  auto const otherMemLoc = llvm::MemoryLocation::getOrNone(other->getInst());
  if (!writeMemLoc.hasValue() || !otherMemLoc.hasValue()) return false;

  llvm::AAQueryInfo aaqi;
  auto &AAResult = FAM.getResult<llvm::ScopedNoAliasAA>(*(const_cast<llvm::Function *>(write->getFunction())));
  return AAResult.alias(writeMemLoc.getValue(), otherMemLoc.getValue(), aaqi) == llvm::AliasResult::NoAlias;
}