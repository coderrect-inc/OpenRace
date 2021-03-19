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

define i8* @entry(i8*) {
    %c = alloca i64
    %val = load i64, i64* %c
    %add = add nsw i64 %val, 42
    store i64 %add, i64* %c
    ret i8* null
}

define void @foo() {
  %p_thread = alloca i64
  %1 = call i32 @pthread_create(i64* %p_thread, %union.pthread_attr_t* null, i8* (i8*)* @entry, i8* null)
  %thread = load i64, i64* %p_thread
  %2 = call i32 @pthread_join(i64 %thread, i8** null)
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
  auto const &thread1 = threads.at(0)->getEvents();
  auto const &thread2 = threads.at(1)->getEvents();

  CHECK(happensbefore.canReach(thread1.front().get(), thread1.back().get()));
  CHECK(happensbefore.canReach(thread2.front().get(), thread2.back().get()));

  CHECK(happensbefore.canReach(thread1.front().get(), thread2.front().get()));
  CHECK(happensbefore.canReach(thread2.back().get(), thread1.back().get()));

  CHECK(!happensbefore.canReach(thread2.front().get(), thread1.front().get()));
  CHECK(!happensbefore.canReach(thread2.back().get(), thread1.front().get()));
  CHECK(!happensbefore.canReach(thread1.back().get(), thread2.front().get()));
}