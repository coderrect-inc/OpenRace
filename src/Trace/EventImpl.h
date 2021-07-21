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

#include "IR/IR.h"
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
  const std::shared_ptr<const ReadIR> read;
  const EventID id;

  ReadEventImpl(std::shared_ptr<const ReadIR> read, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), read(std::move(read)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::ReadIR *getIRInst() const override { return read.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getAccessedMemory() const override;
};

class WriteEventImpl : public WriteEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const WriteIR> write;
  const EventID id;

  WriteEventImpl(std::shared_ptr<const WriteIR> write, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), write(std::move(write)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::WriteIR *getIRInst() const override { return write.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getAccessedMemory() const override;
};

class ForkEventImpl : public ForkEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const ForkIR> fork;
  const EventID id;

  ForkEventImpl(std::shared_ptr<const ForkIR> fork, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), fork(std::move(fork)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::ForkIR *getIRInst() const override { return fork.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getThreadHandle() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
  [[nodiscard]] std::vector<const pta::CallGraphNodeTy *> getThreadEntry() const override;
};

class JoinEventImpl : public JoinEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const JoinIR> join;
  const EventID id;

  // the corresponding fork event if it is known
  std::optional<const ForkEvent *> forkEvent;

  JoinEventImpl(std::shared_ptr<const JoinIR> join, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), join(std::move(join)), id(id), forkEvent(std::nullopt) {}

  JoinEventImpl(std::shared_ptr<const JoinIR> join, std::shared_ptr<EventInfo> info, EventID id,
                const ForkEvent *forkEvent)
      : info(std::move(info)), join(std::move(join)), id(id), forkEvent(forkEvent) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::JoinIR *getIRInst() const override { return join.get(); }

  [[nodiscard]] std::optional<const ForkEvent *> getForkEvent() const override { return forkEvent; }
  [[nodiscard]] std::vector<const pta::ObjTy *> getThreadHandle() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
};

class LockEventImpl : public LockEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const LockIR> lock;
  const EventID id;

  LockEventImpl(std::shared_ptr<const LockIR> lock, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), lock(std::move(lock)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::LockIR *getIRInst() const override { return lock.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getLockObj() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
};

class UnlockEventImpl : public UnlockEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const UnlockIR> unlock;
  const EventID id;

  UnlockEventImpl(std::shared_ptr<const UnlockIR> unlock, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), unlock(std::move(unlock)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::UnlockIR *getIRInst() const override { return unlock.get(); }

  [[nodiscard]] std::vector<const pta::ObjTy *> getLockObj() const override {
    // TODO
    return std::vector<const pta::ObjTy *>();
  }
};

class BarrierEventImpl : public BarrierEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const BarrierIR> barrier;
  const EventID id;

  BarrierEventImpl(std::shared_ptr<const BarrierIR> barrier, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), barrier(std::move(barrier)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::BarrierIR *getIRInst() const override { return barrier.get(); }
};

class EnterCallEventImpl : public EnterCallEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const CallIR> call;
  const EventID id;

  EnterCallEventImpl(std::shared_ptr<const CallIR> call, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), call(std::move(call)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::CallIR *getIRInst() const override { return call.get(); }

  [[nodiscard]] const llvm::Function *getCalledFunction() const override { return call->getCalledFunction(); }
};

class LeaveCallEventImpl : public LeaveCallEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const CallIR> call;
  const EventID id;

  LeaveCallEventImpl(std::shared_ptr<const CallIR> call, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), call(std::move(call)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::CallIR *getIRInst() const override { return call.get(); }

  [[nodiscard]] const llvm::Function *getCalledFunction() const override { return call->getCalledFunction(); }
};

class ExternCallEventImpl : public ExternCallEvent {
  std::shared_ptr<EventInfo> info;

 public:
  const std::shared_ptr<const CallIR> call;
  const EventID id;

  ExternCallEventImpl(std::shared_ptr<const CallIR> call, std::shared_ptr<EventInfo> info, EventID id)
      : info(std::move(info)), call(std::move(call)), id(id) {}

  [[nodiscard]] inline EventID getID() const override { return id; }
  [[nodiscard]] inline const pta::ctx *getContext() const override { return info->context; }
  [[nodiscard]] inline const ThreadTrace &getThread() const override { return info->thread; }
  [[nodiscard]] inline const race::CallIR *getIRInst() const override { return call.get(); }

  [[nodiscard]] const llvm::Function *getCalledFunction() const override {
    return call->getInst()->getCalledFunction();
  }
};

}  // namespace race