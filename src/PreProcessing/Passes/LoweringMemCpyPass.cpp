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

#include "PreProcessing/Passes/LoweringMemCpyPass.h"

#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/NoFolder.h>
#include <llvm/Support/CommandLine.h>

#include <array>

using namespace std;
using namespace llvm;

extern cl::opt<bool> CONFIG_USE_FI_MODE;

namespace {
void lowerMemCpyForType(Type *type, Value *src, Value *dst, SmallVector<Value *, 5> &idx, llvm::Type *idxType,
                        IRBuilder<NoFolder> &builder) {
  switch (type->getTypeID()) {
    case llvm::Type::StructTyID: {
      auto structType = static_cast<const StructType *>(type);
      for (int i = 0; i < structType->getNumElements(); i++) {
        idx.push_back(ConstantInt::get(idxType, i));
        lowerMemCpyForType(structType->getElementType(i), src, dst, idx, idxType, builder);
        idx.pop_back();
      }
      break;
    }
    case llvm::Type::ArrayTyID: {
      auto arrayType = static_cast<const ArrayType *>(type);
      idx.push_back(ConstantInt::get(idxType, 0));
      lowerMemCpyForType(arrayType->getElementType(), src, dst, idx, idxType, builder);
      idx.pop_back();
      break;
    }
    case llvm::Type::PointerTyID: {
      auto srcGEP = builder.CreateGEP(src, idx, "");
      auto dstGEP = builder.CreateGEP(dst, idx, "");

      auto srcLoad = builder.CreateLoad(srcGEP);
      builder.CreateStore(srcLoad, dstGEP, false);
      break;
    }
    // case llvm::Type::FixedVectorTyID:
    // case llvm::Type::ScalableVectorTyID: {
    case llvm::Type::VectorTyID: {
      // simply skip vector type
      break;
    }
    default:
      // non-pointer scalar type, make no difference to pointer analysis.
      break;
  }
}

bool doLoweringMemcpy(llvm::Module &M) {
  if (CONFIG_USE_FI_MODE) {
    return false;
  }

  bool changed = false;

  // use i32 to index getelementptr
  // TODO: does it matter to use i32 instead of i64?
  auto const idxType = llvm::IntegerType::get(M.getContext(), 32);
  auto &DL = M.getDataLayout();
  IRBuilder<NoFolder> builder(M.getContext());

  constexpr array<StringRef, 2> MemCpys{"llvm.memcpy.p0i8.p0i8.i32", "llvm.memcpy.p0i8.p0i8.i64"};
  for (StringRef MemCpyName : MemCpys) {
    Function *memcpy = M.getFunction(MemCpyName);
    if (memcpy == nullptr) continue;

    vector<Instruction *> instToRemove;
    for (auto user : memcpy->users()) {
      auto *callInst = llvm::dyn_cast<llvm::CallInst>(user);
      if (callInst == nullptr) continue;
      Value *dst = callInst->getArgOperand(0);
      Value *src = callInst->getArgOperand(1);
      Value *len = callInst->getArgOperand(2);

      auto constLen = dyn_cast<ConstantInt>(len);
      auto dstBitCast = dyn_cast<BitCastInst>(dst);
      auto srcBitCast = dyn_cast<BitCastInst>(src);

      // Cannot lower memcpy if not constLen and on bitcast operands
      if (!constLen || !dstBitCast || !srcBitCast) continue;

      // Cannot lower memcpy if src and dst are not same type
      Type *dstType = dstBitCast->getSrcTy();
      Type *srcType = srcBitCast->getSrcTy();
      if (dstType != srcType) continue;

      Type *elemType = dstType->getPointerElementType();
      if (DL.getTypeAllocSize(elemType) != constLen->getSExtValue()) continue;

      SmallVector<Value *, 5> idx;
      idx.push_back(ConstantInt::get(idxType, 0));
      builder.SetInsertPoint(callInst);
      lowerMemCpyForType(elemType, srcBitCast->getOperand(0), dstBitCast->getOperand(0), idx, idxType, builder);
      changed = true;

      // do some simple cleanups
      instToRemove.push_back(callInst);
      if (srcBitCast->getNumUses() == 0) {
        if (auto srcInst = llvm::dyn_cast<BitCastInst>(src)) {
          instToRemove.push_back(srcInst);
        }
      }
      if (dstBitCast->getNumUses() == 0) {  // src might be equal to dst
        if (auto dstInst = llvm::dyn_cast<BitCastInst>(dst)) {
          if (dstInst->getParent() != nullptr) {
            instToRemove.push_back(dstInst);
          }
        }
      }
    }

    for (auto inst : instToRemove) {
      inst->eraseFromParent();
    }
    instToRemove.clear();
  }

  return changed;
}
}  // namespace

llvm::PreservedAnalyses LoweringMemcpyPass::run(llvm::Module &M, llvm::ModuleAnalysisManager &AM) {
  bool changed = doLoweringMemcpy(M);
  if (changed) {
    return PreservedAnalyses::none();
  }
  return PreservedAnalyses::all();
}

bool LoweringMemCpyLegacyPass::runOnModule(llvm::Module &M) { return doLoweringMemcpy(M); }

char LoweringMemCpyLegacyPass::ID = 0;
static RegisterPass<LoweringMemCpyLegacyPass> LMCPY("", "Lowering MemCpy call", false, /*CFG only*/
                                                    false /*is analysis*/);
