#pragma once

#include <llvm/IR/Function.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/Support/raw_ostream.h>

namespace race {

class IR {
 public:
  enum class Type { Read, Write, Fork, Lock, Unlock, Join, Call } type;
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
 public:
  [[nodiscard]] virtual const llvm::Value *getAccessedValue() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const IR *e) { return e->type == Type::Read || e->type == Type::Write; }

 protected:
  explicit MemAccessIR(Type t) : IR(t) {
    assert(t == Type::Read || t == Type::Write && "MemAccess constructed with non read/write type!");
  }
};

class ReadIR : public MemAccessIR {
 protected:
  ReadIR() : MemAccessIR(Type::Read) {}

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const IR *e) { return e->type == Type::Read; }
};

class WriteIR : public MemAccessIR {
 protected:
  WriteIR() : MemAccessIR(Type::Write) {}

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const IR *e) { return e->type == Type::Write; }
};

class ForkIR : public IR {
 protected:
  ForkIR() : IR(Type::Fork) {}

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
  static bool classof(const IR *e) { return e->type == Type::Fork; }
};

class JoinIR : public IR {
 protected:
  JoinIR() : IR(Type::Join) {}

 public:
  // Get the handle for the thread being joined.
  // E.g. for pthread_join(&thread, NULL)
  // the thread handle is &thread
  [[nodiscard]] virtual const llvm::Value *getThreadHandle() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type == Type::Join; }
};

class LockIR : public IR {
 protected:
  LockIR() : IR(Type::Lock) {}

 public:
  [[nodiscard]] virtual const llvm::Value *getLockValue() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type == Type::Lock; }
};

class UnlockIR : public IR {
 protected:
  UnlockIR() : IR(Type::Unlock) {}

 public:
  [[nodiscard]] virtual const llvm::Value *getLockValue() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type == Type::Unlock; }
};

class CallIR : public IR {
  const llvm::CallBase *inst;

 public:
  explicit CallIR(const llvm::CallBase *inst) : IR(Type::Call), inst(inst) {}

  void print(llvm::raw_ostream &os) const override;

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline bool isIndirect() const { return inst->isIndirectCall(); }

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const IR *e) { return e->type == Type::Call; }
};

}  // namespace race
