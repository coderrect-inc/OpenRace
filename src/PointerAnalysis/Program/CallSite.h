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

//
// Created by peiming on 11/5/19.
//
#pragma once

#include <llvm/IR/Instructions.h>

namespace pta {

// wrapper around llvm::CallSite,
// but resolve constant expression evaluated to a function
class CallSite {
 private:
  const llvm::CallBase* CB;
  static const llvm::Function* resolveTargetFunction(const llvm::Value*);

 public:
  explicit CallSite(const llvm::Instruction* I) : CB(llvm::dyn_cast<llvm::CallBase>(I)) {}

  [[nodiscard]] inline bool isCallOrInvoke() const { return CB != nullptr; }

  [[nodiscard]] inline bool isIndirectCall() const {
    auto V = CB->getCalledOperand();
    if (llvm::isa<llvm::Function>(V->stripPointerCasts())) {
      return false;
    }

    if (CB->isIndirectCall()) {
      return true;
    }

    if (auto C = llvm::dyn_cast<llvm::Constant>(V)) {
      if (C->isNullValue()) {
        return true;
      }
    }

    return false;
  }

  [[nodiscard]] inline const llvm::Value* getCalledValue() const { return CB->getCalledOperand(); }

  [[nodiscard]] inline const llvm::Function* getCalledFunction() const {
    if (this->isIndirectCall()) {
      return nullptr;
    }

    auto targetFunction = CB->getCalledFunction();
    if (targetFunction != nullptr) {
      return targetFunction;
    }

    return resolveTargetFunction(CB->getCalledOperand());
  }

  [[nodiscard]] inline const llvm::Value* getReturnedArgOperand() const { return CB->getReturnedArgOperand(); }

  [[nodiscard]] inline const llvm::Instruction* getInstruction() const { return CB; }

  [[nodiscard]] unsigned int getNumArgOperands() const { return CB->getNumArgOperands(); }

  const llvm::Value* getArgOperand(unsigned int i) const { return CB->getArgOperand(i); }

  inline auto args() const -> decltype(CB->args()) { return CB->args(); }

  [[nodiscard]] inline auto arg_begin() const -> decltype(CB->arg_begin()) { return CB->arg_begin(); }

  [[nodiscard]] inline auto arg_end() const -> decltype(CB->arg_end()) { return CB->arg_end(); }

  inline llvm::Type* getType() const { return CB->getType(); };
};

}  // namespace pta
