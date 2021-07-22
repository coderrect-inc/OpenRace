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
#include "PointerAnalysis/Context/HybridCtx.h"
#include "PointerAnalysis/Context/KCallSite.h"
#include "PointerAnalysis/Context/KOrigin.h"
#include "PointerAnalysis/Models/LanguageModel/DefaultLangModel/DefaultLangModel.h"
#include "PointerAnalysis/Models/MemoryModel/CppMemModel/CppMemModel.h"
#include "PointerAnalysis/Models/MemoryModel/DefaultHeapModel.h"
#include "PointerAnalysis/Solver/PartialUpdateSolver.h"

namespace pta {
using originCtx = KOrigin<3>;
using ctx = HybridCtx<originCtx, KCallSite<1>>;
using MemModel = cpp::CppMemModel<ctx>;
using CallGraphNodeTy = CallGraphNode<ctx>;
using CT = CtxTrait<ctx>;
using GT = llvm::GraphTraits<const CallGraph<ctx>>;
using PtsTy = BitVectorPTS;

class RaceModel : public LangModelBase<ctx, MemModel, PtsTy, RaceModel> {
 private:
  DefaultHeapModel heapModel;

  using Super = LangModelBase<ctx, MemModel, PtsTy, RaceModel>;

  bool isInvokingAnOrigin(const originCtx *prevCtx, const llvm::Instruction *I);

 public:
  // determine whether the resolved indirect call is compatible
  bool isCompatible(const llvm::Instruction *callsite, const llvm::Function *target);

  // modelling the heap allocation
  void interceptHeapAllocSite(const CtxFunction<ctx> *caller, const CtxFunction<ctx> *callee,
                              const llvm::Instruction *callsite);

  // determine whether the function need to be modelled
  InterceptResult interceptFunction(const ctx *callerCtx, const ctx *calleeCtx, const llvm::Function *F,
                                    const llvm::Instruction *callsite);

  // modelling a callsite
  bool interceptCallSite(const CtxFunction<ctx> *caller, const CtxFunction<ctx> *callee,
                         const llvm::Function *originalTarget, const llvm::Instruction *callsite);

  bool isHeapAllocAPI(const llvm::Function *F, const llvm::Instruction *callsite = nullptr);

  RaceModel(llvm::Module *M, llvm::StringRef entry);
};

template <>
struct LangModelTrait<RaceModel> : public LangModelTrait<LangModelBase<ctx, MemModel, PtsTy, RaceModel>> {};

using LangModel = RaceModel;
using PTA = PartialUpdateSolver<LangModel>;
using ObjTy = PTA::ObjTy;

}  // namespace pta