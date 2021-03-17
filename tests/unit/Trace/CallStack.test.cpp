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

#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/NoFolder.h>

#include <catch2/catch.hpp>

#include "Trace/CallStack.h"

TEST_CASE("Callstack", "[unit]") {
  llvm::LLVMContext ctx;
  auto module = std::make_unique<llvm::Module>("testmodule", ctx);
  auto func1 = llvm::Function::Create(llvm::FunctionType::get(llvm::Type::getVoidTy(ctx), false),
                                      llvm::Function::ExternalLinkage, "testfunction1", module.get());
  auto func2 = llvm::Function::Create(llvm::FunctionType::get(llvm::Type::getVoidTy(ctx), false),
                                      llvm::Function::ExternalLinkage, "testfunction2", module.get());

  race::CallStack callstack;

  callstack.push(func1);
  REQUIRE(callstack.contains(func1));

  callstack.push(func2);
  REQUIRE(callstack.contains(func1));
  REQUIRE(callstack.contains(func2));

  auto popped1 = callstack.pop();
  REQUIRE(popped1 == func2);
  REQUIRE(callstack.contains(func1));
  REQUIRE(!callstack.contains(func2));

  auto popped2 = callstack.pop();
  REQUIRE(popped2 == func1);
  REQUIRE(!callstack.contains(func1));
  REQUIRE(!callstack.contains(func2));
}