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
#include <llvm/Support/raw_ostream.h>

#include <set>

#include "LanguageModel/OpenMP.h"
#include "PointerAnalysis/Program/CallSite.h"

namespace pta {

class DefaultHeapModel {
 private:
  // omp task related offsets
  constexpr static unsigned int taskSharedOffset = 4;
  constexpr static unsigned int taskEntryOffset = 5;
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

  // infer heap alloc type for openmp, the alloc is:
  //   __kmpc_omp_task_alloc( ident_t *loc, int gtid, int flags,
  //                  size_t sizeof_kmp_task_t, size_t sizeof_shareds,
  //                  task_entry_t task_entry );
  // (https://github.com/llvm-mirror/openmp/blob/56d941a8cede7c0d6aa4dc19e8f0b95de6f97e1b/runtime/test/tasking/kmp_taskloop.c#L64)
  inline llvm::Type *inferHeapAllocTypeForOpenMP(const llvm::Function * /* fun */,
                                                 const llvm::Instruction *allocSite) const {
    // 1st, get the callback function
    CallSite taskAllocCall(allocSite);
    int64_t sharedSize = llvm::cast<llvm::ConstantInt>(taskAllocCall.getArgOperand(taskSharedOffset))->getSExtValue();
    if (sharedSize == 0) {  // no shared var/ptr if var/ptr is defined local, or the shared var/ptr is a global var/ptr
      return nullptr;
    }

    // e.g., DRB027-taskdependmissing-orig-yes.ll (below is output .ll after llvm passes):
    //      %7 = bitcast i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*, !dbg !136
    //      %8 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull %.kmpc_loc.addr.i, i32 %3, i32 1, i64 40, i64
    //      8, i32 (i32, i8*)* %7) #5, !dbg !136, !noalias !133
    // where i32 (i32, i8*)* %7 is the task_entry with shared var ptr/type, of which arguments are passed to:
    //      define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !28 {
    //      ...
    // where %struct.kmp_task_t_with_privates* noalias %1 is the shared ptr.
    auto taskEntry = llvm::cast<llvm::Function>(taskAllocCall.getArgOperand(taskEntryOffset)->stripPointerCasts());
    const llvm::Argument &shared = *(taskEntry->arg_begin() + 1);
    // we want to find the type shown as below (in function .omp_task_entry.):
    //      %2 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0,
    //      i32 0, i32 2, !dbg !44 %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**, !dbg !44 **** ->
    //      this one bitcast to anon %4 = load %struct.anon*, %struct.anon** %3, align 8, !dbg !44, !tbaa !45 %5 =
    //      bitcast %struct.kmp_task_t_with_privates* %1 to i8*, !dbg !44
    for (const llvm::User *user : shared.users()) {
      if (auto bitcast = llvm::dyn_cast<llvm::BitCastInst>(user)) {
        if (!bitcast->getOperand(0)->hasName()) {  // is anon struct
          return bitcast->getDestTy();
        }
      }
    }

    llvm::errs() << "cannot infer type for omp task alloc? callsite=" << allocSite << "\n";
    return nullptr;
  }
};

}  // namespace pta
