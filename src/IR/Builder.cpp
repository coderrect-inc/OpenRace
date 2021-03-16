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

#include "IR/Builder.h"

#include <llvm/IR/Instructions.h>

#include "IR/IRImpls.h"
#include "LanguageModel/OpenMP.h"
#include "LanguageModel/pthread.h"

using namespace race;

namespace {
bool hasNoAliasMD(const llvm::Instruction *inst) {
  llvm::AAMDNodes AAMD;
  inst->getAAMetadata(AAMD);
  return AAMD.NoAlias != nullptr;
}

// TODO: need different system for storing and organizing these "recognizers"
bool isPrintf(const llvm::StringRef &funcName) { return funcName.equals("printf"); }
bool isLLVMDebug(const llvm::StringRef &funcName) { return funcName.equals("llvm.dbg.declare"); }
}  // namespace

RaceFunction race::generateRaceFunction(const llvm::Function *func) {
  assert(func != nullptr);
  return generateRaceFunction(*func);
}

RaceFunction race::generateRaceFunction(const llvm::Function &func) {
  RaceFunction instructions;

  for (auto const &basicblock : func.getBasicBlockList()) {
    for (auto BI = basicblock.begin(), BE = basicblock.end(); BI != BE; ++BI) {
      auto inst = llvm::cast<llvm::Instruction>(BI);

      // TODO: try switch on inst->getOpCode instead
      if (auto loadInst = llvm::dyn_cast<llvm::LoadInst>(inst)) {
        if (loadInst->isAtomic() || loadInst->isVolatile() || hasNoAliasMD(loadInst)) {
          continue;
        }
        instructions.push_back(std::make_shared<race::LoadIR>(loadInst));
      } else if (auto storeInst = llvm::dyn_cast<llvm::StoreInst>(inst)) {
        if (storeInst->isAtomic() || storeInst->isVolatile() || hasNoAliasMD(storeInst)) {
          continue;
        }
        instructions.push_back(std::make_shared<race::StoreIR>(storeInst));
      } else if (auto retInst = llvm::dyn_cast<llvm::ReturnInst>(inst)) {
        // TODO: what should this do?
      } else if (auto branchInst = llvm::dyn_cast<llvm::BranchInst>(inst)) {
        // TODO: what should this do?
      } else if (auto switchInst = llvm::dyn_cast<llvm::SwitchInst>(inst)) {
        // TODO: what should this do?
      } else if (auto callInst = llvm::dyn_cast<llvm::CallBase>(inst)) {
        if (callInst->isIndirectCall()) {
          // let trace deal with indirect calls
          instructions.push_back(std::make_shared<race::CallIR>(callInst));
          continue;
        }

        auto calledFunc = callInst->getCalledFunction();
        if (calledFunc == nullptr || !calledFunc->hasName()) {
          // TODO: Log warning
          llvm::errs() << "could not find called func: " << *callInst << "\n";
          continue;
        }

        // TODO: System for users to register new function recognizers here
        auto funcName = calledFunc->getName();
        if (PthreadModel::isPthreadCreate(funcName)) {
          instructions.push_back(std::make_shared<PthreadCreateIR>(callInst));
        } else if (PthreadModel::isPthreadJoin(funcName)) {
          instructions.push_back(std::make_shared<PthreadJoinIR>(callInst));
        } else if (PthreadModel::isPthreadMutexLock(funcName)) {
          instructions.push_back(std::make_shared<PthreadMutexLockIR>(callInst));
        } else if (PthreadModel::isPthreadMutexUnlock(funcName)) {
          instructions.push_back(std::make_shared<PthreadMutexUnlockIR>(callInst));
        } else if (OpenMPModel::isFork(funcName)) {
          instructions.push_back(std::make_shared<OpenMPForkIR>(callInst));
        } else if (isPrintf(funcName)) {
          // TODO: model as read?
        } else if (isLLVMDebug(funcName)) {
          // Skip
        } else {
          instructions.push_back(std::make_shared<CallIR>(callInst));
        }
      }
    }
  }

  return instructions;
}