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
#include "LanguageModel/RaceModel.h"

namespace race {

class ThreadTrace;

using EventID = size_t;

class Event {
 public:
  enum class Type { Read, Write, Fork, Join, Lock, Unlock, Call, CallEnd };

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
  virtual void print(llvm::raw_ostream &os) const = 0;

 protected:
  explicit Event(Type type) : type(type) {}
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const Event::Type &type);

class MemAccessEvent : public Event {
 protected:
  using Event::Event;

 public:
  [[nodiscard]] const race::MemAccessIR *getIRInst() const override = 0;
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getAccessedMemory() const = 0;

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

  void print(llvm::raw_ostream &os) const override;
};

class WriteEvent : public MemAccessEvent {
 protected:
  WriteEvent() : MemAccessEvent(Type::Write) {}

 public:
  [[nodiscard]] inline const race::WriteIR *getIRInst() const override = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Write; }

  void print(llvm::raw_ostream &os) const override;
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

  void print(llvm::raw_ostream &os) const override;
};

class JoinEvent : public Event {
 protected:
  JoinEvent() : Event(Type::Join) {}

 public:
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getThreadHandle() const = 0;

  [[nodiscard]] inline const race::JoinIR *getIRInst() const override = 0;

  void print(llvm::raw_ostream &os) const override;

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

  void print(llvm::raw_ostream &os) const override;
};

class UnlockEvent : public Event {
 protected:
  UnlockEvent() : Event(Type::Unlock) {}

 public:
  [[nodiscard]] const race::UnlockIR *getIRInst() const override = 0;
  [[nodiscard]] virtual std::vector<const pta::ObjTy *> getLockObj() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Unlock; }

  void print(llvm::raw_ostream &os) const override;
};

class EnterCallEvent : public Event {
 protected:
  EnterCallEvent() : Event(Type::Call) {}

 public:
  [[nodiscard]] const race::CallIR *getIRInst() const override = 0;
  [[nodiscard]] virtual const llvm::Function *getCalledFunction() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::Call; }

  void print(llvm::raw_ostream &os) const override;
};

class LeaveCallEvent : public Event {
 protected:
  LeaveCallEvent() : Event(Type::CallEnd) {}

 public:
  [[nodiscard]] const race::CallIR *getIRInst() const override = 0;
  [[nodiscard]] virtual const llvm::Function *getCalledFunction() const = 0;

  // Used for llvm style RTTI (isa, dyn_cast, etc.)
  [[nodiscard]] static inline bool classof(const Event *e) { return e->type == Type::CallEnd; }

  void print(llvm::raw_ostream &os) const override;
};
}  // namespace race

// enum class TEventType { Read, Write, Fork, Join, Call, CallEnd };
// template <class Inst, TEventType Type>
// class TEvent {
//  public:
//   const TEventType type;
//   const std::shared_ptr<EventInfo> info;
//   const std::shared_ptr<Inst> irInst;

//   TEvent() = delete;
//   virtual ~Event() = default;
//   TEvent(TEvent &&) = delete;
//   TEvent(const TEvent &) = delete;
//   TEvent &operator=(const TEvent &) = delete;
//   TEvent &operator=(TEvent &&) = delete;

//   const llvm::Instruction *getInst() const { return irInst->getInst(); }

//   virtual void print(llvm::raw_ostream &os) const = 0;

//   // Used for llvm style RTTI (isa, dyn_cast, etc.)
//   virtual static inline bool classof(const Event *e) { return e->type ==
//   Type; }

//  protected:
//   TEvent(std::shared_ptr<Inst> inst, std::shared_ptr<EventInfo> einfo)
//       : type(Type), info(einfo), irInst(inst) {}
// };