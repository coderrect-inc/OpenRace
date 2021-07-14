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

#include "PreProcessing/Passes/DuplicateOpenMPForks.h"

#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/Support/raw_ostream.h>

#include "LanguageModel/OpenMP.h"

namespace {
// the first arg to OpenMP fork call is a kmpc_loc struct which contains info about the source location
// sometimes struct is re-used by updating the source loc between kmpc_fork calls
// this function makes sure each call to kmpc_fork gets a unique kmpc_loc object
void replaceForkLocArg(llvm::CallBase *ompFork) {
  // Start inserting before the fork call
  llvm::IRBuilder<> build(ompFork->getPrevNode());

  auto kmpc_loc = ompFork->getArgOperand(0);
  auto allocaInst = build.CreateAlloca(kmpc_loc->getType()->getPointerElementType(), nullptr, "cr_uniqueOmpForkHandle");
  assert(allocaInst && "failed to create alloca");
  ompFork->setArgOperand(0, allocaInst);
}

// This creates a duplicate call to kmpc_fork so that PTA can see two threads being spawned
void duplicateForkCall(llvm::CallBase *ompFork) {
  llvm::IRBuilder<> build(ompFork);
  std::vector<llvm::Value *> arg_list;

  for (auto const &arg : ompFork->args()) {
    auto val = llvm::cast<llvm::Value>(arg);
    arg_list.push_back(val);
  }

  // First arg is thread handle of type struct.ident_t *
  // create a new handle so that the two spawned threads can be distinguished from eachother
  auto ty = arg_list.front()->getType()->getPointerElementType();
  arg_list[0] = build.CreateAlloca(ty, nullptr, "cr_duplicateOmpForkHandle");

  auto callee = ompFork->getCalledOperand();

  if (llvm::isa<llvm::CallInst>(ompFork)) {
    auto inst = build.CreateCall(callee, {arg_list});
    assert(inst);
  } else {
    auto II = llvm::cast<llvm::InvokeInst>(ompFork);
    auto inst = build.CreateInvoke(callee, II->getNormalDest(), II->getUnwindDest(), {arg_list});
    assert(inst);
  }
}
}  // namespace

void duplicateOpenMPForks(llvm::Module &module) {
  for (auto &function : module.getFunctionList()) {
    for (auto &basicblock : function.getBasicBlockList()) {
      for (auto &inst : basicblock.getInstList()) {
        auto call = llvm::dyn_cast<llvm::CallBase>(&inst);
        if (!call || !call->getCalledFunction() || !call->getCalledFunction()->hasName()) continue;

        auto const funcName = call->getCalledFunction()->getName();
        if (OpenMPModel::isFork(funcName) || OpenMPModel::isForkTeams(funcName)) {
          replaceForkLocArg(call);
          duplicateForkCall(call);
        }
      }
    }
  }
}