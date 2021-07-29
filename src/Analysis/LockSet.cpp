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

#include <set>

using namespace race;

std::multiset<const llvm::Value *> LockSet::heldLocks(const Event *targetEvent) {
  // check if we have it cached
  // cppcheck-suppress stlIfFind
  if (auto it = cache.find(targetEvent); it != cache.end()) {
    return it->second;
  }
  std::multiset<const llvm::Value *> locks;
  if (DEBUG_PTA) {
    llvm::outs() << "--------------------------\n";
  }
  auto const &thread = targetEvent->getThread();
  for (auto const &event : thread.getEvents()) {
    if (event->getID() == targetEvent->getID()) {
      break;
    }
    switch (event->type) {
      case Event::Type::Lock: {
        auto lockEvent = llvm::cast<LockEvent>(event.get());
        locks.insert(lockEvent->getIRInst()->getLockValue());
        if (DEBUG_PTA) {
          llvm::outs() << "After lock: {";
          auto it = locks.begin();
          for (; it != locks.end(); it++) llvm::outs() << *it << " ";
          llvm::outs() << "}\n";
        }
        break;
      }
      case Event::Type::Unlock: {
        auto unlockEvent = llvm::cast<UnlockEvent>(event.get());
        const llvm::Value *ele = unlockEvent->getIRInst()->getLockValue();
        const auto &first = locks.find(ele);
        if (first != locks.end()) {  // only remove the first element
          locks.erase(first);
        }
        if (DEBUG_PTA) {
          llvm::outs() << "After unlock: {";
          auto it = locks.begin();
          for (; it != locks.end(); it++) llvm::outs() << *it << " ";
          llvm::outs() << "}\n";
        }
        break;
      }
      default:
        // Do Nothing
        break;
    }
  }

  cache.emplace(targetEvent, locks);
  return locks;
}

LockSet::LockSet(const ProgramTrace & /* program */) : cache({}) {}

bool LockSet::sharesLock(const MemAccessEvent *lhs, const MemAccessEvent *rhs) {
  auto const lhsLocks = heldLocks(lhs);
  auto const rhsLocks = heldLocks(rhs);

  auto lhsIter = lhsLocks.begin();
  auto rhsIter = rhsLocks.begin();

  while (lhsIter != lhsLocks.end() && rhsIter != rhsLocks.end()) {
    if (rhsIter == rhsLocks.end() || *lhsIter < *rhsIter) {
      lhsIter++;
    } else if (lhsIter == lhsLocks.end() || *lhsIter > *rhsIter) {
      rhsIter++;
    } else {
      return true;
    }
  }

  return false;
}
