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

TEST_CASE("Duplicate OpenMP Forks", "[unit][preprocessing][omp]") {
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

declare void @.omp_outlined.(i32* noalias, i32* noalias, i32*);

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) 
)";
  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
    FAIL("no module");
  }

  REQUIRE(module->getFunction("main")->getEntryBlock().getInstList().size() == 4);
  duplicateOpenMPForks(*module);
  REQUIRE(module->getFunction("main")->getEntryBlock().getInstList().size() == 5);
}
