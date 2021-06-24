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

#include "PreProcessing/Passes/RemoveExceptionHandlerPass.h"

#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/Transforms/Utils/BasicBlockUtils.h>

#include "Logging/Log.h"

using namespace llvm;

namespace {

BasicBlock *createUnReachableBB(Function &F) {
  auto BB = BasicBlock::Create(F.getContext(), "cr.unreachable", &F);
  IRBuilder<> builder(BB);
  builder.CreateUnreachable();

  return BB;
}

// return true if the function was changed
bool removeExceptionHandlers(Function &F) {
  bool changed = false;
  BasicBlock *unReachableBB = nullptr;

  for (auto &BB : F) {
    for (auto &I : BB) {
      if (auto invokeInst = dyn_cast<InvokeInst>(&I)) {
        if (unReachableBB == nullptr) {
          unReachableBB = createUnReachableBB(F);
        }

        changed = true;
        invokeInst->setUnwindDest(unReachableBB);
      }
    }
  }

  if (changed) {
    EliminateUnreachableBlocks(F);
  }

  return changed;
}

}  // namespace

llvm::PreservedAnalyses RemoveExceptionHandlerPass::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
  auto changed = removeExceptionHandlers(F);

  if (changed) {
    return PreservedAnalyses::none();
  }

  return PreservedAnalyses::all();
}

bool RemoveExceptionHandlerLegacyPass::doInitialization(Module &M) {
  LOG_DEBUG("Processing Exception Handlers");
  return false;
}

bool RemoveExceptionHandlerLegacyPass::runOnFunction(Function &F) { return removeExceptionHandlers(F); }

char RemoveExceptionHandlerLegacyPass::ID = 0;
static RegisterPass<RemoveExceptionHandlerLegacyPass> REH("", "Remove Exception Handling Code in IR",
                                                          false, /*CFG only*/
                                                          false /*is analysis*/);
