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

#include <catch2/catch.hpp>

#include "Analysis/HappensBeforeGraph.h"

TEST_CASE("Happens Before Graph", "[unit][happensbefore]") {
  const char *ModuleString = R"(
%union.pthread_attr_t = type { i64, [48 x i8] }

define i8* @entry(i8* %c) {
    %val = load i8, i8* %c
    %add = add nsw i8 %val, 42
    store i8 %add, i8* %c
    ret i8* %c
}

define void @foo() {
  %p_thread = alloca i64
  %result = alloca i8*
  %1 = call i32 @pthread_create(i64* %p_thread, %union.pthread_attr_t* null, i8* (i8*)* @entry, i8* null)
  %thread = load i64, i64* %p_thread
  %2 = call i32 @pthread_join(i64 %thread, i8** %result)
  ret void
}

declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)
declare i32 @pthread_join(i64, i8**)
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
  }

  race::ProgramTrace program(module.get(), "foo");

  race::HappensBeforeGraph happensbefore(program);

  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 2);
  auto const &thread1 = threads.at(0)->getEvents();
  REQUIRE(thread1.size() >= 2);
  auto const &thread2 = threads.at(1)->getEvents();
  REQUIRE(thread2.size() >= 2);

  CHECK(happensbefore.canReach(thread1.front().get(), thread1.back().get()));
  CHECK(happensbefore.canReach(thread2.front().get(), thread2.back().get()));

  CHECK(happensbefore.canReach(thread1.front().get(), thread2.front().get()));
  CHECK(happensbefore.canReach(thread2.back().get(), thread1.back().get()));

  CHECK(!happensbefore.canReach(thread2.front().get(), thread1.front().get()));
  CHECK(!happensbefore.canReach(thread2.back().get(), thread1.front().get()));
  CHECK(!happensbefore.canReach(thread1.back().get(), thread2.front().get()));
}

TEST_CASE("HappensBefore Barrier", "[unit][happensbefore]") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }

@global = dso_local local_unnamed_addr global i32 0

define dso_local i32 @main() {
entry:
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

define internal void @.omp_outlined.(i32* noalias nocapture readonly %.global_tid., i32* noalias nocapture readnone %.bound_tid.) {
entry:
  %0 = load i32, i32* @global
  %inc = add nsw i32 %0, 1
  tail call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 0)
  store i32 %inc, i32* @global
  ret void
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)
declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)
)";

  // TODO: Make a way of constructing a program trace containing "logical" operations without depending on actual IR
  // for now we will use OpenMP barrier
  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
  }

  race::ProgramTrace program(module.get());
  race::HappensBeforeGraph happensbefore(program);

  REQUIRE(program.getThreads().size() == 3);

  auto const &thread1 = program.getThreads().at(1);
  auto const &thread2 = program.getThreads().at(2);
  REQUIRE(thread1->getEvents().size() == 3);

  CHECK(happensbefore.areParallel(thread1->getEvent(0), thread2->getEvent(0)));
  CHECK(happensbefore.areParallel(thread1->getEvent(2), thread2->getEvent(2)));

  CHECK_FALSE(happensbefore.areParallel(thread1->getEvent(2), thread2->getEvent(0)));
  CHECK_FALSE(happensbefore.areParallel(thread1->getEvent(0), thread2->getEvent(2)));
}