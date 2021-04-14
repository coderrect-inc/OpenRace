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

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const Event &event) {
  os << event.getID() << " " << event.type << "\t" << *event.getInst();
  return os;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const Event::Type &type) {
  switch (type) {
    case Event::Type::Read:
      os << "Read";
      break;
    case Event::Type::Write:
      os << "Write";
      break;
    case Event::Type::Fork:
      os << "Fork";
      break;
    case Event::Type::Join:
      os << "Join";
      break;
    case Event::Type::Lock:
      os << "Lock";
      break;
    case Event::Type::Unlock:
      os << "Unlock";
      break;
    case Event::Type::Call:
      os << "Call";
      break;
    case Event::Type::CallEnd:
      os << "EndCall";
      break;
    case Event::Type::ExternCall:
      os << "ExternCall";
      break;
    default:
      llvm_unreachable("Did you forget to update Event::Type operator<< ?");
  }

  return os;
}

