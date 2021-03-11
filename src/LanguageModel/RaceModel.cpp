#include "LanguageModel/RaceModel.h"

#include "IR/InfoImpls.h"
#include "LanguageModel/OpenMP.h"

using namespace pta;

RaceModel::RaceModel(llvm::Module *M, llvm::StringRef entry) : Super(M, entry) {
  ctx::setOriginRules(
      [&](const ctx *context, const llvm::Instruction *I) -> bool { return this->isInvokingAnOrigin(context, I); });
}

InterceptResult RaceModel::interceptFunction(const ctx *callerCtx, const ctx *calleeCtx, const llvm::Function *F,
                                             const llvm::Instruction *callsite) {
  auto funcName = F->getName();
  if (OpenMPModel::isFork(funcName)) {
    race::OpenMPForkInfo fork(llvm::cast<CallBase>(callsite));
    return {fork.getThreadEntry(), InterceptResult::Option::EXPAND_BODY};
  }

  return {F, InterceptResult::Option::EXPAND_BODY};
}

bool RaceModel::interceptCallSite(const CtxFunction<ctx> *caller, const CtxFunction<ctx> *callee,
                                  const llvm::Function *originalTarget, const llvm::Instruction *callsite) {
  assert(originalTarget != nullptr);
  assert(CT::contextEvolve(caller->getContext(), callsite) == callee->getContext());

  auto const call = llvm::dyn_cast<llvm::CallBase>(callsite);
  if (!call || !call->getFunction() || !call->getFunction()->hasName()) return false;

  auto const funcName = call->getFunction()->getName();

  if (OpenMPModel::isFork(funcName)) {
    // omp fork spawns thread that executes outline:
    //     omp_fork_call(a, b, outlined, n, n+1, n+2, ...)
    //     outlined(x, y, m, m+1, m+2, ...)
    // non global shared args are passed as pointers n, n+1, n+2, ...
    // and received by outlined func as m, m+1, m+2, ...

    // Need to link 3rd arg of caller (n) to 2nd arg of callee (m)
    // and 4th arg of caller (n+1) to 3rd arg of callee (m+1)
    // and so on

    auto calleeArg = callee->getFunction()->arg_begin();
    auto callerArg = caller->getFunction()->arg_begin();
    std::advance(calleeArg, 2);
    std::advance(callerArg, 3);
    for (auto const end = callee->getFunction()->arg_end(); calleeArg != end; ++calleeArg, ++callerArg) {
      // Only link args with pointer type
      if (calleeArg->getType()->isPointerTy()) {
        PtrNode *formal = this->getPtrNode(callee->getContext(), calleeArg);
        PtrNode *actual = this->getPtrNode(caller->getContext(), callerArg);
        this->consGraph->addConstraints(actual, formal, Constraints::copy);
      }
    }

    return true;
  }

  return false;
}