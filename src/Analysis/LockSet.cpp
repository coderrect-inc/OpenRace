#include "LockSet.h"

using namespace race;

namespace {
std::set<const llvm::Value *> heldLocks(const Event *targetEvent) {
  std::set<const llvm::Value *> locks;

  auto const &thread = targetEvent->getThread();
  for (auto const &event : thread.getEvents()) {
    if (event->getID() == targetEvent->getID()) {
      break;
    }
    switch (event->type) {
      case Event::Type::Lock: {
        auto lockEvent = llvm::cast<LockEvent>(event.get());
        locks.insert(lockEvent->getIRInst()->getLockValue());
        break;
      }
      case Event::Type::Unlock: {
        auto unlockEvent = llvm::cast<UnlockEvent>(event.get());
        locks.erase(unlockEvent->getIRInst()->getLockValue());
        break;
      }
      case Event::Type::Read:
      case Event::Type::Write:
      case Event::Type::Fork:
      case Event::Type::Join:
      case Event::Type::Call:
      case Event::Type::CallEnd:
        break;
    }
  }

  return locks;
}
}  // namespace

LockSet::LockSet(const ProgramTrace &program) {}

// TODO: real implementation later
bool LockSet::sharesLock(const MemAccessEvent *lhs, const MemAccessEvent *rhs) const {
  auto const lhsLocks = heldLocks(lhs);
  auto const rhsLocks = heldLocks(rhs);

  return std::any_of(lhsLocks.begin(), lhsLocks.end(),
                     [&rhsLocks](const llvm::Value *lock) { return rhsLocks.find(lock) != rhsLocks.end(); });
}
