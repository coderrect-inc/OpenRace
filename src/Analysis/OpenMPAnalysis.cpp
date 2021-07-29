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

#include "Analysis/OpenMPAnalysis.h"

#include "LanguageModel/OpenMP.h"
#include "Trace/Event.h"
#include "Trace/ProgramTrace.h"
#include "Trace/ThreadTrace.h"

using namespace race;
using namespace llvm;

OpenMPAnalysis::OpenMPAnalysis(const ProgramTrace &program)
    : getThreadNumAnalysis(program), lastprivate(program.getModule()), arrayAnalysis() {
  PB.registerFunctionAnalyses(FAM);
}

namespace {

bool regionEndLessThan(const race::Region &region1, const race::Region &region2) { return region1.end < region2.end; }

// recursively find the spawn site of the closest/innermost OpenMPFork for this event
std::optional<const ForkEvent *> getRootSpawnSite(const Event *event) {
  auto eSpawn = event->getThread().spawnSite;
  if (!eSpawn) return std::nullopt;
  if (eSpawn.value()->getIRInst()->type == IR::Type::OpenMPTaskFork) {
    // this works when the event is from omp task fork: we need the parent spawn site here,
    // and the code may have nested tasks
    while (eSpawn.value()->getIRInst()->type != IR::Type::OpenMPFork) {
      auto parentSpawn = eSpawn.value()->getThread().spawnSite;
      if (!parentSpawn) return std::nullopt;
      eSpawn = parentSpawn;
    }
  }
  return eSpawn;
}

// return true if both events belong to the same OpenMP team (e.g., under the same #pragma omp parallel)
// This function is split out so that it can be called from the template functions below (in, inSame, etc)
bool _fromSameParallelRegion(const Event *event1, const Event *event2) {
  // Check both spawn events are OpenMP forks
  auto e1Spawn = getRootSpawnSite(event1);
  if (!e1Spawn || !e1Spawn.value()) return false;

  auto e2Spawn = getRootSpawnSite(event2);
  if (!e2Spawn || !e2Spawn.value()) return false;

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
std::vector<Region> getRegions(const ThreadTrace &thread) {
  std::vector<Region> regions;

  std::optional<EventID> start;
  for (auto const &event : thread.getEvents()) {
    switch (event->getIRType()) {
      case Start: {
        assert(!start.has_value() && "encountered two start types in a row");
        start = event->getID();
        break;
      }
      case End: {
        assert(start.has_value() && "encountered end type without a matching start type");
        regions.emplace_back(start.value(), event->getID(), thread);
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

// Get the innermost region that contains event
template <IR::Type Start, IR::Type End>
std::optional<Region> getContainingRegion(const Event *event) {
  if (!event) return std::nullopt;

  auto const &thread = event->getThread();
  auto const regions = getRegions<Start, End>(thread);

  // If we are on thread spawned within parallel region,
  // we can also check to see if this thread was spawned within a region on the parent thread:
  // This ONLY valid when the event is from threads spawned by OpenMPTask (or maybe also OpenMPForkTeams later if we
  // also need such checks). For other cases (e.g., events from threads spawned by OpenMPFork), if there exists such a
  // region, the region must be in the same thread, not parent thread. If we remove the check, we will get wrong/null
  // regions for the other cases.
  if (regions.empty()) {
    auto parent = thread.spawnSite.value();
    if (parent->getIRInst()->type == IR::Type::OpenMPTaskFork) {
      return getContainingRegion<Start, End>(parent);
    }
    return std::nullopt;
  }

  for (auto const &region : regions) {
    if (region.contains(event->getID())) {
      return region;
    }
  }

  return std::nullopt;
}

// return true if both events are inside of the region marked by Start and End
// see getRegions for more detail on regions
// (event1 is always from Thread1, i.e., the master thread, which has the full thread trace with all IRs)
template <IR::Type Start, IR::Type End>
bool inSame(const Event *event1, const Event *event2) {
  assert(_fromSameParallelRegion(event1, event2) && "events must be from same omp parallel region");

  // get omp region contains the event
  auto const region1 = getContainingRegion<Start, End>(event1);
  auto const region2 = getContainingRegion<Start, End>(event2);

  if (!region1 || !region2) {
    return false;
  }

  // Omp threads in same team may or may not have identical traces so we see them separately
  if (region1.value().sameAs(region2.value())) {
    return true;
  }

  return false;
}

auto const _inSameSingleBlock = inSame<IR::Type::OpenMPSingleStart, IR::Type::OpenMPSingleEnd>;

}  // namespace

const std::vector<OpenMPAnalysis::LoopRegion> &OpenMPAnalysis::getOmpForLoops(const ThreadTrace &thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  ompForLoops[thread.id] = _getLoopRegions(thread);

  return ompForLoops.at(thread.id);
}

bool OpenMPAnalysis::inParallelFor(const race::MemAccessEvent *event) {
  auto loopRegions = getOmpForLoops(event->getThread());
  auto const eid = event->getID();

  auto it =
      lower_bound(loopRegions.begin(), loopRegions.end(), Region(eid, eid, event->getThread()), regionEndLessThan);
  if (it != loopRegions.end()) {
    if (it->contains(eid)) return true;
  }

  return false;
}

bool OpenMPAnalysis::isNonOverlappingLoopAccess(const MemAccessEvent *event1, const MemAccessEvent *event2) {
  return arrayAnalysis.isLoopArrayAccess(event1, event2) && !arrayAnalysis.canIndexOverlap(event1, event2);
}

bool OpenMPAnalysis::fromSameParallelRegion(const Event *event1, const Event *event2) const {
  return _fromSameParallelRegion(event1, event2);
}

bool OpenMPAnalysis::inSameSingleBlock(const Event *event1, const Event *event2) const {
  return _inSameSingleBlock(event1, event2);
}

std::vector<const llvm::BasicBlock *> &ReduceAnalysis::computeGuardedBlocks(ReduceInst reduce) const {
  assert(reduceBlocks.find(reduce) == reduceBlocks.end() &&
         "Should not call compute if results have already been computed");

  // compute results, cache them, then return them
  auto &blocks = reduceBlocks[reduce];

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

  std::vector<const llvm::BasicBlock *> worklist;
  std::set<const llvm::BasicBlock *> visited;
  auto const notVisited = [&visited](const llvm::BasicBlock *block) { return visited.find(block) == visited.end(); };

  // Add switch successors to worklist
  std::copy(succ_begin(switchInst), succ_end(switchInst), std::back_inserter(worklist));

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
    std::copy_if(succ_begin(block), succ_end(block), std::back_inserter(worklist),
                 [&visited](auto succBlock) { return visited.find(succBlock) == visited.end(); });
  }

  return blocks;
}

const std::vector<const llvm::BasicBlock *> &ReduceAnalysis::getReduceBlocks(ReduceInst reduce) const {
  // Check cache first
  // cppcheck-suppress stlIfFind
  if (auto it = reduceBlocks.find(reduce); it != reduceBlocks.end()) {
    return it->second;
  }

  // Else compute
  return computeGuardedBlocks(reduce);
}

bool ReduceAnalysis::reduceContains(const llvm::Instruction *reduce, const llvm::Instruction *inst) const {
  auto const &blocks = getReduceBlocks(reduce);
  return std::find(blocks.begin(), blocks.end(), inst->getParent()) != blocks.end();
}

bool OpenMPAnalysis::inSameReduce(const Event *event1, const Event *event2) const {
  // Find reduce events
  for (auto const &event : event1->getThread().getEvents()) {
    // If an event e is inside of a reduce block it must occur *after* the reduce event
    // so, if either event is encountered before finding a reduce that contains event1
    // we know that they are not in the same reduce block
    // since event2 might in a thread that removes single/master events (since we always traverse
    // them in a small thread ID and here the TID of event1 <= TID of event2), so event2 can
    // have smaller eventID than event1's
    if (event->getID() == event1->getID()) return false;

    // Once a reduce is found, check that it contains both events (true)
    // or that it contains neither event (keep searching)
    // if it contains one but not the other, return false
    if (event->getIRType() == IR::Type::OpenMPReduce) {
      auto const reduce = event->getInst();
      auto const contains1 = reduceAnalysis.reduceContains(reduce, event1->getInst());
      auto const contains2 = reduceAnalysis.reduceContains(reduce, event2->getInst());
      if (contains1 && contains2) return true;
      if (contains1 || contains2) return false;
    }
  }

  return false;
}

#include "IR/IR.h"
#include "Trace/ProgramTrace.h"
#include "Trace/ThreadTrace.h"

namespace {

// Get any icmp_eq insts that use this value and compare against a constant integer
// return list of pairs (cmp, c) where cmp is the cmpInst and c is the constant value compared against
std::vector<std::pair<const llvm::CmpInst *, uint64_t>> getConstCmpEqInsts(const llvm::Value *value) {
  std::vector<std::pair<const llvm::CmpInst *, uint64_t>> result;

  std::vector<const llvm::User *> worklist;

  for (auto user : value->users()) {
    worklist.push_back(user);
  }

  while (!worklist.empty()) {
    auto const user = worklist.back();
    worklist.pop_back();

    // follow loads
    if (auto load = llvm::dyn_cast<llvm::LoadInst>(user)) {
      std::copy(load->users().begin(), load->users().end(), std::back_inserter(worklist));
      continue;
    }

    if (auto cmp = llvm::dyn_cast<llvm::CmpInst>(user)) {
      if (cmp->getPredicate() != llvm::CmpInst::Predicate::ICMP_EQ) continue;

      if (auto val = llvm::dyn_cast<llvm::ConstantInt>(cmp->getOperand(1))) {
        result.emplace_back(cmp, val->getZExtValue());
        continue;
      }

      if (auto val = llvm::dyn_cast<llvm::ConstantInt>(cmp->getOperand(0))) {
        result.emplace_back(cmp, val->getZExtValue());
        continue;
      }
    }
  }

  return result;
}

// Get list of blocks guarded by one case of this branch.
// branch arg decides if checking for blocks guarded by true or false branch
// Start by assuming the target block is guarded
// Iterate from the target block until we find a block that has an unguarded predecessor
// Cannot handle loops
std::set<const llvm::BasicBlock *> getGuardedBlocks(const llvm::BranchInst *branchInst, bool branch = true) {
  // This branch should use a cmp eq instruction
  // Otherwise the true/false blocks below may be wrong
  assert(llvm::isa<llvm::CmpInst>(branchInst->getOperand(0)));
  assert(llvm::cast<llvm::CmpInst>(branchInst->getOperand(0))->getPredicate() == llvm::CmpInst::Predicate::ICMP_EQ);

  auto trueBlock = llvm::cast<llvm::BasicBlock>(branchInst->getOperand(2));
  auto falseBlock = llvm::cast<llvm::BasicBlock>(branchInst->getOperand(1));

  auto const targetBlock = (branch) ? trueBlock : falseBlock;

  // This will be the returned result
  std::set<const llvm::BasicBlock *> guardedBlocks;
  guardedBlocks.insert(targetBlock);

  std::set<const llvm::BasicBlock *> visited;
  std::vector<const llvm::BasicBlock *> worklist;

  visited.insert(targetBlock);
  std::copy(succ_begin(targetBlock), succ_end(targetBlock), std::back_inserter(worklist));

  do {
    auto const currentBlock = worklist.back();
    worklist.pop_back();

    auto hasUnguardedPred = std::any_of(
        pred_begin(currentBlock), pred_end(currentBlock),
        [&guardedBlocks](const llvm::BasicBlock *pred) { return guardedBlocks.find(pred) == guardedBlocks.end(); });

    if (hasUnguardedPred) continue;
    visited.insert(currentBlock);

    guardedBlocks.insert(currentBlock);

    for (auto next : successors(currentBlock)) {
      if (visited.find(next) == visited.end()) {
        worklist.push_back(next);
      }
    }

  } while (!worklist.empty());

  return guardedBlocks;
}

}  // namespace

void SimpleGetThreadNumAnalysis::computeGuardedBlocks(const Event *event) {
  assert(event->getIRType() == IR::Type::OpenMPGetThreadNum);
  auto const call = event->getInst();
  // Check if we have already computed guardedBlocks for this omp_get_thread_num call
  if (visited.find(call) != visited.end()) return;

  // Find all cmpInsts that compare the omp_get_thread_num call to a const value
  auto const cmpInsts = getConstCmpEqInsts(call);
  for (auto const &pair : cmpInsts) {
    auto const cmpInst = pair.first;
    auto const tid = pair.second;

    // Find all branches that use the result of the cmp inst
    for (auto user : cmpInst->users()) {
      auto branch = llvm::dyn_cast<llvm::BranchInst>(user);
      if (branch == nullptr) continue;

      // Find all the blocks guarded by this branch
      auto guarded = getGuardedBlocks(branch);

      // insert the blocks into the guardedBlocks map
      for (auto const block : guarded) {
        guardedBlocks[block] = tid;
      }
    }
  }

  // Mark this get_thread_num call as visited
  visited.insert(call);
}

std::optional<u_int64_t> SimpleGetThreadNumAnalysis::getGuardedBy(const Event *event) const {
  // check if this event's block is guarded
  auto guarded = guardedBlocks.find(event->getInst()->getParent());
  if (guarded == guardedBlocks.end()) return std::nullopt;
  return guarded->second;
}

SimpleGetThreadNumAnalysis::SimpleGetThreadNumAnalysis(const ProgramTrace &program) {
  for (auto const &thread : program.getThreads()) {
    for (auto const &event : thread->getEvents()) {
      // Only care about get_thread_num calls
      if (event->getIRType() != IR::Type::OpenMPGetThreadNum) continue;
      computeGuardedBlocks(event.get());
    }
  }
}

bool SimpleGetThreadNumAnalysis::guardedBySameTid(const Event *event1, const Event *event2) const {
  auto tid1 = getGuardedBy(event1);
  if (!tid1.has_value()) return false;

  auto tid2 = getGuardedBy(event2);
  if (!tid2.has_value()) return false;

  return tid1.value() == tid2.value();
}

std::set<const llvm::BasicBlock *> LastprivateAnalysis::computeLastprivateBlocks(const llvm::Function &func) {
  /* kmpc_static_for_init takes a pointer to an "isLast" flag
     if the parallel loop has a last private member, the flag will be set for the last thread
     and that thread will execute the lastprivate code.

     This function looks for omp loops, finds the last private flag, and looks for blocks guarded by the flag */
  std::set<const llvm::BasicBlock *> blocks;

  for (auto const &block : func.getBasicBlockList()) {
    for (auto const &inst : block.getInstList()) {
      // Find calls to isForStaticInit
      auto call = llvm::dyn_cast<llvm::CallBase>(&inst);
      if (!call || !call->getCalledFunction() || !call->getCalledFunction()->hasName()) continue;
      auto const calledName = call->getCalledFunction()->getName();
      if (!OpenMPModel::isForStaticInit(calledName)) continue;

      // Get the "isLast" flag
      auto isLastFlag = call->getArgOperand(3);
      // Find cmp instructions that use the flag
      // clang should always generate cmp_eq instructions for the lastprivate check after a loop
      auto const cmps = getConstCmpEqInsts(isLastFlag);
      for (auto cmp : cmps) {
        // Only care about cmp instructions checking that the flag is "true" or non-zero
        if (cmp.second != 0) continue;

        // Find branches using result of the cmp
        for (auto user : cmp.first->users()) {
          auto branch = llvm::dyn_cast<llvm::BranchInst>(user);
          // find blocks in the false path
          // the cmp is equal to if(isLast == 0)
          // and we care about the path where the flag is non-zero or "true"
          auto const guarded = getGuardedBlocks(branch, false);
          blocks.insert(guarded.begin(), guarded.end());
        }
      }
    }
  }

  return blocks;
}

LastprivateAnalysis::LastprivateAnalysis(const llvm::Module &module) {
  for (auto const &func : module.getFunctionList()) {
    auto const blocks = computeLastprivateBlocks(func);
    lastprivateBlocks.insert(blocks.begin(), blocks.end());
  }
}

bool OpenMPAnalysis::insideCompatibleSections(const Event *event1, const Event *event2) {
  // assertion: threads of the same team are identical
  // assertion: we aren't given events from threads in different parallel sections blocks because those would be
  //            different teams

  // observation: we only enter a section if any event in the queue passes through a section case
  // assertion: this vector is distinct but ordered because a given section isn't a descendent of another section
  std::vector<const Event *> sections;
  auto lastID = std::max(event1->getID(), event2->getID());
  for (auto &event : event1->getThread().getEvents()) {
    auto block = event->getInst()->getParent();
    if ((sections.empty() || block != sections.back()->getInst()->getParent()) && block->hasName() &&
        block->getName().startswith(".omp.sections.case")) {  // add for body check
      sections.push_back(event.get());
    }
    // this is our end event; anything beyond this is not worth capturing
    if (event->getID() > lastID) {
      break;
    }
  }

  if (sections.empty()) {
    return false;
  }

  std::vector<const Event *> events;
  events.reserve(event1->getThread().getEvents().size());
  std::transform(event1->getThread().getEvents().begin(), event1->getThread().getEvents().end(),
                 std::back_inserter(events), [&](const auto &event) { return event.get(); });

  const Event *ev1sec = nullptr;
  const Event *ev2sec = nullptr;

  auto currSecEv = sections.begin();
  for (auto currEvent = std::find(events.begin(), events.end(), *currSecEv); (*currEvent)->getID() <= lastID;
       ++currSecEv) {
    do {
      if (event1->getID() == (*currEvent)->getID()) {
        ev1sec = *currSecEv;
      }
      if (event2->getID() == (*currEvent)->getID()) {
        ev2sec = *currSecEv;
      }

      if (ev1sec != nullptr && ev2sec != nullptr) {
        if (ev1sec == ev2sec) {
          return true;
        } else {
          return false;
        }
      }
      ++currEvent;
    } while (std::find(sections.begin(), sections.end(), *currEvent) == sections.end());
  }

  return false;
}
