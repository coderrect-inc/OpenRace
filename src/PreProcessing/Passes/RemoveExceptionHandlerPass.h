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

#pragma once

#include <llvm/IR/PassManager.h>
#include <llvm/Pass.h>

class RemoveExceptionHandlerPass : public llvm::PassInfoMixin<RemoveExceptionHandlerPass> {
 public:
  llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);
  static bool isRequired() { return true; }
};

class RemoveExceptionHandlerLegacyPass : public llvm::FunctionPass {
 public:
  static char ID;
  RemoveExceptionHandlerLegacyPass() : llvm::FunctionPass(ID) {}

  bool runOnFunction(llvm::Function &F) override;
  bool doInitialization(llvm::Module &M) override;
};
