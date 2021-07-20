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
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/NoFolder.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>

#include <catch2/catch.hpp>

#include "IR/Builder.h"
#include "IR/IRImpls.h"

TEST_CASE("Manually Constructed IR", "[unit][IR]") {
  llvm::LLVMContext ctx;
  auto module = std::make_unique<llvm::Module>("testmodule", ctx);
  auto func = llvm::Function::Create(llvm::FunctionType::get(llvm::Type::getVoidTy(ctx), false),
                                     llvm::Function::ExternalLinkage, "testfunction", module.get());

  auto BB = llvm::BasicBlock::Create(ctx, "testblock", func);
  llvm::IRBuilder<llvm::NoFolder> IRB(BB);

  SECTION("Construct LoadIR") {
    auto alloca = IRB.CreateAlloca(IRB.getInt32Ty());
    auto loadInst = IRB.CreateLoad(IRB.getInt32Ty(), alloca);

    auto load = std::make_unique<race::Load>(loadInst);
    REQUIRE(load->getInst() == loadInst);
    REQUIRE(llvm::isa<llvm::LoadInst>(load->getInst()));
    REQUIRE(load->getAccessedValue() == loadInst->getPointerOperand());
    REQUIRE(llvm::isa<race::ReadIR>(load));
    REQUIRE(llvm::isa<race::MemAccessIR>(load));
  }

  SECTION("Construct StoreIR") {
    auto alloca = IRB.CreateAlloca(IRB.getInt32Ty());
    auto val = IRB.getInt32(42);
    auto storeInst = IRB.CreateStore(val, alloca);

    auto store = std::make_unique<race::Store>(storeInst);
    REQUIRE(store->getInst() == storeInst);
    REQUIRE(llvm::isa<llvm::StoreInst>(store->getInst()));
    REQUIRE(store->getAccessedValue() == storeInst->getPointerOperand());
    REQUIRE(llvm::isa<race::WriteIR>(store));
    REQUIRE(llvm::isa<race::MemAccessIR>(store));
  }

  SECTION("Construct CallIR") {
    auto callInst = IRB.CreateCall(func);
    REQUIRE(callInst != nullptr);

    auto call = std::make_unique<race::CallIR>(callInst);
    REQUIRE(call->getInst() == callInst);
    REQUIRE(llvm::isa<llvm::CallBase>(call->getInst()));
    REQUIRE(llvm::isa<race::CallIR>(call));
  }
}

TEST_CASE("Builder Read/Write/Call", "[unit][IR]") {
  const char *ModuleString = R"(
declare void @bar()

define void @hello() {
    ret void
}

define void @foo(i32* %x) {
  %read = load i32, i32* %x
  %add = add nsw i32 %read, 42
  call void @bar()
  store i32 %add, i32* %x
  call void @hello()
  ret void
})";
  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto M = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  // if (!M) {
  //     Err.print("error", llvm::errs());
  // }
  auto func = M->getFunction("foo");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 4);

  auto read = llvm::dyn_cast<race::ReadIR>(racefunc.at(0).get());
  REQUIRE(read);
  REQUIRE(read->getAccessedValue()->getName() == "x");

  auto externcall = llvm::dyn_cast<race::CallIR>(racefunc.at(1).get());
  REQUIRE(externcall);
  REQUIRE(externcall->getInst()->getCalledFunction()->getName() == "bar");

  auto write = llvm::dyn_cast<race::WriteIR>(racefunc.at(2).get());
  REQUIRE(write);
  REQUIRE(write->getAccessedValue()->getName() == "x");

  auto call = llvm::dyn_cast<race::CallIR>(racefunc.at(3).get());
  REQUIRE(call);
  REQUIRE(call->getInst()->getCalledFunction()->getName() == "hello");
}

TEST_CASE("Builder pthread create/join", "[unit][IR]") {
  const char *ModuleString = R"(
%union.pthread_attr_t = type { i64, [48 x i8] }

define i8* @entry() {
    ret i8* null
}

define void @foo() {
  %p_thread = alloca i64
  %1 = call i32 @pthread_create(i64* %p_thread, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* ()* @entry to i8* (i8*)*), i8* null)
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
  auto func = module->getFunction("foo");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 3);

  auto pthreadcreate = llvm::dyn_cast<race::ForkIR>(racefunc.at(0).get());
  REQUIRE(pthreadcreate);
  REQUIRE(pthreadcreate->getThreadHandle()->getName() == "p_thread");
  REQUIRE(pthreadcreate->getThreadEntry()->getName() == "entry");

  auto pthreadjoin = llvm::dyn_cast<race::JoinIR>(racefunc.at(2).get());
  REQUIRE(pthreadjoin);
  REQUIRE(pthreadjoin->getThreadHandle()->getName() == "thread");
}

TEST_CASE("Builder pthread mutex", "[unit][IR]") {
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
  auto func = module->getFunction("main");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 2);

  SECTION("pthread_mutex_lock") {
    auto lock = llvm::dyn_cast<race::LockIR>(racefunc.at(0).get());
    REQUIRE(lock != nullptr);
    CHECK(lock->getLockValue()->getName() == "mutex");
  }

  SECTION("pthread_mutex_unlock") {
    auto unlock = llvm::dyn_cast<race::UnlockIR>(racefunc.at(1).get());
    REQUIRE(unlock != nullptr);
    CHECK(unlock->getLockValue()->getName() == "mutex");
  }
}