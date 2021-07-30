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

#include "LanguageModel/RaceModel.h"
#include "Trace/ProgramTrace.h"

namespace race {

class LockSet {
 private:
  std::map<const Event *, std::multiset<const llvm::Value *>> cache;
  std::multiset<const llvm::Value *> heldLocks(const Event *targetEvent);

 public:
  explicit LockSet(const ProgramTrace &program);

  [[nodiscard]] bool sharesLock(const MemAccessEvent *lhs, const MemAccessEvent *rhs);
};
}  // namespace race
