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
    auto const loc1 = getSourceLoc(racepair.first);
    auto const loc2 = getSourceLoc(racepair.second);
    Race race(loc1, loc2);
    if (loc1.isUnkown() || loc2.isUnkown()) {
      llvm::errs() << "skipping race with unknown location: " << race << "\n";
      continue;
    }

    report.insert(race);
  }
  return report;
}

bool race::reportContains(const Report &report, Race race) {
  return std::find(report.begin(), report.end(), race) != report.end();
}

bool race::reportContains(const Report &report, std::vector<Race> races) {
  for (auto const &race : report) {
    auto it = std::find(races.begin(), races.end(), race);
    if (it != races.end()) {
      races.erase(it);
    }
  }

  return races.empty();
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const Race &race) {
  os << race.first << " " << race.second;
  return os;
}
