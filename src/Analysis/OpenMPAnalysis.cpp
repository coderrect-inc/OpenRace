#include "Analysis/OpenMPAnalysis.h"

#include "IR/IRImpls.h"
#include "LanguageModel/OpenMP.h"
#include "Trace/Event.h"
#include "Trace/ThreadTrace.h"

using namespace race;

namespace {

const llvm::GetElementPtrInst* getArrayAccess(const MemAccessEvent* event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
}

}  // namespace

OpenMPAnalysis::OpenMPAnalysis() { PB.registerFunctionAnalyses(FAM); }

bool OpenMPAnalysis::canIndexOverlap(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2) {
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

// return true if both events belong to the same OpenMP team
// This function is split out so that it can be called from the template functions below (in, inSame, etc)
bool _inSameTeam(const Event* event1, const Event* event2) {
  // Check both spawn events are OpenMP forks
  auto e1Spawn = event1->getThread().spawnSite;
  if (!e1Spawn || (e1Spawn.value()->getIRInst()->type != IR::Type::OpenMPFork)) return false;

  auto e2Spawn = event2->getThread().spawnSite;
  if (!e2Spawn || (e2Spawn.value()->getIRInst()->type != IR::Type::OpenMPFork)) return false;

  // Check they are spawned from same thread
  if (e1Spawn.value()->getThread().id != e2Spawn.value()->getThread().id) return false;

  // Check that they are adjacent. Only matching omp forks can be adjacent, because they are always followed by joins
  auto const eid1 = e1Spawn.value()->getID();
  auto const eid2 = e2Spawn.value()->getID();
  auto const diff = (eid1 > eid2) ? (eid1 - eid2) : (eid2 - eid1);
  return diff == 1;
}

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

auto constexpr _getLoopRegions = getRegions<IR::Type::OpenMPForInit, IR::Type::OpenMPForFini>;

// return true if event is inside of a region marked by Start and End
// see getRegions for more detail on regions
template <IR::Type Start, IR::Type End>
bool in(const race::Event* event) {
  auto const regions = getRegions<Start, End>(event->getThread());
  auto const eid = event->getID();
  for (auto const& region : regions) {
    if (region.contains(eid)) return true;
    // Break early if we pass the eid without finding matching region
    if (region.end > eid) return false;
  }
  return false;
}

// return true if both events are inside of the region marked by Start and End
// see getRegions for more detail on regions
template <IR::Type Start, IR::Type End>
bool inSame(const Event* event1, const Event* event2) {
  assert(_inSameTeam(event1, event2) && "events must be in same omp team");

  auto const eid1 = event1->getID();
  auto const eid2 = event2->getID();

  // Trace events are ordered, so we can save time by finding the region containing the smaller
  // ID first, and then checking if that region also contains the bigger ID.
  auto const minID = (eid1 < eid2) ? eid1 : eid2;
  auto const maxID = (eid1 > eid2) ? eid1 : eid2;

  // Omp threads in same team will have identical traces so we only need one set of events
  auto const regions = getRegions<Start, End>(event1->getThread());
  for (auto const& region : regions) {
    // If region contains one, check if it also contains the other
    if (region.contains(minID)) return region.contains(maxID);

    // End early if end of this region passes smaller event ID
    if (region.end > minID) return false;
  }
  return false;
}

auto const _inSameSingleBlock = inSame<IR::Type::OpenMPSingleStart, IR::Type::OpenMPSingleEnd>;
auto const _inMasterBlock = in<IR::Type::OpenMPMasterStart, IR::Type::OpenMPMasterEnd>;

}  // namespace

const std::vector<OpenMPAnalysis::LoopRegion>& OpenMPAnalysis::getOmpForLoops(const ThreadTrace& thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  auto const loopRegions = _getLoopRegions(thread);
  ompForLoops[thread.id] = loopRegions;

  return ompForLoops.at(thread.id);
}

bool OpenMPAnalysis::inParallelFor(const race::MemAccessEvent* event) {
  auto loopRegions = getOmpForLoops(event->getThread());
  auto const eid = event->getID();
  for (auto const& region : loopRegions) {
    if (region.contains(eid)) return true;
    // Break early if we pass the eid without finding matching region
    if (region.end > eid) return false;
  }

  return false;
}

bool OpenMPAnalysis::isLoopArrayAccess(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2) {
  auto gep1 = getArrayAccess(event1);
  if (!gep1) return false;

  auto gep2 = getArrayAccess(event2);
  if (!gep2) return false;

  return inParallelFor(event1) && inParallelFor(event2);
}

