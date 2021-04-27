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
#include <llvm/Transforms/InstCombine/InstCombine.h>
#include <llvm/Transforms/Scalar/EarlyCSE.h>
#include <llvm/Transforms/Scalar/IndVarSimplify.h>
#include <llvm/Transforms/Scalar/LICM.h>
#include <llvm/Transforms/Scalar/LoopInstSimplify.h>
#include <llvm/Transforms/Scalar/LoopRotation.h>
#include <llvm/Transforms/Scalar/LoopSimplifyCFG.h>
#include <llvm/Transforms/Scalar/MemCpyOptimizer.h>
#include <llvm/Transforms/Scalar/Reassociate.h>
#include <llvm/Transforms/Scalar/SCCP.h>
#include <llvm/Transforms/Scalar/SROA.h>
#include <llvm/Transforms/Scalar/SimpleLoopUnswitch.h>
#include <llvm/Transforms/Scalar/SimplifyCFG.h>

#include "PreProcessing/Passes/CanonicalizeGEPPass.h"
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

  llvm::FunctionPassManager fpm;
  fpm.addPass(llvm::EarlyCSEPass(true));
  fpm.addPass(llvm::SimplifyCFGPass());
  fpm.addPass(llvm::InstCombinePass());
  fpm.addPass(llvm::SimplifyCFGPass());
  fpm.addPass(llvm::ReassociatePass());

  // Loop simplification passes
  llvm::LoopPassManager lpmPre, lpmPost;
  lpmPre.addPass(llvm::LoopInstSimplifyPass());
  lpmPre.addPass(llvm::LoopSimplifyCFGPass());
  lpmPre.addPass(llvm::LoopRotatePass(true));
  lpmPre.addPass(llvm::LICMPass());
  lpmPre.addPass(llvm::SimpleLoopUnswitchPass());

  lpmPost.addPass(llvm::IndVarSimplifyPass());

  fpm.addPass(llvm::createFunctionToLoopPassAdaptor(std::move(lpmPre)));
  fpm.addPass(llvm::SimplifyCFGPass());
  fpm.addPass(llvm::InstCombinePass());
  fpm.addPass(llvm::createFunctionToLoopPassAdaptor(std::move(lpmPost)));

  fpm.addPass(llvm::MemCpyOptPass());
  fpm.addPass(llvm::SCCPPass());
  fpm.addPass(CanonicalizeGEPPass());

  llvm::ModulePassManager mpm;
  mpm.addPass(llvm::createModuleToFunctionPassAdaptor(std::move(fpm)));
  mpm.run(module, mam);

  duplicateOpenMPForks(module);
}