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
    std::vector<llvm::Type *> Params(1, llvm::Type::getInt32Ty(context));
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
void insertFakeCallForOpenMPGetThreadNum(llvm::LLVMContext &context, llvm::Module &module,
                                         std::set<llvm::BasicBlock *> &guardedBlocks, GuardBlockState &state) {
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

void insertForOpenMPGetThreadNum(llvm::Module &module) {
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
    insertFakeCallForOpenMPGetThreadNum(call->getContext(), module, blocks, state);
  }
}

namespace {

struct SectionBlock {
  std::string sectionSig;
  llvm::SwitchInst *switchInst;
  std::vector<llvm::BasicBlock *> blocks;  // record all included sections in an omp sections region

  SectionBlock(std::string sig, llvm::SwitchInst *switchInst) : sectionSig(sig), switchInst(switchInst) {}
};

struct SectionGuardState {
  // record the omp parallel sections
  std::vector<SectionBlock> sections;

  // the fake function declarations of the guard start and end
  llvm::Function *guardStartFn = nullptr;
  llvm::Function *guardEndFn = nullptr;

  // create a function declaration
  // the following code is from https://llvm.org/docs/tutorial/MyFirstLanguageFrontend/LangImpl03.html
  // and https://freecompilercamp.org/llvm-ir-func1/
  llvm::Function *generateFakeFn(std::string fnName, llvm::LLVMContext &context, llvm::Module &module) {
    // Make the function type: i32(i8*)
    std::vector<llvm::Type *> Params(1, llvm::Type::getInt8PtrTy(context));
    llvm::FunctionType *FT = llvm::FunctionType::get(llvm::Type::getInt32Ty(context), Params, false);

    llvm::Function *F = llvm::Function::Create(FT, llvm::Function::ExternalLinkage, fnName, module);
    assert(F);

    llvm::Value *guardSig = F->arg_begin();
    guardSig->setName("sectionSig");  // to match the param in the call

    return F;
  }

  // create the fake functions, once
  void createFakeGuardFn(llvm::LLVMContext &context, llvm::Module &module) {
    guardStartFn = generateFakeFn(OpenMPModel::OpenMPSectionStart, context, module);
    guardEndFn = generateFakeFn(OpenMPModel::OpenMPSectionEnd, context, module);
  }
};

// get the number of global constant string var of which name starts with ".str.xxx"
int getNumOfGlobalStr(llvm::Module &module) {
  int size = 0;
  for (auto it = module.getGlobalList().begin(); it != module.getGlobalList().end(); it++) {
    if (it->getName().startswith(".str")) size++;
  }
  return size;
}

// the following code is from: https://stackoverflow.com/questions/51809274/llvm-defining-strings-and-arrays-via-c-api
llvm::Value *insertStringAsGlobalVar(std::string str, llvm::LLVMContext &context, llvm::Module &module) {
  // 0. Defs
  auto charType = llvm::IntegerType::get(context, 8);

  // 1. Initialize chars vector
  std::vector<llvm::Constant *> chars(str.length());
  for (unsigned int i = 0; i < str.size(); i++) {
    chars[i] = llvm::ConstantInt::get(charType, str[i]);
  }

  // 1b. add a zero terminator too
  chars.push_back(llvm::ConstantInt::get(charType, 0));

  // 2. Initialize the string from the characters
  auto stringType = llvm::ArrayType::get(charType, chars.size());

  // 3. Create the declaration statement
  int size = getNumOfGlobalStr(module);
  std::string name = ".str." + std::to_string(size);
  auto globalDeclaration = (llvm::GlobalVariable *)module.getOrInsertGlobal(name, stringType);
  globalDeclaration->setInitializer(llvm::ConstantArray::get(stringType, chars));
  globalDeclaration->setConstant(true);
  globalDeclaration->setLinkage(llvm::GlobalValue::LinkageTypes::PrivateLinkage);
  globalDeclaration->setUnnamedAddr(llvm::GlobalValue::UnnamedAddr::Global);

  // 4. Return a cast to an i8*
  return llvm::ConstantExpr::getBitCast(globalDeclaration, charType->getPointerTo());
}

// we insert the call start at the beginning of each guarded block
// and insert the call end at the end of the block
void insertFakeCallForSections(SectionBlock &sections, llvm::Module &module, SectionGuardState &state) {
  llvm::LLVMContext &context = sections.switchInst->getContext();
  std::string sectionSig = sections.sectionSig;

  llvm::Value *globalStr = insertStringAsGlobalVar(sectionSig, context, module);

  for (auto block : sections.blocks) {
    // pass the section sig as a string pointer to the only parameter of the fake function,
    // which is used to identify whether two sections are from the same omp parallel sections region
    // NOTE: this parameter will be a GEP in the call, do not need to canonicalize it.
    std::vector<llvm::Value *> arg_list;
    arg_list.push_back(globalStr);

    // insert the call start
    llvm::Instruction *startcall = llvm::CallInst::Create(state.guardStartFn, arg_list);
    auto firstInst = block->begin();
    startcall->insertBefore(&(*firstInst));

    // insert the call end
    llvm::Instruction *endcall = llvm::CallInst::Create(state.guardEndFn, arg_list);
    llvm::Instruction *nonBranch = nullptr;
    for (auto it = block->rbegin(); it != block->rend(); it++) {
      if (llvm::isa<llvm::BranchInst>(*it)) continue;
      nonBranch = &(*it);
      break;
    }
    endcall->insertAfter(&(*nonBranch));
  }
}

}  // namespace

