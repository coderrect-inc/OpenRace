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

TEST_CASE("Infinite loop on unhandled openmp", "[regression][omp][!mayfail][.]") {
  // Previously a bug caused infinite loop when an unhandled openmp call was encountered in release mode
  // __kmpc_not_a_real_call should be considdred an penmp call but does not exist, so should be unhandled

  const char *ModuleString = R"(

define void @main() {
  %i = alloca i8
  %1 = call i32 @__kmpc_not_a_real_call(i8* %i)
  ret void
}

declare i32 @__kmpc_not_a_real_call(i8*)
)";

  llvm::LLVMContext Ctx;
  llvm::SMDiagnostic Err;
  auto module = llvm::parseAssemblyString(ModuleString, Err, Ctx);
  if (!module) {
    Err.print("error", llvm::errs());
  }

  race::ProgramTrace program(module.get());
}