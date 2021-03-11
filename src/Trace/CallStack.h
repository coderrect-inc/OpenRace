#pragma once

#include <llvm/IR/Function.h>

namespace race {

class CallStack {
  std::vector<const llvm::Function *> stack;

 public:
  void push(const llvm::Function *func) { stack.push_back(func); }

  const llvm::Function *pop() {
    auto f = stack.back();
    stack.pop_back();
    return f;
  }
  bool contains(const llvm::Function *func) const { return std::find(stack.begin(), stack.end(), func) != stack.end(); }
};

}  // namespace race