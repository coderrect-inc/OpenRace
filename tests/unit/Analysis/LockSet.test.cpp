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

#include "Analysis/LockSet.h"

// TODO: really need way to construct and eval trace for testing, not reading IR
TEST_CASE("Simple lockset test", "[unit][lockset]") {
  const char *ModuleString = R"(
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }

define dso_local void @foo(i32 * %x) {
  %x.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  %1 = load i32*, i32** %x.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32*, i32** %x.addr, align 8
  store i32 %add, i32* %3, align 4
  ret void
}

define dso_local i32 @main() #0 {
  %mutex = alloca %union.pthread_mutex_t
  %x = alloca i32
  %y = alloca i32

  store i32 0, i32* %x
  store i32 0, i32* %y

  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %mutex)

  call void @foo(i32* %y)
  %1 = load i32, i32* %x, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %x, align 4

  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %mutex)

  %2 = load i32, i32* %y, align 4
  %3 = load i32, i32* %x, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %x, align 4

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
  REQUIRE(events.size() == 16);

  race::LockSet lockset(program);

  std::array<size_t, 7> sharedIdxs = {4, 5, 6, 7, 8, 10, 11};
  std::array<size_t, 5> emptyIdxs = {0, 1, 13, 14, 15};

  for (auto sharedIt = sharedIdxs.begin(), sharedEnd = sharedIdxs.end(); sharedIt != sharedEnd; ++sharedIt) {
    // Check it shares lock with self
    auto holdsLock = llvm::cast<race::MemAccessEvent>(events.at(*sharedIt).get());
    UNSCOPED_INFO("Check " << *sharedIt << "-" << *sharedIt);
    CHECK(lockset.sharesLock(holdsLock, holdsLock));

    // Check it shares lock with all others that hold this lock
    for (auto otherIt = sharedIt; otherIt != sharedEnd; ++otherIt) {
      auto const other = llvm::cast<race::MemAccessEvent>(events.at(*otherIt).get());
      UNSCOPED_INFO("Check " << *sharedIt << "-" << *otherIt);
      CHECK(lockset.sharesLock(holdsLock, other));
    }

    // Check it does not share lock with anyone not holding lock
    for (auto idx : emptyIdxs) {
      auto noLock = llvm::cast<race::MemAccessEvent>(events.at(idx).get());
      UNSCOPED_INFO("Check " << *sharedIt << "-" << idx);
      CHECK(!lockset.sharesLock(holdsLock, noLock));
    }
  }
}