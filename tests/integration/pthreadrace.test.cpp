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

#include <catch2/catch.hpp>

#include "RaceDetect/RaceDetect.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

bool reportContains(const race::Report &report, const race::Race r) {
  return std::find(report.begin(), report.end(), r) != report.end();
}

TEST_CASE("Pthreadrace", "[integration][pthread]") {
  llvm::LLVMContext context;
  llvm::SMDiagnostic err;

  auto module = llvm::parseIRFile("integration/pthreadrace/pthreadsimple.ll", err, context);
  if (!module) {
    err.print("pthreadsimple", llvm::errs());
  }
  REQUIRE(module.get() != nullptr);

  auto report = race::detectRaces(module.get());

  llvm::errs() << "races\n";
  for (auto const &race : report) {
    llvm::errs() << race.first << " " << race.second << "\n";
  }

  race::Race race = {{"pthreadsimple.c", 8, 9}, {"pthreadsimple.c", 8, 9}};
  CHECK(reportContains(report, race));
}