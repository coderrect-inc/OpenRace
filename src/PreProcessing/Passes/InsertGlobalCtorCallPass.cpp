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

#include "PreProcessing/Passes/InsertGlobalCtorCallPass.h"

#include <llvm/IR/Constants.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Module.h>

using namespace llvm;

auto InsertGlobalCtorCallPass::runOnModule(llvm::Module &M) -> bool {
  // TODO: make main configurable
  auto mainFun = M.getFunction("cr_main");
  if (mainFun == nullptr || mainFun->isDeclaration()) {
    return false;
  }

  IRBuilder<> builder(&mainFun->getEntryBlock().front());

  // Proc_Register, tmp fix for redisgraph
  Function *tmp = M.getFunction("Proc_Register");
  if (tmp) {
    builder.CreateCall(FunctionCallee(tmp->getFunctionType(), tmp));
  }

  auto ctors = M.getGlobalVariable("llvm.global_ctors");
  if (ctors == nullptr) {
    // no global ctors
    return false;
  }

  // @llvm.global_ctors = [N x { i32, void ()*, i8* }]
  if (ctors->hasInitializer()) {
    const llvm::Constant *initializer = ctors->getInitializer();
    if (initializer->isNullValue() || llvm::isa<llvm::UndefValue>(initializer)) {
      return false;
    }

    // traverse the init array
    auto *initArray = llvm::cast<llvm::ConstantArray>(initializer);
    for (int i = 0; i < initArray->getNumOperands(); i++) {
      llvm::Constant *curCtor = initArray->getOperand(i);
      // the ctor is a structure of type { i32, void ()*, i8* }
      llvm::Constant *init = llvm::cast<llvm::ConstantAggregate>(curCtor)->getOperand(1);
      auto initFun = llvm::cast<Function>(init);
      builder.CreateCall(FunctionCallee(initFun->getFunctionType(), initFun));
    }
  }

  return false;
}

char InsertGlobalCtorCallPass::ID = 0;
static RegisterPass<InsertGlobalCtorCallPass> IGCCP("", "Insert call to global variable constructor before main",
                                                    true, /*CFG only*/
                                                    false /*is analysis*/);
