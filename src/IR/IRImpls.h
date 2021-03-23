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

#include <llvm/IR/Instructions.h>

#include "IR/IR.h"

namespace race {

// ==================================================================
// =============== ReadIR Implementations ========================
// ==================================================================

class LoadIR : public ReadIR {
  const llvm::LoadInst *inst;

 public:
  explicit LoadIR(const llvm::LoadInst *load) : inst(load) {}

  [[nodiscard]] inline const llvm::LoadInst *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override { return inst->getPointerOperand(); }
};

class APIReadIR : public ReadIR {
  // Operand that this API call reads
  unsigned int operandOffset;

  const llvm::CallBase *inst;

 public:
  // API call that reads one of it's operands, specified by 'operandOffset'
  APIReadIR(const llvm::CallBase *inst, unsigned int operandOffset) : operandOffset(operandOffset), inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override { return inst->getOperand(operandOffset); }
};

// ==================================================================
// =============== WriteIR Implementations ========================
// ==================================================================

class StoreIR : public WriteIR {
  const llvm::StoreInst *inst;

 public:
  explicit StoreIR(const llvm::StoreInst *store) : inst(store) {}

  [[nodiscard]] inline const llvm::StoreInst *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override { return inst->getPointerOperand(); }
};

class APIWriteIR : public WriteIR {
  // Operand that this API call reads
  unsigned int operandOffset;

  const llvm::CallBase *inst;

 public:
  // API call that write to one of it's operands, specified by 'operandOffset'
  APIWriteIR(const llvm::CallBase *inst, unsigned int operandOffset) : operandOffset(operandOffset), inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline const llvm::Value *getAccessedValue() const override {
    return getInst()->getOperand(operandOffset);
  }
};

// ==================================================================
// =============== ForkIR Implementations ========================
// ==================================================================

class PthreadCreateIR : public ForkIR {
  constexpr static unsigned int threadHandleOffset = 0;
  constexpr static unsigned int threadEntryOffset = 2;
  const llvm::CallBase *inst;

 public:
  explicit PthreadCreateIR(const llvm::CallBase *inst) : inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getThreadHandle() const override {
    return inst->getArgOperand(threadHandleOffset)->stripPointerCasts();
  }

  [[nodiscard]] const llvm::Value *getThreadEntry() const override {
    return inst->getArgOperand(threadEntryOffset)->stripPointerCasts();
  }
};

class OpenMPForkIR : public ForkIR {
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
  explicit OpenMPForkIR(const llvm::CallBase *inst) : inst(inst) {}

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

class PthreadJoinIR : public JoinIR {
  const unsigned int threadHandleOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadJoinIR(const llvm::CallBase *inst) : inst(inst) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getThreadHandle() const override {
    return inst->getArgOperand(threadHandleOffset)->stripPointerCasts();
  }
};

// This actually corresponds to a OpenMP fork instruction, as the fork call acts as both a fork and join in one call
class OpenMPJoinIR : public JoinIR {
  std::shared_ptr<OpenMPForkIR> fork;

 public:
  explicit OpenMPJoinIR(const std::shared_ptr<OpenMPForkIR> fork) : fork(fork) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return fork->getInst(); }

  [[nodiscard]] const llvm::Value *getThreadHandle() const override { return fork->getThreadHandle(); }
};

// ==================================================================
// =============== LockIR Implementations ========================
// ==================================================================

class PthreadMutexLockIR : public LockIR {
  const unsigned int lockObjectOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadMutexLockIR(const llvm::CallBase *call) : inst(call) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getLockValue() const override {
    return inst->getArgOperand(lockObjectOffset)->stripPointerCasts();
  }
};

class PthreadSpinLockIR : public LockIR {
  const unsigned int lockObjectOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadSpinLockIR(const llvm::CallBase *call) : inst(call) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getLockValue() const override {
    return inst->getArgOperand(lockObjectOffset)->stripPointerCasts();
  }
};

// ==================================================================
// =============== UnlockIR Implementations =======================
// ==================================================================

class PthreadMutexUnlockIR : public UnlockIR {
  const unsigned int lockObjectOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadMutexUnlockIR(const llvm::CallBase *call) : inst(call) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getLockValue() const override {
    return inst->getArgOperand(lockObjectOffset)->stripPointerCasts();
  }
};

class PthreadSpinUnlockIR : public LockIR {
  const unsigned int lockObjectOffset = 0;
  const llvm::CallBase *inst;

 public:
  explicit PthreadSpinUnlockIR(const llvm::CallBase *call) : inst(call) {}

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] const llvm::Value *getLockValue() const override {
    return inst->getArgOperand(lockObjectOffset)->stripPointerCasts();
  }
};

}  // namespace race