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

#include <optional>

#include "IR/IR.h"
#include "LanguageModel/RaceModel.h"

namespace race {

class ThreadTrace;

using EventID = size_t;

class Event {
 public:
  enum class Type { Read, Write, Fork, Join, Lock, Unlock, Barrier, Call, CallEnd, ExternCall };

  const Type type;

  Event() = delete;
  virtual ~Event() = default;
  Event(Event &&) = delete;
  Event(const Event &) = delete;
  Event &operator=(const Event &) = delete;
  Event &operator=(Event &&) = delete;

  [[nodiscard]] virtual EventID getID() const = 0;
  [[nodiscard]] virtual const pta::ctx *getContext() const = 0;
  [[nodiscard]] virtual const ThreadTrace &getThread() const = 0;
  [[nodiscard]] virtual const race::IR *getIRInst() const = 0;
  [[nodiscard]] virtual const llvm::Instruction *getInst() const { return getIRInst()->getInst(); }
  [[nodiscard]] const llvm::Function *getFunction() const { return getInst()->getFunction(); }
  [[nodiscard]] race::IR::Type getIRType() const { return getIRInst()->type; }

 protected:
  explicit Event(Type type) : type(type) {}
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const Event &event);
llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const Event::Type &type);

class MemAccessEvent : public Event {
 protected:
  using Event::Event;

 public:
  [[nodiscard]] const race::MemAccessIR *getIRInst() const override = 0;
  [[nodiscard]] virtual const std::multiset<const pta::ObjTy *> &getAccessedMemory() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Read || e->type == Type::Write; }
};

class ReadEvent : public MemAccessEvent {
 protected:
  ReadEvent() : MemAccessEvent(Type::Read) {}

 public:
  [[nodiscard]] inline const race::ReadIR *getIRInst() const override = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Read; }
};

class WriteEvent : public MemAccessEvent {
 protected:
  WriteEvent() : MemAccessEvent(Type::Write) {}

 public:
  [[nodiscard]] inline const race::WriteIR *getIRInst() const override = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Write; }
};

class ForkEvent : public Event {
 protected:
  ForkEvent() : Event(Type::Fork) {}

 public:
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getThreadHandle() const = 0;
  [[nodiscard]] virtual std::vector<const pta::CallGraphNodeTy *> getThreadEntry() const = 0;

  [[nodiscard]] inline const race::ForkIR *getIRInst() const override = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Fork; }
};

class JoinEvent : public Event {
 protected:
  JoinEvent() : Event(Type::Join) {}

 public:
  // return the corresponding fork event if it is known
  [[nodiscard]] virtual std::optional<const ForkEvent *> getForkEvent() const = 0;
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getThreadHandle() const = 0;

  [[nodiscard]] inline const race::JoinIR *getIRInst() const override = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Join; }
};

class LockEvent : public Event {
 protected:
  LockEvent() : Event(Type::Lock) {}

 public:
  [[nodiscard]] const race::LockIR *getIRInst() const override = 0;
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getLockObj() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Lock; }
};

class UnlockEvent : public Event {
 protected:
  UnlockEvent() : Event(Type::Unlock) {}

 public:
  [[nodiscard]] const race::UnlockIR *getIRInst() const override = 0;
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getLockObj() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Unlock; }
};

class BarrierEvent : public Event {
 protected:
  BarrierEvent() : Event(Type::Barrier) {}

 public:
  [[nodiscard]] const race::BarrierIR *getIRInst() const override = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Barrier; }
};

class EnterCallEvent : public Event {
 protected:
  EnterCallEvent() : Event(Type::Call) {}

 public:
  [[nodiscard]] const race::CallIR *getIRInst() const override = 0;
  [[nodiscard]] virtual const llvm::Function *getCalledFunction() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Call; }
};

class LeaveCallEvent : public Event {
 protected:
  LeaveCallEvent() : Event(Type::CallEnd) {}

 public:
  [[nodiscard]] const race::CallIR *getIRInst() const override = 0;
  [[nodiscard]] virtual const llvm::Function *getCalledFunction() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::CallEnd; }
};

class ExternCallEvent : public Event {
 protected:
  ExternCallEvent() : Event(Type::ExternCall) {}

 public:
  [[nodiscard]] const race::CallIR *getIRInst() const override = 0;
  [[nodiscard]] virtual const llvm::Function *getCalledFunction() const = 0;

  // Return name of called function if it has one
  [[nodiscard]] inline std::optional<llvm::StringRef> getCalledName() const {
    if (getCalledFunction() && getCalledFunction()->hasName()) {
      return getCalledFunction()->getName();
    }
    return std::nullopt;
  }

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::ExternCall; }
};

}  // namespace race