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

// TO canoicalize GEP (getelementptr) instruction (required only by Field-Sensitive Pointer
// Analysis)

// 1st, turn
// %v = getelementptr (getelementptr idx1 ...) idx0 ...
// into
// %tmp = getelementptr idx1 ...
// %v = getelementptr %tmp, idx0 ...

// 2nd, split getelementptr that uses variable to index
// e.g.,
// %gep = getelementptr %base, 0, 0, %v1, 2, 3, %v2
// will be split into
// %gep1 = getelementptr %base, 0, 0;
// %gep2 = getelementptr %gep1, 0, %v1;
// %gep3 = getelementptr %gep2, 0, 2, 3;
// %gep4 = getelementptr %gep3, 0, %v2;

// 3rd, for every uses of inline asm
// change it to undef value

class CanonicalizeGEPPass : public llvm::PassInfoMixin<CanonicalizeGEPPass> {
 public:
  llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);
  static bool isRequired() { return true; }
};

// Only used by old pointer analysis test
class LegacyCanonicalizeGEPPass : public llvm::FunctionPass {
 public:
  static char ID;
  explicit LegacyCanonicalizeGEPPass() : llvm::FunctionPass(ID) {}

  bool runOnFunction(llvm::Function &F) override;
};
