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
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/Support/raw_ostream.h>

namespace race {

class IR {
 public:
  enum class Type {
    Read,
    Load,
    APIRead,
    END_Read,
    Write,
    Store,
    APIWrite,
    END_Write,
    Fork,
    PthreadCreate,
    OpenMPFork,
    END_Fork,
    Join,
    PthreadJoin,
    OpenMPJoin,
    END_Join,
    Lock,
    PthreadMutexLock,
    PthreadSpinLock,
    OpenMPCriticalStart,
    OpenMPSetLock,
    OpenMPOrderedStart,
    END_Lock,
    Unlock,
    PthreadMutexUnlock,
    PthreadSpinUnlock,
    OpenMPCriticalEnd,
    OpenMPUnsetLock,
    OpenMPOrderedEnd,
    END_Unlock,
    Barrier,
    OpenMPBarrier,
    END_Barrier,
    Call,
    OpenMPForInit,
    OpenMPForFini,
    OpenMPDispatchInit,
    OpenMPDispatchNext,
    OpenMPDispatchFini,
    OpenMPSingleStart,
    OpenMPSingleEnd,
    OpenMPReduce,
    OpenMPMasterStart,
    OpenMPMasterEnd,
    END_Call
  } type;
  [[nodiscard]] virtual const llvm::Instruction *getInst() const = 0;

  [[nodiscard]] virtual llvm::StringRef toString() const;
  virtual void print(llvm::raw_ostream &os) const = 0;

  virtual ~IR() = default;

 protected:
  explicit IR(Type t) : type(t) {}
  explicit IR(IR &&) = delete;         // move constructor
  explicit IR(const IR &) = delete;    // copy constructor
  IR &operator=(const IR &) = delete;  // copy assignment
  IR &operator=(IR &&) = delete;       // move assignment
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const IR &stmt);
llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const IR::Type &type);

// Dont Overload This class
// This is a convenience interface so that read/write can be kept in list
// together
class MemAccessIR : public IR {
 protected:
  using IR::IR;

 public:
  [[nodiscard]] virtual const llvm::Value *getAccessedValue() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const IR *e) { return e->type >= Type::Read && e->type <= Type::END_Write; }

 protected:
  explicit MemAccessIR(Type t) : IR(t) {
    assert(t >= Type::Read && t <= Type::END_Write && "MemAccess constructed with non read/write type!");
  }
};

class ReadIR : public MemAccessIR {
 protected:
  using MemAccessIR::MemAccessIR;

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const IR *e) { return e->type >= Type::Read && e->type < Type::END_Read; }
};

class WriteIR : public MemAccessIR {
 protected:
  using MemAccessIR::MemAccessIR;

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const IR *e) { return e->type >= Type::Write && e->type < Type::END_Write; }
};

class ForkIR : public IR {
 protected:
  using IR::IR;

 public:
  // Get the handle for the thread being spawned.
  // E.g. for pthread_create(&thread, NULL, foo, NULL)
  // the thread handle is &thread
  [[nodiscard]] virtual const llvm::Value *getThreadHandle() const = 0;

  // Get the function the spawned thread will execute
  // E.g. for pthread_create(&thread, NULL, foo, NULL)
  // the thread entry is foo
  [[nodiscard]] virtual const llvm::Value *getThreadEntry() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type >= Type::Fork && e->type < Type::END_Fork; }
};

class JoinIR : public IR {
 protected:
  using IR::IR;

 public:
  // Get the handle for the thread being joined.
  // E.g. for pthread_join(&thread, NULL)
  // the thread handle is &thread
  [[nodiscard]] virtual const llvm::Value *getThreadHandle() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type >= Type::Join && e->type < Type::END_Join; }
};

class LockIR : public IR {
 protected:
  using IR::IR;

 public:
  [[nodiscard]] virtual const llvm::Value *getLockValue() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type >= Type::Lock && e->type < Type::END_Lock; }
};

class UnlockIR : public IR {
 protected:
  using IR::IR;

 public:
  [[nodiscard]] virtual const llvm::Value *getLockValue() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type >= Type::Unlock && e->type < Type::END_Unlock; }
};

class BarrierIR : public IR {
 protected:
  using IR::IR;

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type >= Type::Barrier && e->type < Type::END_Barrier; }
};

// CallIR is the only class in IR.h that can be concrete.
// Most function calls should use CallIR's public constructor.
// In some special cases, we want to note calls to specifc functions, such as omp_for_init.
// In these rare special cases there can be sub-types that inherit from CallIR and use the protected constructor.
class CallIR : public IR {
  const llvm::CallBase *inst;

 protected:
  // Constructor for sub types
  CallIR(const llvm::CallBase *inst, Type ty) : IR(ty), inst(inst) { assert(ty >= Type::Call && ty < Type::END_Call); }

 public:
  explicit CallIR(const llvm::CallBase *inst) : IR(Type::Call), inst(inst) {}

  void print(llvm::raw_ostream &os) const override;

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline bool isIndirect() const { return inst->isIndirectCall(); }

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type >= Type::Call && e->type < Type::END_Call; }
};

}  // namespace race
