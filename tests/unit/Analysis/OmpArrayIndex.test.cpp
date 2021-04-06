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

#include <llvm/IR/LLVMContext.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>

#include <catch2/catch.hpp>
#include <sstream>

#include "Analysis/OmpArrayIndex.h"
#include "Trace/ProgramTrace.h"

TEST_CASE("Omp Array Index Alias Analysis", "[unit][omp]") {
  llvm::LLVMContext context;
  llvm::SMDiagnostic err;
  const std::string llPath = "unit/Analysis/";
  auto const file = "simpleloop.ll";
  auto module = llvm::parseIRFile(llPath + file, err, context);
  if (!module) {
    err.print(file, llvm::errs());
  }
  REQUIRE(module.get() != nullptr);

  race::ProgramTrace program(module.get());
  race::OmpArrayIndexAnalysis arrayIndexAnalysis;

  // struct PUID {
  //   race::ThreadID tid;
  //   race::EventID eid;
  //   PUID() = default;
  //   PUID(race::ThreadID tid, race::EventID eid) : tid(tid), eid(eid) {}
  // }

  // TODO: Make Program unique event ID a type in Trace
  using PUID = std::pair<race::ThreadID, race::EventID>;

  auto puidStr = [](const PUID &puid) {
    std::stringstream ss;
    ss << "T" << puid.first << ":" << puid.second;
    return ss.str();
  };

  std::vector<std::pair<PUID, PUID>> noAlias{
      {{1, 15}, {2, 15}},  // Writes to A[i]
      {{1, 15}, {2, 14}},  // Write to A[i] read to A[i]
      {{1, 18}, {2, 18}},  // Writes to B[i]
  };
  std::vector<std::pair<PUID, PUID>> alias{
      {{1, 18}, {2, 17}},  // Write to B[i] read from B[i+1]
  };

  llvm::errs() << program << "\n";

  for (auto const &pair : noAlias) {
    auto e1 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.first.first, pair.first.second));
    auto e2 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.second.first, pair.second.second));

    UNSCOPED_INFO("Checking no-alias between " << puidStr(pair.first) << " and " << puidStr(pair.second));
    CHECK_FALSE(arrayIndexAnalysis.canIndexAlias(e1, e2));
  }

  for (auto const &pair : alias) {
    auto e1 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.first.first, pair.first.second));
    auto e2 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.second.first, pair.second.second));

    UNSCOPED_INFO("Checking for alias between " << puidStr(pair.first) << " and " << puidStr(pair.second));
    CHECK(arrayIndexAnalysis.canIndexAlias(e1, e2));
  }
}