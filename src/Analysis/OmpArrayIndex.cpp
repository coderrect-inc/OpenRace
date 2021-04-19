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

namespace {
// Get list of (non-nested) event regions
// template definition can be in cpp as long as we dont expose the template outside of this file
template <IR::Type Start, IR::Type End>
std::vector<Region> getRegions(const ThreadTrace& thread) {
  std::vector<Region> regions;

  std::optional<EventID> start;
  for (auto const& event : thread.getEvents()) {
    switch (event->getIRInst()->type) {
      case Start: {
        assert(!start.has_value() && "encountered two start types in a row");
        start = event->getID();
        break;
      }
      case End: {
        assert(start.has_value() && "encountered end type without a matching start type");
        regions.emplace_back(start.value(), event->getID());
        start.reset();
        break;
      }
      default:
        // Nothing
        break;
    }
  }

  return regions;
}

auto constexpr getLoopRegions = getRegions<IR::Type::OpenMPForInit, IR::Type::OpenMPForFini>;
auto constexpr getSingleRegions = getRegions<IR::Type::OpenMPSingleStart, IR::Type::OpenMPSingleEnd>;
}  // namespace

const std::vector<OmpArrayIndexAnalysis::LoopRegion>& OmpArrayIndexAnalysis::getOmpForLoops(const ThreadTrace& thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  auto const loopRegions = getLoopRegions(thread);
  ompForLoops[thread.id] = loopRegions;

  return ompForLoops.at(thread.id);
}

bool OmpArrayIndexAnalysis::isInOmpFor(const race::MemAccessEvent* event) {
  auto loopRegions = getOmpForLoops(event->getThread());
  auto const eid = event->getID();
  for (auto const& region : loopRegions) {
    // Look for eid after start event but before end event
    // regions are not nested so as soon as eid is past region start we can return answer
    if (eid > region.start) return eid < region.end;
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

bool OmpArrayIndexAnalysis::inSameTeam(const Event* lhs, const Event* rhs) const {
  // Check both spawn events are OpenMP forks
  auto lhsSpawn = lhs->getThread().spawnEvent;
  if (!lhsSpawn || (lhsSpawn.value()->getIRInst()->type != IR::Type::OpenMPFork)) return false;

  auto rhsSpawn = rhs->getThread().spawnEvent;
  if (!rhsSpawn || (rhsSpawn.value()->getIRInst()->type != IR::Type::OpenMPFork)) return false;

  // Check they are spawned from same thread
  if (lhsSpawn.value()->getThread().id != rhsSpawn.value()->getThread().id) return false;

  // Check that they are adjacent. Only matching omp forks can be adjacent, because they are always followed by joins
  auto const lID = lhsSpawn.value()->getID();
  auto const rID = rhsSpawn.value()->getID();
  auto const diff = (lID > rID) ? (lID - rID) : (rID - lID);
  return diff == 1;
}

bool OmpArrayIndexAnalysis::inSameSingleBlock(const Event* lhs, const Event* rhs) const {
  assert(inSameTeam(lhs, rhs));

  auto const lID = lhs->getID();
  auto const rID = rhs->getID();

  // Omp threads in same team will have identical traces so we only need one set of events
  auto const singleRegions = getSingleRegions(lhs->getThread());
  for (auto const& region : singleRegions) {
    // If region contains one, check if it also contains the other
    if (region.contains(lID)) return region.contains(rID);
    if (region.contains(rID)) return region.contains(lID);

    // End early if end of this region past both events meaning they will not be in any later regions
    if (region.end > rID && region.end > lID) return false;
  }
  return false;
}