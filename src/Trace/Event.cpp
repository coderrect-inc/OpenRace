#include "Trace/Event.h"

using namespace race;

void ReadEvent::print(llvm::raw_ostream &os) const {
  // TODO
  os << "Event: READ\n";
}

void WriteEvent::print(llvm::raw_ostream &os) const {
  // TODO
  os << "Event: Write\n";
}

void ForkEvent::print(llvm::raw_ostream &os) const {
  // TODO
  os << "Event: Fork\n";
}

void JoinEvent::print(llvm::raw_ostream &os) const {
  // TODO
  os << "Event: JOIN\n";
}

void EnterCallEvent::print(llvm::raw_ostream &os) const {
  // TODO
  os << "Event: EnterCall\n";
}

void LeaveCallEvent::print(llvm::raw_ostream &os) const {
  // TODO
  os << "Event: LeaveCall\n";
}
void LockEvent::print(raw_ostream &os) const {
  // TODO
  os << "Event: Lock\n";
}
void UnlockEvent::print(raw_ostream &os) const {
  // TODO
  os << "Event: Unlock\n";
}
