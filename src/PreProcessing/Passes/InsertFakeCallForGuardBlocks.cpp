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

#include "InsertFakeCallForGuardBlocks.h"

#include <llvm/IR/IRBuilder.h>

#include "Analysis/OpenMP/OpenMP.h"
#include "LanguageModel/OpenMP.h"

namespace {

struct GuardBlockState {
  // a map of omp_get_thread_num calls who's guarded blocks have already been computed
  // and the call HAS a corresponding guarded block
  std::map<llvm::CallBase *, std::set<llvm::BasicBlock *>> existGuards;

  // a map of blocks to the tid they are guarded by omp_get_thread_num
  // TODO: simple implementation can only handle one block being guarded
  std::map<const llvm::BasicBlock *, size_t> block2TID;

  // set of omp_get_thread_num calls who's guarded blocks have already been computed
  std::set<llvm::CallBase *> visited;

  // find a cmp IR and its guarded blocks after this call to omp_get_thread_num
  void computeGuardedBlocks(llvm::CallBase *call) {
    // Check if we have already computed block2TID for this omp_get_thread_num call
    if (visited.find(call) != visited.end()) {
      return;
    }

    // Find all cmpInsts that compare the omp_get_thread_num call to a const value
    auto const cmpInsts = race::getConstCmpEqInsts(call);
    for (auto const &pair : cmpInsts) {
      auto const cmpInst = pair.first;
      auto const tid = pair.second;

      // Find all branches that use the result of the cmp inst
      for (auto user : cmpInst->users()) {
        auto branch = llvm::dyn_cast<llvm::BranchInst>(user);
        if (branch == nullptr) continue;

        // Find all the blocks guarded by this branch
        auto guarded = race::getGuardedBlocks(branch);

        // insert the blocks into the block2TID map
        for (auto const block : guarded) {
          block2TID[block] = tid;
        }

        // cache the result
        existGuards.insert(std::make_pair(call, guarded));
      }
    }

    // Mark this omp_get_thread_num call as visited
    visited.insert(call);
  }

  // the fake function declarations of the guard start and end
  llvm::Function *guardStartFn = nullptr;
  llvm::Function *guardEndFn = nullptr;

  // create a function declaration
  // the following code is from https://llvm.org/docs/tutorial/MyFirstLanguageFrontend/LangImpl03.html
  // and https://freecompilercamp.org/llvm-ir-func1/
  llvm::Function *generateFakeFn(std::string fnName, llvm::LLVMContext &context, llvm::Module &module) {
    // Make the function type: void(i32)
    std::vector<llvm::Type *> Params(1, Type::getInt32Ty(context));
    llvm::FunctionType *FT = llvm::FunctionType::get(llvm::Type::getVoidTy(context), Params, false);

    llvm::Function *F = llvm::Function::Create(FT, llvm::Function::ExternalLinkage, fnName, module);
    assert(F);

    llvm::Value *guardTID = F->arg_begin();
    guardTID->setName("guardTID");  // to match the param in the call

    return F;
  }

  // create the fake functions, once
  void createFakeGuardFn(llvm::LLVMContext &context, llvm::Module &module) {
    guardStartFn = generateFakeFn(OpenMPModel::OpenMPThreadGuardStart, context, module);
    guardEndFn = generateFakeFn(OpenMPModel::OpenMPThreadGuardEnd, context, module);
  }
};

// we insert the call start at the beginning of each guarded block (for now, since only one block guarded
// by each call), and insert the call end at the end of the block
void insertFakeCall(llvm::LLVMContext &context, llvm::Module &module, std::set<llvm::BasicBlock *> &guardedBlocks,
                    GuardBlockState &state) {
  std::map<const BasicBlock *, size_t> &block2TID = state.block2TID;
  for (auto guardedBlock : guardedBlocks) {
    // pass the guarded TID as a constant to the only parameter of the fake function
    auto guardVal = llvm::ConstantInt::get(context, llvm::APInt(32, block2TID.find(guardedBlock)->second, true));
    std::vector<llvm::Value *> arg_list;
    arg_list.push_back(guardVal);

    // insert the call start
    llvm::Instruction *startcall = llvm::CallInst::Create(state.guardStartFn, arg_list);
    auto nonPhi = guardedBlock->getFirstNonPHI();
    if (llvm::isa<llvm::PHINode>(nonPhi)) {
      startcall->insertAfter(nonPhi);
    } else {
      startcall->insertBefore(nonPhi);
    }

    // insert the call end
    llvm::Instruction *endcall = llvm::CallInst::Create(state.guardEndFn, arg_list);
    llvm::Instruction *nonReturn = nullptr;
    for (auto it = guardedBlock->rbegin(); it != guardedBlock->rend(); it++) {
      if (llvm::isa<llvm::ReturnInst>(*it) || llvm::isa<llvm::BranchInst>(*it)) continue;
      nonReturn = &(*it);
      break;
    }
    endcall->insertAfter(nonReturn);
  }
}

}  // namespace

void insertFakeCallForGuardBlocks(llvm::Module &module) {
  GuardBlockState state;
  // find if exists any guarded block
  for (auto &function : module.getFunctionList()) {
    for (auto &basicblock : function.getBasicBlockList()) {
      for (auto &inst : basicblock.getInstList()) {
        auto call = llvm::dyn_cast<llvm::CallBase>(&inst);
        if (!call || !call->getCalledFunction() || !call->getCalledFunction()->hasName()) continue;
        auto const funcName = call->getCalledFunction()->getName();
        if (OpenMPModel::isGetThreadNum(funcName)) {
          state.computeGuardedBlocks(call);
        }
      }
    }
  }

  if (state.existGuards.empty()) return;

  // insert fake calls to fake functions
  for (auto guard : state.existGuards) {
    auto call = guard.first;
    auto blocks = guard.second;
    if (!state.guardStartFn && !state.guardEndFn) {  // create fake function declarations, only once
      state.createFakeGuardFn(call->getContext(), module);
    }
    insertFakeCall(call->getContext(), module, blocks, state);
  }
}
