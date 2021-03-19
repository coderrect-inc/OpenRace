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

void duplicateOpenMPForks(llvm::Module &module) {
  for (auto &function : module.getFunctionList()) {
    for (auto &basicblock : function.getBasicBlockList()) {
      for (auto &inst : basicblock.getInstList()) {
        auto call = llvm::dyn_cast<llvm::CallBase>(&inst);
        if (!call || !call->getCalledFunction() || !call->getCalledFunction()->hasName()) continue;

        if (OpenMPModel::isFork(call->getCalledFunction()->getName())) {
          llvm::IRBuilder<> build(&inst);
          std::vector<llvm::Value *> arg_list;

          for (auto const &arg : call->args()) {
            auto val = llvm::cast<llvm::Value>(arg);
            arg_list.push_back(val);
          }

          auto callee = call->getCalledOperand();

          if (llvm::isa<llvm::CallInst>(&inst)) {
            // build.CreateCall(callee, llvm::ArrayRef<llvm::Value *>(arg_list));
            auto inst = build.CreateCall(callee, {arg_list});
            assert(inst);
          } else {
            auto II = llvm::cast<llvm::InvokeInst>(&inst);
            auto inst = build.CreateInvoke(callee, II->getNormalDest(), II->getUnwindDest(), {arg_list});
            assert(inst);
          }
        }
      }
    }
  }
}