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
// Created by peiming on 1/22/20.
//

#ifndef PTA_LOWERINGMEMCPYPASS_H
#define PTA_LOWERINGMEMCPYPASS_H

#include <llvm/IR/IRBuilder.h>
#include <llvm/Pass.h>

namespace llvm {

template <typename T, unsigned N>
class SmallVector;
class NoFolder;
}  // namespace llvm

class LoweringMemCpyPass : public llvm::ModulePass {
 private:
  llvm::Type *idxType = nullptr;

  void lowerMemCpyForType(llvm::Type *type, llvm::Value *src, llvm::Value *dst,
                          llvm::SmallVector<llvm::Value *, 5> &idx, llvm::IRBuilder<llvm::NoFolder> &builder);

 public:
  static char ID;
  explicit LoweringMemCpyPass() : llvm::ModulePass(ID) {}

  bool runOnModule(llvm::Module &) override;
};

#endif