bool OpenMPAnalysis::inSameTeam(const Event* event1, const Event* event2) const { return _inSameTeam(event1, event2); }

bool OpenMPAnalysis::inSameSingleBlock(const Event* event1, const Event* event2) const {
  return _inSameSingleBlock(event1, event2);
}

bool OpenMPAnalysis::bothInMasterBlock(const Event* event1, const Event* event2) const {
  assert(_inSameTeam(event1, event2) && "events must be in same omp team");
  return _inMasterBlock(event1) && _inMasterBlock(event2);
}

std::vector<const llvm::BasicBlock*>& ReduceAnalysis::computeGuardedBlocks(ReduceInst reduce) const {
  assert(reduceBlocks.find(reduce) == reduceBlocks.end() &&
         "Should not call compute if results have already been computed");

  // compute results, cache them, then return them
  auto& blocks = reduceBlocks[reduce];

  /* We are expecting the reduce code produced by clang to follow a specific pattern:
    -------------------------------------------------
      %15 = call i32 @__kmpc_reduce(...)
      switch i32 %15, label %.omp.reduction.default [
        i32 1, label %.omp.reduction.case1
        i32 2, label %.omp.reduction.case2
      ]

    .omp.reduction.case1:
      ...
      call void @__kmpc_end_reduce(...)
      br label %.omp.reduction.default

    .omp.reduction.case2:
      ...
      call void @__kmpc_end_reduce(...)
      br label %.omp.reduction.default

    .omp.reduction.default:
      ...
    -------------------------------------------------

    Our logic makes the following assumptions:
      - There is a switch after the reduce call
      - the default case on the switch is the end fo the reduce code
      - The default case post-dominates the switch

    If these assumptions are true, we can get the blocks that make up
    the reduction code by getting all blocks that are reachable from the switch but
    stop when we reach the default case block (end of the reduce code)
  */

  auto const switchInst = llvm::dyn_cast<llvm::SwitchInst>(reduce->getNextNode());
  assert(switchInst && "instruction after reduce should always be switch");

  // Default dest marks the end of the reduce
  auto const exitBlock = switchInst->getDefaultDest();

  std::vector<const llvm::BasicBlock*> worklist;
  std::set<const llvm::BasicBlock*> visited;
  for (auto const succ : successors(switchInst)) {
    worklist.push_back(succ);
  }

  while (!worklist.empty()) {
    auto block = worklist.back();
    worklist.pop_back();
    visited.insert(block);

    // Stop traversing when we reach end of reduce code
    if (block == exitBlock) continue;

    // add to list of blocks covered by this reduce
    blocks.push_back(block);

    // sanity check that all succ must eventually reach exitBlock
    assert(llvm::succ_size(block) > 0 && "block should have successors");

    // Keep traversing
    for (auto const succ : llvm::successors(block)) {
      if (visited.find(succ) == visited.end()) {
        if (visited.find(succ) == visited.end()) {
          worklist.push_back(succ);
        }
      }
    }
  }

  return blocks;
}

const std::vector<const llvm::BasicBlock*>& ReduceAnalysis::getReduceBlocks(ReduceInst reduce) const {
  // Check cache first
  if (auto it = reduceBlocks.find(reduce); it != reduceBlocks.end()) {
    return it->second;
  }

  // Else compute
  return computeGuardedBlocks(reduce);
}

bool ReduceAnalysis::reduceContains(const llvm::Instruction* reduce, const llvm::Instruction* inst) const {
  auto const& blocks = getReduceBlocks(reduce);
  return std::find(blocks.begin(), blocks.end(), inst->getParent()) != blocks.end();
}

bool OpenMPAnalysis::inSameReduce(const Event* event1, const Event* event2) const {
  // Find reduce events
  for (auto const& event : event1->getThread().getEvents()) {
    // If an event e is inside of a reduce block it must occur *after* the reduce event
    // so, if either event is encountered before finding a reduce that contains both event1 and event2
    // we know that they are not in the same reduce block
    if (event->getID() == event1->getID() || event->getID() == event2->getID()) return false;

    // Once a reduce is found, check that it contains both events (true)
    // or that it contains neither event (keep searching)
    // if it contains one but not the other, return false
    if (event->getIRInst()->type == IR::Type::OpenMPReduce) {
      auto const reduce = event->getInst();
      auto const contains1 = reduceAnalysis.reduceContains(reduce, event1->getInst());
      auto const contains2 = reduceAnalysis.reduceContains(reduce, event2->getInst());
      if (contains1 && contains2) return true;
      if (contains1 || contains2) return false;
    }
  }

  return false;
}