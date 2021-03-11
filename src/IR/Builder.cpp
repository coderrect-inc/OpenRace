#include "IR/Builder.h"

#include <llvm/IR/Instructions.h>

#include "IR/InfoImpls.h"
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
        instructions.push_back(std::make_shared<race::LoadInfo>(loadInst));
      } else if (auto storeInst = llvm::dyn_cast<llvm::StoreInst>(inst)) {
        if (storeInst->isAtomic() || storeInst->isVolatile() || hasNoAliasMD(storeInst)) {
          continue;
        }
        instructions.push_back(std::make_shared<race::StoreInfo>(storeInst));
      } else if (auto retInst = llvm::dyn_cast<llvm::ReturnInst>(inst)) {
        // TODO: what should this do?
      } else if (auto branchInst = llvm::dyn_cast<llvm::BranchInst>(inst)) {
        // TODO: what should this do?
      } else if (auto switchInst = llvm::dyn_cast<llvm::SwitchInst>(inst)) {
        // TODO: what should this do?
      } else if (auto callInst = llvm::dyn_cast<llvm::CallBase>(inst)) {
        if (callInst->isIndirectCall()) {
          // let trace deal with indirect calls
          instructions.push_back(std::make_shared<race::CallInfo>(callInst));
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
          instructions.push_back(std::make_shared<PthreadCreateInfo>(callInst));
        } else if (PthreadModel::isPthreadJoin(funcName)) {
          instructions.push_back(std::make_shared<PthreadJoinInfo>(callInst));
        } else if (PthreadModel::isPthreadMutexLock(funcName)) {
          instructions.push_back(std::make_shared<PthreadMutexLockInfo>(callInst));
        } else if (PthreadModel::isPthreadMutexUnlock(funcName)) {
          instructions.push_back(std::make_shared<PthreadMutexUnlockInfo>(callInst));
        } else if (OpenMPModel::isFork(funcName)) {
          instructions.push_back(std::make_shared<OpenMPForkInfo>(callInst));
        } else if (isPrintf(funcName)) {
          // TODO: model as read?
        } else if (isLLVMDebug(funcName)) {
          // Skip
        } else {
          instructions.push_back(std::make_shared<CallInfo>(callInst));
        }
      }
    }
  }

  return instructions;
}