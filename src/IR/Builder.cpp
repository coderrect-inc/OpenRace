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

// Assuming ompForkCall points to a OpenMP fork call, the next inst should be a duplicate omp fork call
// this returns that omp fork or null if the next inst is not a omp fork call
std::shared_ptr<OpenMPFork> getTwinOmpFork(const llvm::CallBase *ompForkCall) {
  auto next = ompForkCall->getNextNode();
  if (!next) return nullptr;

  auto twinOmpForkInst = llvm::dyn_cast<llvm::Instruction>(next);
  if (!twinOmpForkInst) return nullptr;

  auto twinCallInst = llvm::dyn_cast<llvm::CallBase>(twinOmpForkInst);
  if (!twinCallInst) return nullptr;
  if (!OpenMPModel::isFork(twinCallInst)) return nullptr;

  return std::make_shared<OpenMPFork>(twinCallInst);
}

// TODO: need different system for storing and organizing these "recognizers"
bool isPrintf(const llvm::StringRef &funcName) { return funcName.equals("printf"); }
bool isLLVMDebug(const llvm::StringRef &funcName) {
  return funcName.equals("llvm.dbg.declare") || funcName.equals("llvm.dbg.value");
}
}  // namespace

FunctionSummary race::generateFunctionSummary(const llvm::Function *func) {
  assert(func != nullptr);
  return generateFunctionSummary(*func);
}

FunctionSummary race::generateFunctionSummary(const llvm::Function &func) {
  FunctionSummary instructions;

  for (auto const &basicblock : func.getBasicBlockList()) {
    for (auto it = basicblock.begin(), end = basicblock.end(); it != end; ++it) {
      auto inst = llvm::cast<llvm::Instruction>(it);

      // TODO: try switch on inst->getOpCode instead
      if (auto loadInst = llvm::dyn_cast<llvm::LoadInst>(inst)) {
        if (loadInst->isAtomic() || loadInst->isVolatile() || hasNoAliasMD(loadInst)) {
          continue;
        }
        instructions.push_back(std::make_shared<race::Load>(loadInst));
      } else if (auto storeInst = llvm::dyn_cast<llvm::StoreInst>(inst)) {
        if (storeInst->isAtomic() || storeInst->isVolatile() || hasNoAliasMD(storeInst)) {
          continue;
        }
        instructions.push_back(std::make_shared<race::Store>(storeInst));
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
          instructions.push_back(std::make_shared<PthreadCreate>(callInst));
        } else if (PthreadModel::isPthreadJoin(funcName)) {
          instructions.push_back(std::make_shared<PthreadJoin>(callInst));
        } else if (PthreadModel::isPthreadMutexLock(funcName)) {
          instructions.push_back(std::make_shared<PthreadMutexLock>(callInst));
        } else if (PthreadModel::isPthreadMutexUnlock(funcName)) {
          instructions.push_back(std::make_shared<PthreadMutexUnlock>(callInst));
        } else if (PthreadModel::isPthreadSpinLock(funcName)) {
          instructions.push_back(std::make_shared<PthreadSpinLock>(callInst));
        } else if (PthreadModel::isPthreadSpinUnlock(funcName)) {
          instructions.push_back(std::make_shared<PthreadSpinLock>(callInst));
        } else if (OpenMPModel::isForStaticInit(funcName)) {
          instructions.push_back(std::make_shared<OmpForInit>(callInst));
        } else if (OpenMPModel::isForStaticFini(funcName)) {
          instructions.push_back(std::make_shared<OmpForFini>(callInst));
        } else if (OpenMPModel::isSingleStart(funcName)) {
          instructions.push_back(std::make_shared<OpenMPSingleStart>(callInst));
        } else if (OpenMPModel::isSingleEnd(funcName)) {
          instructions.push_back(std::make_shared<OpenMPSingleEnd>(callInst));
        } else if (OpenMPModel::isBarrier(funcName)) {
          instructions.push_back(std::make_shared<OpenMPBarrier>(callInst));
        } else if (OpenMPModel::isFork(funcName)) {
          // duplicate omp preprocessing should duplicate all omp fork calls
          auto ompFork = std::make_shared<OpenMPFork>(callInst);
          auto twinOmpFork = getTwinOmpFork(callInst);
          if (!twinOmpFork) {
            // without duplicated fork we cannot detect any races in omp region so just skip it
            llvm::errs() << "Encountered non-duplicated omp fork instruction: " << *callInst << "\n";
            llvm::errs() << "Next Inst was: " << *callInst->getNextNode() << "\n";
            llvm::errs() << "Skipping entire OpenMP region\n";
            continue;
          }
          // We matched the next inst as twin omp fork
          ++it;

          // push the two forks and joins such tha the two threads created for the parallel region are in parallel
          instructions.push_back(ompFork);
          instructions.push_back(twinOmpFork);

          // omp fork has implicit join, so immediately join both threads
          instructions.push_back(std::make_shared<OpenMPJoin>(ompFork));
          instructions.push_back(std::make_shared<OpenMPJoin>(twinOmpFork));
        } else if (isPrintf(funcName)) {
          // TODO: model as read?
        } else if (isLLVMDebug(funcName)) {
          // Skip
        } else {
          // Used to make sure we are not implicitly ignoring any OpenMP features
          // We should instead make sure we take the correct action for any OpenMP call
          assert(!OpenMPModel::isOpenMP(funcName) && "Unhandled OpenMP Call!");

          instructions.push_back(std::make_shared<CallIR>(callInst));
        }
      }
    }
  }

  return instructions;
}