#pragma once

#include <llvm/IR/Instructions.h>

#include "IR/IR.h"

namespace race {

// ==================================================================
// =============== ReadIR Implementations ========================
// ==================================================================

class LoadInfo : public ReadIR {
  const llvm::LoadInst *inst;

 public:
  explicit LoadInfo(const llvm::LoadInst *load) : inst(load) {}

  [[nodiscard]] inline const llvm::LoadInst *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override { return inst->getPointerOperand(); }
};

class APIReadInfo : public ReadIR {
  // Operand that this API call reads
  unsigned int operandOffset;

  const llvm::CallBase *inst;

 public:
  // API call that reads one of it's operands, specified by 'operandOffset'
  APIReadInfo(const llvm::CallBase *inst, unsigned int operandOffset) : operandOffset(operandOffset), inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override { return inst->getOperand(operandOffset); }
};

// ==================================================================
// =============== WriteIR Implementations ========================
// ==================================================================

class StoreInfo : public WriteIR {
  const llvm::StoreInst *inst;

 public:
  explicit StoreInfo(const llvm::StoreInst *store) : inst(store) {}

  [[nodiscard]] inline const llvm::StoreInst *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override { return inst->getPointerOperand(); }
};

class APIWriteInfo : public WriteIR {
  // Operand that this API call reads
  unsigned int operandOffset;

  const llvm::CallBase *inst;

 public:
  // API call that write to one of it's operands, specified by 'operandOffset'
  APIWriteInfo(const llvm::CallBase *inst, unsigned int operandOffset) : operandOffset(operandOffset), inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override {
    return getInst()->getOperand(operandOffset);
  }
};

// ==================================================================
// =============== ForkIR Implementations ========================
// ==================================================================

class PthreadCreateInfo : public ForkIR {
  constexpr static unsigned int threadHandleOffset = 0;
  constexpr static unsigned int threadEntryOffset = 2;
  const llvm::CallBase *inst;

 public:
  explicit PthreadCreateInfo(const llvm::CallBase *inst) : inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getThreadHandle() const override {
    return inst->getArgOperand(threadHandleOffset)->stripPointerCasts();
  }

  [[nodiscard]] const llvm::Value *getThreadEntry() const override {
    return inst->getArgOperand(threadEntryOffset)->stripPointerCasts();
  }
};

class OpenMPForkInfo : public ForkIR {
  // https://github.com/llvm/llvm-project/blob/ef32c611aa214dea855364efd7ba451ec5ec3f74/openmp/runtime/src/kmp_csupport.cpp#L262
  // @param loc  source location information
  // @param argc  total number of arguments in the ellipsis
  // @param microtask  pointer to callback routine consisting of outlined parallel
  // construct
  // @param ...  pointers to shared variables that aren't global
  constexpr static unsigned int threadHandleOffset = 0;
  constexpr static unsigned int threadEntryOffset = 2;
  const llvm::CallBase *inst;

 public:
  explicit OpenMPForkInfo(const llvm::CallBase *inst) : inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getThreadHandle() const override {
    return inst->getArgOperand(threadHandleOffset)->stripPointerCasts();
  }

  [[nodiscard]] const llvm::Value *getThreadEntry() const override {
    return inst->getArgOperand(threadEntryOffset)->stripPointerCasts();
  }
};

// ==================================================================
// =============== JoinIR Implementations ========================
// ==================================================================

class PthreadJoinInfo : public JoinIR {
  const unsigned int threadHandleOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadJoinInfo(const llvm::CallBase *inst) : inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getThreadHandle() const override {
    return inst->getArgOperand(threadHandleOffset)->stripPointerCasts();
  }
};

// ==================================================================
// =============== LockIR Implementations ========================
// ==================================================================

class PthreadMutexLockInfo : public LockIR {
  const unsigned int lockObjectOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadMutexLockInfo(const llvm::CallBase *call) : inst(call) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getLockValue() const override {
    return inst->getArgOperand(lockObjectOffset)->stripPointerCasts();
  }
};

// ==================================================================
// =============== UnlockIR Implementations =======================
// ==================================================================

class PthreadMutexUnlockInfo : public UnlockIR {
  const unsigned int lockObjectOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadMutexUnlockInfo(const llvm::CallBase *call) : inst(call) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getLockValue() const override {
    return inst->getArgOperand(lockObjectOffset)->stripPointerCasts();
  }
};

}  // namespace race