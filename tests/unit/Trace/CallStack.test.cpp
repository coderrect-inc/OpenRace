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