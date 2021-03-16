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
// Created by peiming on 3/24/20.
//

#ifndef PTA_POINTERANALYSISPASS_H
#define PTA_POINTERANALYSISPASS_H

#include <bits/unique_ptr.h>
#include <llvm/ADT/Hashing.h>
#include <llvm/ADT/StringRef.h>
#include <llvm/Pass.h>

template <typename Solver>
class PointerAnalysisPass : public llvm::ImmutablePass {
 private:
  std::unique_ptr<Solver> solver;  // owner of the solver

 public:
  static char ID;
  PointerAnalysisPass() : solver(nullptr), llvm::ImmutablePass(ID) {}

  void analyze(llvm::Module *M, llvm::StringRef entry = "cr_main") {
    if (solver.get() != nullptr) {
      if (solver->getLLVMModule() == M && entry.equals(solver->getEntryName())) {
        return;
      }
    }
    // release previous context
    Solver::CT::release();
    solver.reset(new Solver());
    // auto start = std::chrono::steady_clock::now();
    solver->analyze(M, entry);
    // auto end = std::chrono::steady_clock::now();
    // std::chrono::duration<double> elapsed_seconds = end-start;
    // std::chrono::duration_cast<std::chrono::seconds)
    // llvm::outs() << elapsed_seconds.count() << "\n";
  }

  Solver *getPTA() const {
    assert(solver.get() != nullptr && "call analyze() before getting the pta instance");
    return solver.get();
  }

  void release() {
    // release the memory hold by the correct solver
    solver.reset(nullptr);
  }
};

template <typename Solver>
char PointerAnalysisPass<Solver>::ID = 0;

#endif
