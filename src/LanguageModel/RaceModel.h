#pragma once

#include "PointerAnalysis/Context/KOrigin.h"
#include "PointerAnalysis/Models/LanguageModel/DefaultLangModel/DefaultLangModel.h"
#include "PointerAnalysis/Models/MemoryModel/CppMemModel/CppMemModel.h"
#include "PointerAnalysis/Solver/PartialUpdateSolver.h"

namespace pta {
using ctx = KOrigin<3>;
using MemModel = cpp::CppMemModel<ctx>;
using CallGraphNodeTy = CallGraphNode<ctx>;
using CT = CtxTrait<ctx>;
using GT = llvm::GraphTraits<const CallGraph<ctx>>;
using PtsTy = BitVectorPTS;

class RaceModel : public LangModelBase<ctx, MemModel, PtsTy, RaceModel> {
  using Super = LangModelBase<ctx, MemModel, PtsTy, RaceModel>;

  bool isInvokingAnOrigin(const ctx *prevCtx, const llvm::Instruction *I);

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