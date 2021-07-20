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

#include <llvm/Analysis/PostDominators.h>
#include <llvm/Analysis/ScopedNoAliasAA.h>
#include <llvm/Support/CommandLine.h>

#include "IR/IRImpls.h"
#include "LanguageModel/LLVMInstrinsics.h"
#include "LanguageModel/OpenMP.h"
#include "LanguageModel/pthread.h"

using namespace race;

extern llvm::cl::opt<bool> DEBUG_PTA;

namespace {

// return true if the operand of inst must be a thread local object
bool hasThreadLocalOperand(const llvm::Instruction *inst) {
  // this is just a lightweight check during IR phase
  // the full check is done at analysis time by ThreadLocalAnalysis
  auto ptr = getPointerOperand(inst);
  assert(ptr);
  if (auto global = llvm::dyn_cast<llvm::GlobalVariable>(ptr)) {
    return global->isThreadLocal();
  }
  return false;
}

// Get the next inst if it is call, else return nullptr
const llvm::CallBase *getNextCall(const llvm::CallBase *call) {
  auto const next = call->getNextNode();
  if (!next) return nullptr;
  return llvm::dyn_cast<llvm::CallBase>(next);
}

// this returns the duplicated omp fork or null if the next inst is not a omp fork call
std::shared_ptr<OpenMPFork> getTwinOmpFork(std::shared_ptr<OpenMPFork> &fork) {
  auto const twinForkInst = getNextCall(fork->getInst());
  if (!twinForkInst) return nullptr;
  if (!OpenMPModel::isFork(twinForkInst)) return nullptr;

  return std::make_shared<OpenMPFork>(twinForkInst);
}

std::shared_ptr<OpenMPForkTeams> getTwinOmpForkTeams(std::shared_ptr<OpenMPForkTeams> &fork) {
  auto const twinForkInst = getNextCall(fork->getInst());
  if (!twinForkInst) return nullptr;
  // Only difference between this function and the base omp fork one is this line
  // if we can add the "recognizers" as static functions on the IRImpl classes themselves
  // these two functions can be combined into a single template function like getTwin<OpenMPForkTeams>(...)
  if (!OpenMPModel::isForkTeams(twinForkInst)) return nullptr;

  return std::make_shared<OpenMPForkTeams>(twinForkInst);
}

// TODO: need different system for storing and organizing these "recognizers"
bool isPrintf(const llvm::StringRef &funcName) { return funcName.equals("printf"); }

std::shared_ptr<const FunctionSummary> generateFunctionSummary(const llvm::Function &func) {
  FunctionSummary summary;

  for (auto const &basicblock : func.getBasicBlockList()) {
    if (DEBUG_PTA) {
      llvm::outs() << "bb: " << basicblock.getName() << "\n";
    }
    for (auto it = basicblock.begin(), end = basicblock.end(); it != end; ++it) {
      auto inst = llvm::cast<llvm::Instruction>(it);

      if (DEBUG_PTA) {
        inst->print(llvm::outs(), false);
        llvm::outs() << "\n";
      }

      // TODO: try switch on inst->getOpCode instead
      if (auto loadInst = llvm::dyn_cast<llvm::LoadInst>(inst)) {
        if (loadInst->isAtomic() || loadInst->isVolatile() || hasThreadLocalOperand(loadInst)) {
          continue;
        }
        summary.push_back(std::make_shared<race::Load>(loadInst));
      } else if (auto storeInst = llvm::dyn_cast<llvm::StoreInst>(inst)) {
        if (storeInst->isAtomic() || storeInst->isVolatile() || hasThreadLocalOperand(storeInst)) {
          continue;
        }
        summary.push_back(std::make_shared<race::Store>(storeInst));
      } else if (auto callInst = llvm::dyn_cast<llvm::CallBase>(inst)) {
        if (callInst->isIndirectCall()) {
          // let trace deal with indirect calls
          summary.push_back(std::make_shared<race::CallIR>(callInst));
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
        if (LLVMModel::isNoEffect(funcName)) {
          /* Do nothing */
        } else if (PthreadModel::isPthreadCreate(funcName)) {
          summary.push_back(std::make_shared<PthreadCreate>(callInst));
        } else if (PthreadModel::isPthreadJoin(funcName)) {
          summary.push_back(std::make_shared<PthreadJoin>(callInst));
        } else if (PthreadModel::isPthreadMutexLock(funcName)) {
          summary.push_back(std::make_shared<PthreadMutexLock>(callInst));
        } else if (PthreadModel::isPthreadMutexUnlock(funcName)) {
          summary.push_back(std::make_shared<PthreadMutexUnlock>(callInst));
        } else if (PthreadModel::isPthreadSpinLock(funcName)) {
          summary.push_back(std::make_shared<PthreadSpinLock>(callInst));
        } else if (PthreadModel::isPthreadSpinUnlock(funcName)) {
          summary.push_back(std::make_shared<PthreadSpinUnlock>(callInst));
        } else if (OpenMPModel::isForStaticInit(funcName)) {
          summary.push_back(std::make_shared<OmpForInit>(callInst));
        } else if (OpenMPModel::isForStaticFini(funcName)) {
          summary.push_back(std::make_shared<OmpForFini>(callInst));
        } else if (OpenMPModel::isForDispatchInit(funcName)) {
          summary.push_back(std::make_shared<OmpDispatchInit>(callInst));
        } else if (OpenMPModel::isForDispatchNext(funcName)) {
          summary.push_back(std::make_shared<OmpDispatchNext>(callInst));
        } else if (OpenMPModel::isForDispatchFini(funcName)) {
          summary.push_back(std::make_shared<OmpDispatchFini>(callInst));
        } else if (OpenMPModel::isSingleStart(funcName)) {
          summary.push_back(std::make_shared<OpenMPSingleStart>(callInst));
        } else if (OpenMPModel::isSingleEnd(funcName)) {
          summary.push_back(std::make_shared<OpenMPSingleEnd>(callInst));
        } else if (OpenMPModel::isMasterStart(funcName)) {
          summary.push_back(std::make_shared<OpenMPMasterStart>(callInst));
        } else if (OpenMPModel::isMasterEnd(funcName)) {
          summary.push_back(std::make_shared<OpenMPMasterEnd>(callInst));
        } else if (OpenMPModel::isBarrier(funcName)) {
          summary.push_back(std::make_shared<OpenMPBarrier>(callInst));
        } else if (OpenMPModel::isReduceStart(funcName) || OpenMPModel::isReduceNowaitStart(funcName)) {
          summary.push_back(std::make_shared<OpenMPReduce>(callInst));
        } else if (OpenMPModel::isCriticalStart(funcName)) {
          summary.push_back(std::make_shared<OpenMPCriticalStart>(callInst));
        } else if (OpenMPModel::isCriticalEnd(funcName)) {
          summary.push_back(std::make_shared<OpenMPCriticalEnd>(callInst));
        } else if (OpenMPModel::isSetLock(funcName)) {
          summary.push_back(std::make_shared<OpenMPSetLock>(callInst));
        } else if (OpenMPModel::isUnsetLock(funcName)) {
          summary.push_back(std::make_shared<OpenMPUnsetLock>(callInst));
        } else if (OpenMPModel::isTask(funcName)) {
          summary.push_back(std::make_shared<OpenMPTaskFork>(callInst));
        } else if (OpenMPModel::isSetNestLock(funcName)) {
          summary.push_back(std::make_shared<OpenMPSetLock>(callInst));
        } else if (OpenMPModel::isUnsetNestLock(funcName)) {
          summary.push_back(std::make_shared<OpenMPUnsetLock>(callInst));
        } else if (OpenMPModel::isGetThreadNum(funcName)) {
          summary.push_back(std::make_shared<OpenMPGetThreadNum>(callInst));
        } else if (OpenMPModel::isOrderedStart(funcName)) {
          summary.push_back(std::make_shared<OpenMPOrderedStart>(callInst));
        } else if (OpenMPModel::isOrderedEnd(funcName)) {
          summary.push_back(std::make_shared<OpenMPOrderedEnd>(callInst));
        } else if (OpenMPModel::isFork(funcName)) {
          // duplicate omp preprocessing should duplicate all omp fork calls
          auto ompFork = std::make_shared<OpenMPFork>(callInst, OpenMPFork::Type::Master);
          auto twinOmpFork = getTwinOmpFork(ompFork);
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
          summary.push_back(ompFork);
          summary.push_back(twinOmpFork);

          // omp fork has implicit join, so immediately join both threads
          summary.push_back(std::make_shared<OpenMPJoin>(ompFork));
          summary.push_back(std::make_shared<OpenMPJoin>(twinOmpFork));
        } else if (OpenMPModel::isForkTeams(funcName)) {
          // duplicate omp preprocessing should duplicate all omp fork calls
          auto ompForkTeams = std::make_shared<OpenMPForkTeams>(callInst);
          auto twinOmpForkTeams = getTwinOmpForkTeams(ompForkTeams);
          if (!twinOmpForkTeams) {
            // without duplicated fork we cannot detect any races in omp region so just skip it
            llvm::errs() << "Encountered non-duplicated omp fork instruction: " << *callInst << "\n";
            llvm::errs() << "Next Inst was: " << *callInst->getNextNode() << "\n";
            llvm::errs() << "Skipping entire OpenMP region\n";
            continue;
          }
          // We matched the next inst as twin omp fork
          ++it;

          // push the two forks and joins such tha the two threads created for the parallel region are in parallel
          summary.push_back(ompForkTeams);
          summary.push_back(twinOmpForkTeams);

          // omp fork teams has implicit join, so immediately join both threads
          summary.push_back(std::make_shared<OpenMPJoinTeams>(ompForkTeams));
          summary.push_back(std::make_shared<OpenMPJoinTeams>(twinOmpForkTeams));
        } else if (isPrintf(funcName)) {
          // TODO: model as read?
        } else {
          // Used to make sure we are not implicitly ignoring any OpenMP features
          // We should instead make sure we take the correct action for any OpenMP call
          llvm::errs() << "Unhandled OpenMP call: " << funcName << "\n";
          assert((!OpenMPModel::isOpenMP(funcName) || OpenMPModel::isNoEffect(funcName)) && "Unhandled OpenMP Call!");

          summary.push_back(std::make_shared<CallIR>(callInst));
        }
      }
    }
  }

  return std::make_shared<const FunctionSummary>(summary);
}
}  // namespace

std::shared_ptr<const FunctionSummary> FunctionSummaryBuilder::getFunctionSummary(const llvm::Function *func) {
  assert(func != nullptr);

  // Check the cache
  auto it = cache.find(func);
  if (it != cache.end()) {
    return it->second;
  }

  // Else compute the summary and add to cache
  auto const summary = generateFunctionSummary(*func);
  cache.insert(std::make_pair(func, summary));
  return summary;
}
