#include "Analysis/OmpArrayIndex.h"

#include "Trace/Event.h"
#include "Trace/ThreadTrace.h"

using namespace race;

namespace {

const llvm::GetElementPtrInst* getArrayAccess(const MemAccessEvent* event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
}

}  // namespace

OmpArrayIndexAnalysis::OmpArrayIndexAnalysis() { PB.registerFunctionAnalyses(FAM); }

bool OmpArrayIndexAnalysis::canIndexOverlap(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2) {
  auto gep1 = getArrayAccess(event1);
  if (!gep1) return false;

  auto gep2 = getArrayAccess(event2);
  if (!gep2) return false;

  // should be in same function
  if (gep1->getFunction() != gep2->getFunction()) {
    return false;
  }

  // TODO: get rid of const cast? Also does FAM cache these results (I think it does?)
  auto& scev = FAM.getResult<llvm::ScalarEvolutionAnalysis>(*const_cast<llvm::Function*>(gep1->getFunction()));

  auto scev1 = scev.getSCEV(const_cast<llvm::Value*>(llvm::cast<llvm::Value>(gep1)));
  auto scev2 = scev.getSCEV(const_cast<llvm::Value*>(llvm::cast<llvm::Value>(gep2)));
  auto diff = scev.getMinusSCEV(scev1, scev2);

  if (auto gap = llvm::dyn_cast<llvm::SCEVConstant>(diff)) {
    return !gap->isZero();
  }

  // If unsure report they do alias
  llvm::errs() << "unsure so reporting alias\n";
  return true;
}