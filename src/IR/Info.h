#pragma once

#include <llvm/IR/Function.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/Support/raw_ostream.h>

namespace race {

class StmtInfo {
 public:
  enum class Type { Read, Write, Fork, Lock, Unlock, Join, Call } type;
  [[nodiscard]] virtual const llvm::Instruction *getInst() const = 0;

  [[nodiscard]] virtual llvm::StringRef toString() const;
  virtual void print(llvm::raw_ostream &os) const = 0;

  virtual ~StmtInfo() = default;

 protected:
  explicit StmtInfo(Type t) : type(t) {}
  explicit StmtInfo(StmtInfo &&) = delete;         // move constructor
  explicit StmtInfo(const StmtInfo &) = delete;    // copy constructor
  StmtInfo &operator=(const StmtInfo &) = delete;  // copy assignment
  StmtInfo &operator=(StmtInfo &&) = delete;       // move assignment
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const StmtInfo &stmt);
llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const StmtInfo::Type &type);

// Dont Overload This class
// This is a convenience interface so that read/write can be kept in list
// together
class MemAccessInfo : public StmtInfo {
 public:
  [[nodiscard]] virtual const llvm::Value *getAccessedValue() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const StmtInfo *e) { return e->type == Type::Read || e->type == Type::Write; }

 protected:
  explicit MemAccessInfo(Type t) : StmtInfo(t) {
    assert(t == Type::Read || t == Type::Write && "MemAccess constructed with non read/write type!");
  }
};

class ReadInfo : public MemAccessInfo {
 protected:
  ReadInfo() : MemAccessInfo(Type::Read) {}

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const StmtInfo *e) { return e->type == Type::Read; }
};

class WriteInfo : public MemAccessInfo {
 protected:
  WriteInfo() : MemAccessInfo(Type::Write) {}

 public:
  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static inline bool classof(const StmtInfo *e) { return e->type == Type::Write; }
};

class ForkInfo : public StmtInfo {
 protected:
  ForkInfo() : StmtInfo(Type::Fork) {}

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
  static bool classof(const StmtInfo *e) { return e->type == Type::Fork; }
};

class JoinInfo : public StmtInfo {
 protected:
  JoinInfo() : StmtInfo(Type::Join) {}

 public:
  // Get the handle for the thread being joined.
  // E.g. for pthread_join(&thread, NULL)
  // the thread handle is &thread
  [[nodiscard]] virtual const llvm::Value *getThreadHandle() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const StmtInfo *e) { return e->type == Type::Join; }
};

class LockInfo : public StmtInfo {
 protected:
  LockInfo() : StmtInfo(Type::Lock) {}

 public:
  [[nodiscard]] virtual const llvm::Value *getLockValue() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const StmtInfo *e) { return e->type == Type::Lock; }
};

class UnlockInfo : public StmtInfo {
 protected:
  UnlockInfo() : StmtInfo(Type::Unlock) {}

 public:
  [[nodiscard]] virtual const llvm::Value *getLockValue() const = 0;

  void print(llvm::raw_ostream &os) const override;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const StmtInfo *e) { return e->type == Type::Unlock; }
};

class CallInfo : public StmtInfo {
  const llvm::CallBase *inst;

 public:
  explicit CallInfo(const llvm::CallBase *inst) : StmtInfo(Type::Call), inst(inst) {}

  void print(llvm::raw_ostream &os) const override;

  [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

  [[nodiscard]] inline bool isIndirect() const { return inst->isIndirectCall(); }

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  static bool classof(const StmtInfo *e) { return e->type == Type::Call; }
};

}  // namespace race
