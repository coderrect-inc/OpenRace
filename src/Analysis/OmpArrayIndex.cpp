#include "Analysis/OmpArrayIndex.h"

#include "LanguageModel/OpenMP.h"
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

const std::vector<OmpArrayIndexAnalysis::LoopRegion>& OmpArrayIndexAnalysis::getOmpForLoops(const ThreadTrace& thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  auto& loopRegions = ompForLoops[thread.id];
  std::optional<EventID> start;

  for (auto const& event : thread.getEvents()) {
    switch (event->getIRInst()->type) {
      case IR::Type::OpenMPForInit: {
        assert(!start.has_value() && "encountered two omp for inits in a row");
        start = event->getID();
        break;
      }
      case IR::Type::OpenMPForFini: {
        assert(start.has_value() && "encountered omp for fini without a matching init");
        loopRegions.emplace_back(start.value(), event->getID());
        start.reset();
        break;
      }
      default:
        // Do Nothing
        break;
    }
  }

  return loopRegions;
}

bool OmpArrayIndexAnalysis::isInOmpFor(const race::MemAccessEvent* event) {
  auto loopRegions = getOmpForLoops(event->getThread());
  auto const eid = event->getID();
  for (auto const& region : loopRegions) {
    if (eid > region.second) {
      continue;
    }
    return eid > region.first;
  }

  return false;
}

bool OmpArrayIndexAnalysis::isOmpLoopArrayAccess(const race::MemAccessEvent* event1,
                                                 const race::MemAccessEvent* event2) {
  auto gep1 = getArrayAccess(event1);
  if (!gep1) return false;

  auto gep2 = getArrayAccess(event2);
  if (!gep2) return false;

  return isInOmpFor(event1) && isInOmpFor(event2);
}