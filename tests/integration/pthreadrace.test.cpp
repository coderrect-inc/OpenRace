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
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>

#include <catch2/catch.hpp>

#include "RaceDetect.h"
#include "Reporter/Reporter.h"
#include "helpers/ReportChecking.h"

TEST_CASE("pthreadrace", "[integration][pthread]") {
  llvm::LLVMContext context;
  llvm::SMDiagnostic err;

  std::string llPath = "integration/pthreadrace/ll/";

  // NOTE: add new test input/output pair here
  std::vector<std::pair<std::string, std::string>> oracles = {
      std::make_pair("pthread-simple-yes.ll", "pthread-simple-yes.c:8:9 pthread-simple-yes.c:8:9")};

  for (const auto &oracle : oracles) {
    SECTION("Testing " + oracle.first) {
      auto llFile = llPath + oracle.first;
      auto module = llvm::parseIRFile(llFile, err, context);
      if (!module) {
        err.print(oracle.first.c_str(), llvm::errs());
      }
      REQUIRE(module.get() != nullptr);

      auto report = race::detectRaces(module.get());

      llvm::errs() << "races\n";
      for (auto const &race : report) {
        llvm::errs() << race.first << " " << race.second << "\n";
      }

      auto race = TestRace::fromString(oracle.second);
      CHECK(reportContains(report, race));
    }
  }
}