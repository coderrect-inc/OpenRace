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

#include <llvm/IR/Function.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/PatternMatch.h>
#include "PointerAnalysis/Program/CallSite.h"
#include "LanguageModel/OpenMP.h"

#include <set>

namespace pta {

class DefaultHeapModel {
 private:
  // TODO: there should be more -> memalign, etc
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
};
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class GraphBLASHeapModel : public DefaultHeapModel {
private:
    // TODO: we can get rid of it! and use conflib for this!!
    const std::set<llvm::StringRef> HEAP_ALLOCATIONS{"GB_malloc_memory", "GB_calloc_memory"};
    const std::set<llvm::StringRef> HEAP_INITS{"GrB_Matrix_new", "GB_new"};
    // the set of APIs specified by users
    static std::set<llvm::StringRef> USER_HEAP_API;

public:
    // TODO: ensure that the user specified APIs return pointers!!
    static inline void init(std::vector<std::string> &heapAPIs) {
        for (auto &api : heapAPIs) {
            USER_HEAP_API.insert(api);
        }
    }

    inline bool isHeapAllocFun(const llvm::Function *fun) const {
      if (fun->hasName()) {
          return DefaultHeapModel::isHeapAllocFun(fun) || OpenMPModel::isTaskAlloc(fun->getName()) ||
                isHeapInitFun(fun) || // any function in interceptHeapAllocation is heap alloc function
                HEAP_ALLOCATIONS.find(fun->getName()) != HEAP_ALLOCATIONS.end();
                //USER_HEAP_API.find(fun->getName().split(".").first) != USER_HEAP_API.end();
      }
      return false;
    }

    inline bool isHeapInitFun(const llvm::Function *fun) const {
        if (fun->hasName()) {
            return HEAP_INITS.find(fun->getName()) != HEAP_INITS.end();
        }
        return false;
    }

    // we used the next bitcast instruction as the heap object's element type
    // if we can not find it, return null.
    llvm::Type *inferHeapAllocType(const llvm::Function *fun, const llvm::Instruction *allocSite) const {
        if (fun->getName().equals(".coderrect.lock.allocate")) {
            // field insensitive object for lock object? or we can use scalar object.
            return nullptr;
        }
        if (fun->getName().equals(".coderrect.recursive.allocation") ||
            fun->getName().equals(".coderrect.allocation.api") /*|| USER_HEAP_API.find(fun->getName().split(".").first) != USER_HEAP_API.end()*/
            ) {
            // user specified APIs
            // we do not know which args is used for size
            // model them as *unlimited* unbounded array by passing -1 to sizeArgNo
            return DefaultHeapModel::inferMallocType(fun, allocSite, -1);
        }

        if (DefaultHeapModel::isHeapAllocFun(fun)) {
            // if already handled by default heap model
            return DefaultHeapModel::inferHeapAllocType(fun, allocSite);
        }

        if (OpenMPModel::isTaskAlloc(fun->getName())) {
          // 1st, get the callback function
          pta::CallSite taskAllocCall (allocSite);
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
              // %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i32 0, i32 0
              // %4 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %3, i32 0, i32 0
              // %5 = load i8*, i8** %4
              // %6 = bitcast i8* %5 to %struct.anon*
              llvm::Value *srcOp = nullptr;
              if (llvm::PatternMatch::match(&I, llvm::PatternMatch::m_BitCast(
                              llvm::PatternMatch::m_Load(llvm::PatternMatch::m_Value(srcOp))))) {
                  if (srcOp->stripPointerCasts() == &task) {
                      // this is the bitcast we try to found
                      return llvm::cast<llvm::BitCastInst>(I).getDestTy();
                  }
              }
            }
          }
          return nullptr;
        }

        // TODO: move the following two to configuration!!
        if (fun->getName().equals("GB_calloc_memory")) {
            // calloc memory
            return DefaultHeapModel::inferCallocType(fun, allocSite);
        }

        if (fun->getName().equals("GB_malloc_memory")) {
            return DefaultHeapModel::inferMallocType(fun, allocSite);
        }

        //LOG_WARN("can not infer type for heap. type={}", *allocSite);
        return nullptr;
    }
};  
}  // namespace pta
