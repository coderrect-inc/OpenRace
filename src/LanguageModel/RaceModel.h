#pragma once

#include "PointerAnalysis/Context/KOrigin.h"
#include "PointerAnalysis/Models/LanguageModel/DefaultLangModel/DefaultLangModel.h"
#include "PointerAnalysis/Models/MemoryModel/CppMemModel/CppMemModel.h"
#include "PointerAnalysis/Solver/PartialUpdateSolver.h"

namespace pta {
using ctx = KOrigin<3>;
using MemModel = cpp::CppMemModel<ctx>;
using LangModel = DefaultLangModel<ctx, MemModel>;
using PTA = PartialUpdateSolver<LangModel>;
using ObjTy = PTA::ObjTy;
using CallGraphNodeTy = CallGraphNode<ctx>;
using CT = CtxTrait<ctx>;
using GT = llvm::GraphTraits<const CallGraph<ctx>>;
using PtsTy = BitVectorPTS;

class RaceModel : public LangModelBase<ctx, MemModel, PtsTy, RaceModel> {
  using Super = LangModelBase<ctx, MemModel, PtsTy, RaceModel>;

  bool isInvokingAnOrigin(const ctx *prevCtx, const llvm::Instruction *I);

 public:
  bool interceptCallSite(const CtxFunction<ctx> *caller, const CtxFunction<ctx> *callee,
                         const llvm::Function *originalTarget, const llvm::Instruction *callsite);

  InterceptResult interceptFunction(const ctx *callerCtx, const ctx *calleeCtx, const llvm::Function *F,
                                    const llvm::Instruction *callsite);

  RaceModel(llvm::Module *M, llvm::StringRef entry);
};

}  // namespace pta