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

#include "PreProcessing/Passes/CanonicalizeGEPPass.h"

#include <llvm/IR/Function.h>
#include <llvm/IR/GetElementPtrTypeIterator.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/NoFolder.h>
#include <llvm/IR/Operator.h>

#include "Logging/Log.h"

using namespace llvm;

static bool expandNestedGEP(Function &F, IRBuilder<NoFolder> &builder) {
  bool fixPoint;
  bool changed = false;  // whether we changed IR

  // 1st, get rid of nested instructions (using constexpr as their operand)
  // TODO: this might influence the performance because of the fix point
  // TODO: it is probably fine, but optimize it when we do find it is an issue
  do {
    fixPoint = true;
    for (auto &BB : F) {
      for (auto &I : BB) {
        // for every instruction in the Function, try
        for (int i = 0; i < I.getNumOperands(); i++) {
          Value *op = I.getOperand(i);
          if (auto CE = dyn_cast<ConstantExpr>(op)) {
            changed = true;
            fixPoint = false;
            builder.SetInsertPoint(&I);
            Instruction *inst = builder.Insert(CE->getAsInstruction());
            I.replaceUsesOfWith(op, inst);
          }
        }
      }
    }
  } while (!fixPoint);  // we need a fixed point algorithm here because constant
                        // expression can be recursive

  return changed;
}

static bool splitVariableGEP(Function &F, IRBuilder<NoFolder> &builder) {
  bool changed = false;
  // the queue that stores all the constant indices
  std::vector<Value *> consIndices;
  std::vector<GetElementPtrInst *> erasedGEP;
  ConstantInt *zero = ConstantInt::get(IntegerType::getInt32Ty(F.getContext()), 0);

  // 2nd, split instructions with that uses variable to index
  for (auto &BB : F) {
    for (auto &I : BB) {
      if (auto GEP = dyn_cast<GetElementPtrInst>(&I)) {
        if (GEP->hasAllConstantIndices()) {
          continue;
        }
        LOG_TRACE("replacing: {} with", I);
        builder.SetInsertPoint(GEP);
        Value *lastBasePtr = GEP->getPointerOperand();

        gep_type_iterator GTI = gep_type_begin(GEP);
        if (!isa<Constant>(GTI.getOperand())) {
          // the first idx is not a constant
          lastBasePtr = builder.CreateGEP(lastBasePtr, GTI.getOperand());
          LOG_TRACE("{}", *lastBasePtr);
          // since we skip the first index, we now start from gep 0,
          consIndices.push_back(zero);
          GTI++;
        } else if (auto *idx = dyn_cast<Constant>(GTI.getOperand()); !idx->isZeroValue()) {
          // the first index is constant, but is not a zero
          // getelementptr %ptr, 4, %idx1, ...
          lastBasePtr = builder.CreateGEP(lastBasePtr, idx);
          LOG_TRACE("{}", *lastBasePtr);
          consIndices.push_back(zero);
          GTI++;
        }

        for (gep_type_iterator GTE = gep_type_end(GEP); GTI != GTE; GTI++) {
          Value *op = GTI.getOperand();

          if (isa<Constant>(op)) {
            consIndices.push_back(op);
          } else {
            // we have a variable index
            // 1st, emit stored constant index if we have any
            // 2nd, emit the variable index.
            if (consIndices.size() != 1) {
              // if we have the const index, emit them
              // we are now handling a variable index, emit all the constant
              // indices
              lastBasePtr = builder.CreateGEP(lastBasePtr, consIndices);
              LOG_TRACE("{}", *lastBasePtr);
            }
            // emit current variable index
            lastBasePtr = builder.CreateGEP(lastBasePtr, {zero, op});
            LOG_TRACE("{}", *lastBasePtr);
            // clear stored indices.
            consIndices.clear();
            consIndices.push_back(zero);
          }
        }

        if (consIndices.size() != 1) {
          // consIndices.insert(consIndices.begin(), zero);
          lastBasePtr = builder.CreateGEP(lastBasePtr, consIndices);
          LOG_TRACE("{}", *lastBasePtr);
        } else {
          // the first should be a zero
          assert(consIndices.front() == zero);
        }

        consIndices.clear();
        GEP->replaceAllUsesWith(lastBasePtr);
        erasedGEP.push_back(GEP);
      }
    }
  }

  for (auto GEP : erasedGEP) {
    changed = true;
    GEP->eraseFromParent();
  }

  return changed;
}

llvm::PreservedAnalyses CanonicalizeGEPPass::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM) {
  IRBuilder<NoFolder> builder(F.getContext());
  bool changed = false;
  // 1st, expanded nested GEP instruction
  changed |= expandNestedGEP(F, builder);
  // 2nd, split GEP instruction that uses variable indices
  changed |= splitVariableGEP(F, builder);

  if (!changed) return PreservedAnalyses::all();
  // TODO: what should this actually return?
  return PreservedAnalyses::none();
}

// Legacy Pass

bool LegacyCanonicalizeGEPPass::runOnFunction(Function &F) {
  IRBuilder<NoFolder> builder(F.getContext());
  bool changed = false;
  // for field sensitive
  // 1st, expanded nested GEP instruction
  changed |= expandNestedGEP(F, builder);
  // 2nd, split GEP instruction that uses variable indices
  changed |= splitVariableGEP(F, builder);

  return changed;
}

char LegacyCanonicalizeGEPPass::ID = 0;
static RegisterPass<LegacyCanonicalizeGEPPass> CIP("", "Canonicalize GetElementPtr instruction", true, /*CFG only*/
                                                   false /*is analysis*/);
