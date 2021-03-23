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

std::optional<SourceLoc> getSourceLoc(const Event *e) {
  auto const &loc = e->getInst()->getDebugLoc();
  if (auto diloc = loc.get()) {
    return SourceLoc(diloc);
  }

  return std::nullopt;
}

}  // namespace

bool SourceLoc::operator<(const SourceLoc &other) const {
  if (filename != other.filename) return filename < other.filename;
  if (line != other.line) return line < other.line;
  return col < other.col;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const SourceLoc &loc) {
  os << loc.filename << ":" << loc.line << ":" << loc.col;
  return os;
}

RaceAccess::RaceAccess(const MemAccessEvent *event) : inst(event->getInst()), location(getSourceLoc(event)) {}

bool RaceAccess::operator==(const RaceAccess &other) const { return location == other.location && inst == other.inst; }
bool RaceAccess::operator!=(const RaceAccess &other) const { return !(*this == other); }
bool RaceAccess::operator<(const RaceAccess &other) const {
  if (location != other.location) return location < other.location;
  return inst < other.inst;
}
llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const std::optional<SourceLoc> &location) {
  if (location.has_value()) {
    os << location.value();
  } else {
    os << "UnknownLocation";
  }
  return os;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const RaceAccess &acc) {
  os << acc.location << "\t";
  if (acc.inst) {
    os << *acc.inst;
  } else {
    os << "missing inst";
  }

  return os;
}

void Reporter::collect(const WriteEvent *e1, const MemAccessEvent *e2) { races.emplace_back(std::make_pair(e1, e2)); }

Report Reporter::getReport() const {
  Report report;
  for (auto const &racepair : races) {
    Race race(racepair.first, racepair.second);
    if (race.missingLocation()) {
      llvm::errs() << "skipping race with unknown location: " << race << "\n";
      continue;
    }

    report.insert(race);
  }
  return report;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const Race &race) {
  os << race.first.location << " " << race.second.location << "\n\t" << *race.first.inst << "\n\t" << *race.second.inst;
  return os;
}
