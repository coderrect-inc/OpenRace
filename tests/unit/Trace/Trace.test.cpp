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

#include "Trace/ProgramTrace.h"

CATCH_REGISTER_ENUM(race::Event::Type, race::Event::Type::Read, race::Event::Type::Write, race::Event::Type::Fork,
                    race::Event::Type::Join, race::Event::Type::Call, race::Event::Type::CallEnd,
                    race::Event::Type::ExternCall)
TEST_CASE("ThreadTrace construction", "[unit][event]") {
  const char *modString = R"(
declare void @print(i64)

define void @adder(i64* %c) {
    %val = load i64, i64* %c
    %add = add nsw i64 %val, 42
    store i64 %add, i64* %c
    ret void
}

define void @foo() {
    %x = alloca i64
    call void @adder(i64* %x)
    %pval = load i64, i64* %x
    call void @print(i64 %pval)
    ret void
}
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(modString, Err, Ctx);

  race::ProgramTrace program(module.get(), "foo");
  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 1);

  auto const &thread = threads.at(0);
  auto const &events = thread->getEvents();
  REQUIRE(events.size() == 6);
  REQUIRE(events.at(0)->type == race::Event::Type::Call);
  REQUIRE(events.at(1)->type == race::Event::Type::Read);
  REQUIRE(events.at(2)->type == race::Event::Type::Write);
  REQUIRE(events.at(3)->type == race::Event::Type::CallEnd);
  REQUIRE(events.at(4)->type == race::Event::Type::Read);
  REQUIRE(events.at(5)->type == race::Event::Type::ExternCall);
}

TEST_CASE("Construct pthread ThreadTrace", "[unit][event]") {
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
  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 2);

  SECTION("Main ThreadTrace") {
    auto const &thread = threads.at(0);
    auto const &events = thread->getEvents();
    REQUIRE(events.size() == 3);

    auto const &fork = events.at(0);
    CHECK(fork->type == race::Event::Type::Fork);
    CHECK(&fork->getThread() == thread);
    CHECK(&fork->getThread().program == &program);

    auto const &join = events.at(2);
    CHECK(join->type == race::Event::Type::Join);
  }

  SECTION("Spawned ThreadTrace") {
    auto const &thread = threads.at(1);
    auto const &events = thread->getEvents();
    REQUIRE(events.size() == 2);
    CHECK(events.at(0)->type == race::Event::Type::Read);
    CHECK(events.at(1)->type == race::Event::Type::Write);
  }

  SECTION("ThreadTrace Increasing Event IDs") {
    auto const &events = threads.at(0)->getEvents();
    auto prevID = events.front()->getID();
    for (auto it = events.begin() + 1, end = events.end(); it != end; ++it) {
      auto currentID = (*it)->getID();
      REQUIRE(currentID > prevID);
      prevID = currentID;
    }
  }
}

TEST_CASE("Nested Pthread ThreadTrace", "[unit][event]") {
  const char *ModuleString = R"(
%union.pthread_attr_t = type { i64, [48 x i8] }

define i8* @entryOuter(i8*) {
  %p_sub_thread = alloca i64
  %2 = call i32 @pthread_create(i64* %p_sub_thread, %union.pthread_attr_t* null, i8* (i8*)* @entryInner, i8* null)
  %sub_thread = load i64, i64* %p_sub_thread
  %result = alloca i8*
  %3 = call i32 @pthread_join(i64 %sub_thread, i8** %result)
  ret i8* null
}

define i8* @entryInner(i8* %c) {
    %val = load i8, i8* %c
    %add = add nsw i8 %val, 42
    store i8 %add, i8* %c
    ret i8* %c
}

define void @foo() {
  %p_thread = alloca i64
  %1 = call i32 @pthread_create(i64* %p_thread, %union.pthread_attr_t* null, i8* (i8*)* @entryOuter, i8* null)
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
  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 3);

  SECTION("Main ThreadTrace") {
    auto const &thread = threads.at(0);
    auto const &events = thread->getEvents();
    REQUIRE(events.size() == 3);

    auto const &fork = events.at(0);
    CHECK(fork->type == race::Event::Type::Fork);

    auto const &join = events.at(2);
    CHECK(join->type == race::Event::Type::Join);
  }

  SECTION("Spawned ThreadTrace") {
    auto const &thread = threads.at(1);
    auto const &events = thread->getEvents();
    REQUIRE(events.size() == 3);

    auto const &fork = events.at(0);
    CHECK(fork->type == race::Event::Type::Fork);

    auto const &join = events.at(2);
    CHECK(join->type == race::Event::Type::Join);
  }

  SECTION("Sub Spawned ThreadTrace") {
    auto const &thread = threads.at(2);
    auto const &events = thread->getEvents();
    REQUIRE(events.size() == 2);
    CHECK(events.at(0)->type == race::Event::Type::Read);
    CHECK(events.at(1)->type == race::Event::Type::Write);
  }
}

TEST_CASE("Construct mutex ThreadTrace", "[unit][event]") {
  const char *ModuleString = R"(
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }

define dso_local i32 @main() #0 {
  %mutex = alloca %union.pthread_mutex_t
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %mutex)
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %mutex)
  ret i32 0
}

declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
  }

  race::ProgramTrace program(module.get());
  auto const &threads = program.getThreads();
  REQUIRE(threads.size() == 1);

  auto const &thread = threads.at(0);
  auto const &events = thread->getEvents();
  REQUIRE(events.size() == 2);

  auto const &lock = events.at(0);
  CHECK(lock->type == race::Event::Type::Lock);

  auto const &unlock = events.at(1);
  CHECK(unlock->type == race::Event::Type::Unlock);
}