void insertForSections(llvm::Module &module) {
  SectionGuardState state;

  // find if exists any omp sections, the pattern in IR for sections with section is like: e.g., DRB023
  // omp.inner.for.body.i:
  //  %.omp.sections.iv..04.i = phi i32 [ %inc.i, %omp.inner.for.inc.i ], [ %15, %omp.inner.for.body.preheader.i ]
  //  switch i32 %.omp.sections.iv..04.i, label %omp.inner.for.inc.i [
  //    i32 0, label %.omp.sections.case.i
  //    i32 1, label %.omp.sections.case1.i
  //  ], !dbg !51
  //
  //.omp.sections.case.i:
  //  ...
  //.omp.sections.case1.i:
  //  ...
  for (auto &function : module.getFunctionList()) {
    for (auto &basicblock : function.getBasicBlockList()) {
      if (basicblock.getName().equals("omp.inner.for.body.i")) {
        for (auto &inst : basicblock.getInstList()) {
          auto _switch = llvm::dyn_cast<llvm::SwitchInst>(&inst);
          if (!_switch) continue;
          llvm::Value *op = _switch->getOperand(0);
          if (op->hasName() && op->getName().startswith(".omp.sections.iv..")) {
            // this is the IR for omp sections:
            // each omp parallel sections should be included in one function (which name starting with
            // ".omp_outlined.xxx") in IR
            std::string sectionSig = function.getName().str() + " " + op->getName().str();

            SectionBlock section = SectionBlock(sectionSig, _switch);
            for (auto it = _switch->case_begin(); it != _switch->case_end(); it++) {
              // this is the basicblock for each section inside omp sections
              llvm::BasicBlock *bb = it->getCaseSuccessor();
              section.blocks.push_back(bb);
            }
            state.sections.push_back(section);
          }
        }
      }
    }
  }

  if (state.sections.empty()) return;

  // insert fake calls for each omp parallel sections region
  for (auto sections : state.sections) {
    llvm::SwitchInst *switchInst = sections.switchInst;
    if (!state.guardStartFn && !state.guardEndFn) {  // create fake function declarations, only once
      state.createFakeGuardFn(switchInst->getContext(), module);
    }
    insertFakeCallForSections(sections, module, state);
  }
}

void insertFakeCallForGuardBlocks(llvm::Module &module) {
  insertForOpenMPGetThreadNum(module);
  insertForSections(module);
}
