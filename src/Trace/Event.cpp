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
