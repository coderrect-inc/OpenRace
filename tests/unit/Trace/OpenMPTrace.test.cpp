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
#include <llvm/IR/Module.h>
#include <llvm/Support/SourceMgr.h>

#include <catch2/catch.hpp>

#include "PreProcessing/Passes/DuplicateOpenMPForks.h"
#include "Trace/ProgramTrace.h"

TEST_CASE("OpenmP ThreadTrace construction", "[unit][event][omp]") {
  const char *ModuleString = R"(

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00"
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }
@1 = private unnamed_addr constant [21 x i8] c";simple.c;main;3;1;;\00"

define i32 @main() {
  %count = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %count)
  ret i32 0
}

define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %count) {
  %1 = load i32, i32* %count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %count, align 4
  ret void
}

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
  auto const &threads = program.getThreads();

  // 1 main thread, 2 omp threads
  REQUIRE(threads.size() == 3);

  // Check the omp thread has expected event types
  auto const ompThread = threads.at(1);
  auto const &events = ompThread->getEvents();
  REQUIRE(events.size() == 2);
  CHECK(events.at(0)->type == race::Event::Type::Read);
  CHECK(events.at(1)->type == race::Event::Type::Write);

  // Both omp threads should be identical
  SECTION("OpenMP threads match") {
    auto const &omp2events = threads.at(2)->getEvents();
    REQUIRE(omp2events.size() == events.size());
    for (long unsigned int i = 0; i < events.size(); ++i) {
      auto const &e1 = events.at(i);
      auto const &e2 = omp2events.at(i);
      CHECK(e1->type == e2->type);
    }
  }
}

TEST_CASE("Construct critical ThreadTrace", "[unit][event]") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer

define dso_local i32 @main() #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @0, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1)#1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  call void @__kmpc_critical(%struct.ident_t* @0, i32 %6, [8 x i32]* @.gomp_critical_user_.var)
  call void @__kmpc_end_critical(%struct.ident_t* @0, i32 %6, [8 x i32]* @.gomp_critical_user_.var)
  ret void
}

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)
declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)
declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
  }

  race::ProgramTrace program(module.get());
  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 3);

  auto const &thread = threads.at(1);
  auto const &events = thread->getEvents();
  REQUIRE(events.size() == 3);

  auto const &critical = events.at(1);
  CHECK(critical->type == race::Event::Type::Lock);

  auto const &endcritical = events.at(2);
  CHECK(endcritical->type == race::Event::Type::Unlock);
}