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

#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>

#include <catch2/catch.hpp>
#include <utility>

#include "RaceDetect.h"

namespace {
auto stringToUnsigned(llvm::StringRef s) -> unsigned int {
  std::istringstream read(s);
  unsigned int val = 0;
  read >> val;
  return val;
}

// assumes s is in format "file:line:col"
auto locFromString(llvm::StringRef s) -> race::SourceLoc {
  auto parts = s.split(":");
  auto file = parts.first;
  parts = parts.second.split(":");
  auto line = stringToUnsigned(parts.first);
  auto col = stringToUnsigned(parts.second);

  return race::SourceLoc{file, line, col};
}

auto trimPath(const race::SourceLoc &original, llvm::StringRef path) -> race::SourceLoc {
  if (path.empty() || !original.filename.startswith(path)) return original;

  race::SourceLoc trimmedLoc(original);
  trimmedLoc.filename = trimmedLoc.filename.substr(path.size());
  return trimmedLoc;
}

}  // namespace

auto TestRace::fromString(llvm::StringRef s) -> TestRace {
  auto parts = s.split(" ");
  auto loc1 = locFromString(parts.first);
  auto loc2 = locFromString(parts.second);

  return TestRace{loc1, loc2};
}

// build set of races from strings
auto TestRace::fromStrings(const std::vector<llvm::StringRef>& strings) -> std::vector<TestRace> {
  std::vector<TestRace> out;

  out.reserve(strings.size());

for (auto const &s : strings) {
    out.push_back(TestRace::fromString(s));
  }

  return out;
}

auto TestRace::fromRaces(const std::set<race::Race>& races, llvm::StringRef path) -> std::vector<TestRace> {
  std::vector<TestRace> out;

  for (auto const &race : races) {
    if (race.missingLocation()) continue;
    auto const firstLoc = trimPath(race.first.location.value(), path);
    auto const secondLoc = trimPath(race.second.location.value(), path);
    out.push_back(TestRace(firstLoc, secondLoc));
  }

  return out;
}

auto operator<<(llvm::raw_ostream &os, const TestRace &race) -> llvm::raw_ostream & {
  os << race.first << " " << race.second;
  return os;
}

auto TestRace::equals(const race::Race &race, llvm::StringRef path) const -> bool {
  if (race.missingLocation()) return false;

  auto const expectedFirst = trimPath(race.first.location.value(), path);
  auto const expectedSecond = trimPath(race.second.location.value(), path);

  return expectedFirst == first && expectedSecond == second;
}

// Check that report contains each expected race
// if path is set, strip path from all sourceloc in race report
auto reportContains(const race::Report &report, std::vector<TestRace> expectedRaces, llvm::StringRef path = "") -> bool {
  // loop over report, removing any matched races from the list of test races
  for (auto const &reportRace : report.races) {
    auto it = std::find_if(expectedRaces.begin(), expectedRaces.end(),
                           [&](const TestRace &race) { return race.equals(reportRace, path); });
    if (it != expectedRaces.end()) {
      expectedRaces.erase(it);
      if (expectedRaces.empty()) break;
    }
  }

  return expectedRaces.empty();
}

Oracle::Oracle(llvm::StringRef filename, const std::vector<llvm::StringRef>& races) : filename(filename) {
  expectedRaces = TestRace::fromStrings(races);
}

void checkTest(llvm::StringRef file, llvm::StringRef llPath, std::initializer_list<llvm::StringRef> expected) {
  llvm::LLVMContext context;
  llvm::SMDiagnostic err;

  // Read the input file
  auto testfile = llPath.str() + file.str();
  auto module = llvm::parseIRFile(testfile, err, context);
  if (!module) {
    err.print(file.str().c_str(), llvm::errs());
  }
  REQUIRE(module.get() != nullptr);

  // Generate the report
  auto report = race::detectRaces(module.get(), race::DetectRaceConfig{
                                                    .printTrace = false,
                                                });

  // Get actual/expected test races
  auto expectedRaces = TestRace::fromStrings(expected);
  auto actualRaces = TestRace::fromRaces(report.races, llPath);
  // Sort for set_difference
  std::sort(expectedRaces.begin(), expectedRaces.end());
  std::sort(actualRaces.begin(), actualRaces.end());

  // races in expected but not in actual are missing
  std::vector<TestRace> missing;
  std::set_difference(expectedRaces.begin(), expectedRaces.end(), actualRaces.begin(), actualRaces.end(),
                      std::back_inserter(missing));

  // races in actual but not in expected are unexpected
  std::vector<TestRace> unexpected;
  std::set_difference(actualRaces.begin(), actualRaces.end(), expectedRaces.begin(), expectedRaces.end(),
                      std::back_inserter(unexpected));

  // Build the info message to be displayed if test fails
  std::string errors;
  llvm::raw_string_ostream stream(errors);
  if (!missing.empty()) {
    stream << missing.size() << " Missed Races\n";
    for (auto const &missedRace : missing) {
      stream << "\t" << missedRace << "\n";
    }
  }
  if (!unexpected.empty()) {
    stream << unexpected.size() << " Unexpected races\n";
    for (auto const &unexpectedRace : unexpected) {
      stream << "\t" << unexpectedRace << "\n";
    }
  }

  INFO(stream.str());
  REQUIRE((missing.empty() && unexpected.empty()));
}

void checkOracles(const std::vector<Oracle> &oracles, llvm::StringRef llPath) {
  llvm::LLVMContext context;
  llvm::SMDiagnostic err;

  for (auto const &oracle : oracles) {
    SECTION("test " + oracle.filename.str()) {
      auto testfile = llPath.str() + oracle.filename.str();
      auto module = llvm::parseIRFile(testfile, err, context);
      if (!module) {
        err.print(oracle.filename.str().c_str(), llvm::errs());
      }
      REQUIRE(module.get() != nullptr);

      auto report = race::detectRaces(module.get());
      // llvm::errs() << "===> Detected Races:\n";
      // for (auto const &race : report.races) {
      //   llvm::errs() << race << "\n";
      // }
      // llvm::errs() << "\n";

      REQUIRE(report.size() == oracle.expectedRaces.size());
      CHECK(reportContains(report, oracle.expectedRaces, llPath));
    }
  }
}