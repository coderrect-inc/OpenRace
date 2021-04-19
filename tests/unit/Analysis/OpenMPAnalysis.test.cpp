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

#include <llvm/AsmParser/Parser.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>

#include <catch2/catch.hpp>
#include <sstream>

#include "Analysis/OpenMPAnalysis.h"
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
  race::OpenMPAnalysis arrayIndexAnalysis;

  // TODO: Make Program unique event ID a type in Trace
  using PUID = std::pair<race::ThreadID, race::EventID>;

  auto puidStr = [](const PUID &puid) {
    std::stringstream ss;
    ss << "T" << puid.first << ":" << puid.second;
    return ss.str();
  };

  std::vector<std::pair<PUID, PUID>> noAlias{
      {{1, 16}, {2, 16}},  // Writes to A[i]
      {{1, 16}, {2, 15}},  // Write to A[i] read to A[i]
      {{1, 19}, {2, 19}},  // Writes to B[i]
  };
  std::vector<std::pair<PUID, PUID>> alias{
      {{1, 19}, {2, 18}},  // Write to B[i] read from B[i+1]
  };

  llvm::errs() << program << "\n";

  for (auto const &pair : noAlias) {
    auto e1 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.first.first, pair.first.second));
    auto e2 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.second.first, pair.second.second));

    UNSCOPED_INFO("Checking no-alias between " << puidStr(pair.first) << " and " << puidStr(pair.second));
    CHECK_FALSE(arrayIndexAnalysis.canIndexOverlap(e1, e2));
  }

  for (auto const &pair : alias) {
    auto e1 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.first.first, pair.first.second));
    auto e2 = llvm::cast<race::MemAccessEvent>(program.getEvent(pair.second.first, pair.second.second));

    UNSCOPED_INFO("Checking for alias between " << puidStr(pair.first) << " and " << puidStr(pair.second));
    CHECK(arrayIndexAnalysis.canIndexOverlap(e1, e2));
  }
}

TEST_CASE("OpenMP inSameTeam Analysis") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@count = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main() {
entry:
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  %0 = load i32, i32* @count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @count, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone sspstrong uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  %0 = load i32, i32* @count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @count, align 4
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

)";
  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
    FAIL("no module");
  }

  race::ProgramTrace program(module.get());
  race::OpenMPAnalysis arrayIndexAnalysis;

  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 5);

  auto check_same_team = [&arrayIndexAnalysis](const race::ThreadTrace &t1, const race::ThreadTrace &t2) {
    for (auto const &e1 : t1.getEvents()) {
      for (auto const &e2 : t2.getEvents()) {
        CHECK(arrayIndexAnalysis.inSameTeam(e1.get(), e2.get()));
      }
    }
  };

  auto check_not_same_team = [&arrayIndexAnalysis](const race::ThreadTrace &t1, const race::ThreadTrace &t2) {
    for (auto const &e1 : t1.getEvents()) {
      for (auto const &e2 : t2.getEvents()) {
        CHECK_FALSE(arrayIndexAnalysis.inSameTeam(e1.get(), e2.get()));
      }
    }
  };

  check_same_team(*threads.at(1), *threads.at(2));
  check_same_team(*threads.at(3), *threads.at(4));

  check_not_same_team(*threads.at(1), *threads.at(3));
  check_not_same_team(*threads.at(1), *threads.at(4));
  check_not_same_team(*threads.at(2), *threads.at(3));
  check_not_same_team(*threads.at(2), *threads.at(4));
}

TEST_CASE("OpenMP inSameSingleRegion Analysis") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@count = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main() {
entry:
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) {
entry:
  %.kmpc_loc.addr = alloca %struct.ident_t

  %start1 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 0)
  %0 = load i32, i32* @count, align 4
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 0)
  
  %inc = add nsw i32 %0, 1

  %start2 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 0)
  store i32 %inc, i32* @count, align 4
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 0)

  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)
declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)
declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

)";
  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
    FAIL("no module");
  }

  race::ProgramTrace program(module.get());
  race::OpenMPAnalysis arrayIndexAnalysis;

  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 3);

  auto check_same_team = [&arrayIndexAnalysis](const race::ThreadTrace &t1, const race::ThreadTrace &t2) {
    for (auto const &e1 : t1.getEvents()) {
      for (auto const &e2 : t2.getEvents()) {
        CHECK(arrayIndexAnalysis.inSameTeam(e1.get(), e2.get()));
      }
    }
  };

  auto check_not_same_team = [&arrayIndexAnalysis](const race::ThreadTrace &t1, const race::ThreadTrace &t2) {
    for (auto const &e1 : t1.getEvents()) {
      for (auto const &e2 : t2.getEvents()) {
        CHECK_FALSE(arrayIndexAnalysis.inSameTeam(e1.get(), e2.get()));
      }
    }
  };
  llvm::errs() << program << "\n";

  auto const &e11 = program.getEvent(1, 1);
  auto const &e14 = program.getEvent(1, 4);

  auto const &e21 = program.getEvent(2, 1);
  auto const &e24 = program.getEvent(2, 4);

  CHECK(arrayIndexAnalysis.inSameSingleBlock(e11, e21));
  CHECK(arrayIndexAnalysis.inSameSingleBlock(e14, e24));

  CHECK_FALSE(arrayIndexAnalysis.inSameSingleBlock(e11, e24));
  CHECK_FALSE(arrayIndexAnalysis.inSameSingleBlock(e14, e21));
}