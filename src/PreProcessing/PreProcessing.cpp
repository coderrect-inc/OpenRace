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

#include "PreProcessing/PreProcessing.h"

#include <llvm/Passes/PassBuilder.h>

#include "PreProcessing/Passes/DuplicateOpenMPForks.h"

void preprocess(llvm::Module &module) {
  llvm::PassBuilder pb;

  llvm::LoopAnalysisManager lam;
  llvm::FunctionAnalysisManager fam;
  llvm::CGSCCAnalysisManager cgam;
  llvm::ModuleAnalysisManager mam;

  pb.registerModuleAnalyses(mam);
  pb.registerCGSCCAnalyses(cgam);
  pb.registerFunctionAnalyses(fam);
  pb.registerLoopAnalyses(lam);
  pb.crossRegisterProxies(lam, fam, cgam, mam);

  auto fpm = pb.buildFunctionSimplificationPipeline(llvm::PassBuilder::O1, llvm::PassBuilder::ThinLTOPhase::None);
  auto mpm = pb.buildModuleSimplificationPipeline(llvm::PassBuilder::O1, llvm::PassBuilder::ThinLTOPhase::None);
  mpm.addPass(llvm::createModuleToFunctionPassAdaptor(std::move(fpm)));

  mpm.run(module, mam);

  duplicateOpenMPForks(module);
}