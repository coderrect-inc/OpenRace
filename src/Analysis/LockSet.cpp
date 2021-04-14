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
      default:
        // Do Nothing
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
