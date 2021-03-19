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

#include "helpers/ReportChecking.h"

namespace {
unsigned int stringToUnsigned(llvm::StringRef s) {
  std::istringstream read(s);
  unsigned int val = 0;
  read >> val;
  return val;
}

// assumes s is in format "file:line:col"
race::SourceLoc locFromString(llvm::StringRef s) {
  auto parts = s.split(":");
  auto file = parts.first;
  parts = parts.second.split(":");
  auto line = stringToUnsigned(parts.first);
  auto col = stringToUnsigned(parts.second);

  return race::SourceLoc{file, line, col};
}

}  // namespace

TestRace TestRace::fromString(llvm::StringRef s) {
  auto parts = s.split(" ");
  auto loc1 = locFromString(parts.first);
  auto loc2 = locFromString(parts.second);

  return TestRace{loc1, loc2};
}

// build set of races from strings
std::set<TestRace> TestRace::fromStrings(std::vector<llvm::StringRef> strings) {
  std::set<TestRace> out;

  for (auto const &s : strings) {
    out.insert(TestRace::fromString(s));
  }

  return out;
}

bool TestRace::equals(const race::Race &race) const {
  if (race.missingLocation()) return false;

  return race.first.location.value() == first && race.second.location.value() == second;
}

bool reportContains(const race::Report &report, TestRace race) {
  return std::find_if(report.begin(), report.end(),
                      [&](const race::Race &reportRace) { return race.equals(reportRace); }) != report.end();
}
bool reportContains(const race::Report &report, std::vector<TestRace> races) {
  // loop over report, removing any matched races from the list of test races
  for (auto const &reportRace : report) {
    auto it = std::find_if(races.begin(), races.end(), [&](const TestRace &race) { return race.equals(reportRace); });
    if (it != races.end()) {
      races.erase(it);
      if (races.empty()) break;
    }
  }

  return races.empty();
}