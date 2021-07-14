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

#include <PointerAnalysis/Program/CallSite.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/PatternMatch.h>

#include <set>

namespace pta {

class DefaultHeapModel {
 private:
  // TODO: there should be more -> memalign, etc. maybe also include user-specified heap api?
  const llvm::SmallDenseSet<llvm::StringRef, 4> heapAllocAPIs{"malloc", "calloc", "_Znam", "_Znwm", "??2@YAPEAX_K@Z"};

 protected:
  static llvm::Type *getNextBitCastDestType(const llvm::Instruction *allocSite);

  // infer the type for calloc-like memory allocation.
  // NOTE: this can be used for sub class as well as general routine
  [[nodiscard]] static llvm::Type *inferCallocType(const llvm::Function *fun, const llvm::Instruction *allocSite,
                                                   int numArgNo = 0, int sizeArgNo = 1);

  // infer the type for malloc-like memory allocation.
  // NOTE: this can be used for sub class as well as general routine
  // NOTE:
  // if sizeArgNo < 0:
  //    the type should be modelled as unlimited bound array.
  [[nodiscard]] static llvm::Type *inferMallocType(const llvm::Function *fun, const llvm::Instruction *allocSite,
                                                   int sizeArgNo = 0);

 public:
  inline bool isCalloc(const llvm::Function *fun) const {
    if (fun->hasName()) {
      return fun->getName().equals("calloc");
    }
    return false;
  }

  inline bool isHeapAllocFun(const llvm::Function *fun) const {
    if (fun->hasName()) {
      return heapAllocAPIs.find(fun->getName()) != heapAllocAPIs.end();
    }
    return false;
  }

  inline llvm::Type *inferHeapAllocType(const llvm::Function *fun, const llvm::Instruction *allocSite) const {
    if (isCalloc(fun)) {
      // infer the type for calloc like function
      return inferCallocType(fun, allocSite);
    }

    // infer the type for malloc like function
    return inferMallocType(fun, allocSite);
  }

  // infer heap alloc type for openmp TODO: maybe move to OpenMPHeapModel ??
  inline llvm::Type *inferHeapAllocTypeForOpenMP(const llvm::Function *fun, const llvm::Instruction *allocSite) const {
    // 1st, get the callback function
    CallSite taskAllocCall(allocSite);
    auto taskEntry = llvm::cast<llvm::Function>(taskAllocCall.getArgOperand(5)->stripPointerCasts());
    int64_t sharedSize = llvm::cast<llvm::ConstantInt>(taskAllocCall.getArgOperand(4))->getSExtValue();

    if (sharedSize == 0) {
      return nullptr;
    }

    // the bitcast on the omp.task_t is the type of the allocated object
    const llvm::Argument &task = *(taskEntry->arg_begin() + 1);
    for (auto &BB : *taskEntry) {
      for (auto &I : BB) {
        // simple pattern matching
        // find a bitcast instruction which follows the following pattern
        // %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i32 0,
        // i32 0 %4 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %3, i32 0, i32 0 %5 = load i8*,
        // i8** %4 %6 = bitcast i8* %5 to %struct.anon* -> the type we trying to find
        llvm::Value *srcOp = nullptr;
        if (llvm::PatternMatch::match(
                &I, llvm::PatternMatch::m_BitCast(llvm::PatternMatch::m_Load(llvm::PatternMatch::m_Value(srcOp))))) {
          if (srcOp->stripPointerCasts() == &task) {
            // this is the bitcast we try to found
            return llvm::cast<llvm::BitCastInst>(I).getDestTy();
          }
        }
      }
    }
    return nullptr;
  }
};

}  // namespace pta
