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
// Created by peiming on 8/15/19.
//
#ifndef PTA_PROGRAMPOINT_H
#define PTA_PROGRAMPOINT_H

#include <llvm/IR/Function.h>
#include <llvm/IR/Instructions.h>

namespace pta {

template <typename ctx>
class ProgramPoint {
 private:
  const llvm::Instruction *inst;
  const ctx *context;

 public:
  ProgramPoint() = delete;

  ProgramPoint(const llvm::Instruction *inst, const ctx *context) : inst(inst), context(context) {}

  [[nodiscard]] inline const llvm::Instruction *getInstruction() const { return this->inst; }

  [[nodiscard]] inline const ctx *getContext() const { return this->context; }

  [[nodiscard]] inline bool isCallSite() const {
    if (inst == nullptr) {
      return false;
    }
    return llvm::isa<llvm::CallInst>(inst) || llvm::isa<llvm::InvokeInst>(inst);
  }
};

}  // namespace pta
#endif