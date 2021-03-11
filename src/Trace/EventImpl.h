#pragma once

#include "IR/Info.h"
#include "Trace/Event.h"

// These are implementation of the Event interfaces in Event.h

namespace race {

// This class stores some common info about an event
// Many events share the same thread/context so to save memory
// each event impl contains a shared pointer to an EventInfo object
struct EventInfo {
  const ThreadTrace &thread;
  const pta::ctx *context;

  EventInfo() = delete;
  EventInfo(const ThreadTrace &thread, const pta::ctx *context) : thread(thread), context(context) {}
  EventInfo(const EventInfo &) = default;
  EventInfo(EventInfo &&) = default;
  EventInfo &operator=(const EventInfo &) = delete;
  EventInfo &operator=(EventInfo &&) = delete;
};

class ReadEventImpl : public ReadEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const ReadInfo> read;
  const EventID id;

  ReadEventImpl(std::shared_ptr<const ReadInfo> read, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), read(std::move(read)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::ReadInfo *getIRInst() const override { return read.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getAccessedMemory() const override;
};

class WriteEventImpl : public WriteEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const WriteInfo> write;
  const EventID id;

  WriteEventImpl(std::shared_ptr<const WriteInfo> write, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), write(std::move(write)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::WriteInfo *getIRInst() const override { return write.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getAccessedMemory() const override;
};

class ForkEventImpl : public ForkEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const ForkInfo> fork;
  const EventID id;

  ForkEventImpl(std::shared_ptr<const ForkInfo> fork, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), fork(std::move(fork)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::ForkInfo *getIRInst() const override { return fork.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getThreadHandle() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
  [[nodiscard]] std::vector<const pta::CallGraphNodeTy *> getThreadEntry() const override;
};

class JoinEventImpl : public JoinEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const JoinInfo> join;
  const EventID id;

  JoinEventImpl(std::shared_ptr<const JoinInfo> join, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), join(std::move(join)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::JoinInfo *getIRInst() const override { return join.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getThreadHandle() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
};

class LockEventImpl : public LockEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const LockInfo> lock;
  const EventID id;

  LockEventImpl(std::shared_ptr<const LockInfo> lock, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), lock(std::move(lock)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::LockInfo *getIRInst() const override { return lock.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getLockObj() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
};

class UnlockEventImpl : public UnlockEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const UnlockInfo> unlock;
  const EventID id;

  UnlockEventImpl(std::shared_ptr<const UnlockInfo> unlock, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), unlock(std::move(unlock)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::UnlockInfo *getIRInst() const override { return unlock.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getLockObj() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
};

class EnterCallEventImpl : public EnterCallEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const CallInfo> call;
  const EventID id;

  EnterCallEventImpl(std::shared_ptr<const CallInfo> call, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), call(std::move(call)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::CallInfo *getIRInst() const override { return call.get(); }

  [[nodiscard]] const llvm::Function *getCalledFunction() const override {
    return call->getInst()->getCalledFunction();
  }
};

class LeaveCallEventImpl : public LeaveCallEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const CallInfo> call;
  const EventID id;

  LeaveCallEventImpl(std::shared_ptr<const CallInfo> call, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), call(std::move(call)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::CallInfo *getIRInst() const override { return call.get(); }

  [[nodiscard]] const llvm::Function *getCalledFunction() const override {
    return call->getInst()->getCalledFunction();
  }
};

}  // namespace race