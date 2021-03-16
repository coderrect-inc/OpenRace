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

#include "Reporter.h"

#include "llvm/IR/DebugInfoMetadata.h"

using namespace race;

namespace {

SourceLoc getSourceLoc(const Event *e) {
  auto const &loc = e->getInst()->getDebugLoc();
  if (auto diloc = loc.get()) {
    return SourceLoc(diloc);
  }

  return SourceLoc();
}

}  // namespace

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const SourceLoc &loc) {
  os << loc.filename << ":" << loc.line << ":" << loc.col;
  return os;
}

void Reporter::collect(const WriteEvent *e1, const MemAccessEvent *e2) { races.emplace_back(std::make_pair(e1, e2)); }

Report Reporter::getReport() const {
  Report report;
  for (auto const &racepair : races) {
    report.emplace_back(getSourceLoc(racepair.first), getSourceLoc(racepair.second));
  }
  return report;
}
