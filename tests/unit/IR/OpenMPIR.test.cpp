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

#include "IR/Builder.h"
#include "IR/IRImpls.h"
#include "PreProcessing/Passes/DuplicateOpenMPForks.h"

TEST_CASE("OpenMP", "[unit][IR][omp]") {
  const char *ModuleString = R"(

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00"
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }
@1 = private unnamed_addr constant [21 x i8] c";simple.c;main;3;1;;\00"

define i32 @main() {
    %count = alloca i32
    %.kmpc_loc.addr = alloca %struct.ident_t
    call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %count)
    ret i32 0
}

define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %count) {
    %count.addr = alloca i32*
    store i32* %count, i32** %count.addr
    %1 = load i32*, i32** %count.addr
    %2 = load i32, i32* %1
    %inc = add nsw i32 %2, 1
    store i32 %inc, i32* %1
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

  duplicateOpenMPForks(*module);

  auto func = module->getFunction("main");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 4);

  auto ompFork = llvm::dyn_cast<race::OpenMPFork>(racefunc.at(0).get());
  REQUIRE(ompFork);
  CHECK(ompFork->getInst()->getCalledFunction()->getName() == "__kmpc_fork_call");
  CHECK(ompFork->getThreadEntry()->getName() == ".omp_outlined.");

  ompFork = llvm::dyn_cast<race::OpenMPFork>(racefunc.at(1).get());
  REQUIRE(ompFork);
  CHECK(ompFork->getInst()->getCalledFunction()->getName() == "__kmpc_fork_call");
  CHECK(ompFork->getThreadEntry()->getName() == ".omp_outlined.");

  auto ompJoin = llvm::dyn_cast<race::OpenMPJoin>(racefunc.at(2).get());
  REQUIRE(ompJoin);
  CHECK(ompJoin->getInst()->getCalledFunction()->getName() == "__kmpc_fork_call");

  ompJoin = llvm::dyn_cast<race::OpenMPJoin>(racefunc.at(3).get());
  REQUIRE(ompJoin);
  CHECK(ompJoin->getInst()->getCalledFunction()->getName() == "__kmpc_fork_call");
}

TEST_CASE("Build OpenMP once/end_once IR") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00"
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }
@1 = private unnamed_addr constant [21 x i8] c";simple.c;main;3;1;;\00"
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %count) {
    %.kmpc_loc.addr = alloca %struct.ident_t
    %1 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 0)
    call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 0)
    ret void
}
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

  auto func = module->getFunction(".omp_outlined.");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 2);

  CHECK(racefunc.at(0)->type == race::IR::Type::OpenMPSingleStart);
  CHECK(racefunc.at(1)->type == race::IR::Type::OpenMPSingleEnd);
}

TEST_CASE("Build OpenMP barrier IR") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00"
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }
@1 = private unnamed_addr constant [21 x i8] c";simple.c;main;3;1;;\00"

define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* nonnull align 4 dereferenceable(4) %count) {
    %.kmpc_loc.addr = alloca %struct.ident_t
    call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 0)
    ret void
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
    FAIL("no module");
  }

  auto func = module->getFunction(".omp_outlined.");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 1);

  CHECK(racefunc.at(0)->type == race::IR::Type::OpenMPBarrier);
}

TEST_CASE("Build OpenMP critical IR") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer

define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) {
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
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
    FAIL("no module");
  }

  auto func = module->getFunction(".omp_outlined.");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 6);

  CHECK(racefunc.at(4)->type == race::IR::Type::OpenMPCriticalStart);
  CHECK(racefunc.at(5)->type == race::IR::Type::OpenMPCriticalEnd);
}

TEST_CASE("Build OpenMP master IR") {
  const char *ModuleString = R"(
%struct.ident_t = type { i32, i32, i32, i32, i8* }
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @__kmpc_master(%struct.ident_t* @0, i32 %6)
  call void @__kmpc_end_master(%struct.ident_t* @0, i32 %6)
  ret void
}

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)
declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
    FAIL("no module");
  }

  auto func = module->getFunction(".omp_outlined.");

  race::FunctionSummaryBuilder builder;
  auto &racefunc = *builder.getFunctionSummary(func);
  REQUIRE(racefunc.size() == 6);

  CHECK(racefunc.at(4)->type == race::IR::Type::OpenMPMasterStart);
  CHECK(racefunc.at(5)->type == race::IR::Type::OpenMPMasterEnd);
}
