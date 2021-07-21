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

#include "Trace/ThreadTrace.h"

#include "EventImpl.h"
#include "IR/IRImpls.h"
#include "Trace/CallStack.h"
#include "Trace/ProgramTrace.h"

using namespace race;

namespace {

// all tasks in state.unjoinedTasks should be joined when any of the following occur:
// 1. a barrier is encountered (from anywhere, not just after single)
// 2. taskwait is encountered (TODO)
// 3. the end of the parallel region is encountered.
void insertTaskJoins(std::vector<std::unique_ptr<const Event>> &events, TraceBuildState &state,
                     std::shared_ptr<struct EventInfo> &einfo) {
  for (auto const &task : state.openmp.unjoinedTasks) {
    auto taskJoin = std::make_shared<OpenMPTaskJoin>(task.forkIR);
    std::shared_ptr<const JoinIR> join(taskJoin, llvm::cast<JoinIR>(taskJoin.get()));
    events.push_back(std::make_unique<const JoinEventImpl>(join, einfo, events.size(), task.forkEvent));
  }
  state.openmp.unjoinedTasks.clear();
}

// return the spawning omp fork if this is an omp thread, else return nullptr
const OpenMPFork *isOpenMPThread(const ThreadTrace &thread) {
  if (!thread.spawnSite) return nullptr;
  return llvm::dyn_cast<OpenMPFork>(thread.spawnSite.value()->getIRInst());
}

// return true if thread is an OpenMP master thread
bool isOpenMPMasterThread(const ThreadTrace &thread) {
  auto const ompThread = isOpenMPThread(thread);
  if (!ompThread) return false;
  return ompThread->isForkingMaster();
}

// handle omp single/master events
// return true if the current instruction should be skipped
bool handleOMPEvents(const CallIR *callIR, TraceBuildState &state, bool isMasterThread) {
  switch (callIR->type) {
    // OpenMP master is modeled by only traversing the master region on master omp threads
    // skip the region on non-master threads
    case IR::Type::OpenMPMasterStart: {
      if (!isMasterThread) {
        // skip on non-master threads
        auto end = state.openmp.getMasterRegionEnd(callIR->getInst());
        assert(end && "encountered master start without end");
        state.skipUntil = end;
        return true;
      }

      // Save the beggining of the master region
      state.openmp.markMasterStart(callIR->getInst());
      return false;
    }
    case IR::Type::OpenMPMasterEnd: {
      if (isMasterThread) {
        // Save the end of the master region
        state.openmp.markMasterEnd(callIR->getInst());
      }
      return false;
    }
    // OpenMP single is modeled by placing events on both threads and filtering impossible races during analysis phase
    // However we need to ensure tasks spawned inside a single region are only created one
    // To do this we need to track when we are in a single region
    case IR::Type::OpenMPSingleStart: {
      state.openmp.inSingle = true;
      return false;
    }
    case IR::Type::OpenMPSingleEnd: {
      state.openmp.inSingle = false;
      return false;
    }
    default: {
      // Do Nothing
    }
  }
  return false;
}

// return true if the current instruction should be skipped
bool shouldSkipIR(const std::shared_ptr<const IR> &ir, TraceBuildState &state) {
  if (!state.skipUntil) return false;

  // Skip until we reach the target instruction
  if (ir->getInst() != state.skipUntil) return true;

  // Else we reached the target instruction
  // reset skipUntil ptr and continue traversing
  state.skipUntil = nullptr;
  return false;
}

bool isOpenMPTeamSpecific(const IR *ir) {
  auto const type = ir->type;
  return type == IR::Type::OpenMPBarrier || type == IR::Type::OpenMPCriticalStart ||
         type == IR::Type::OpenMPCriticalEnd || type == IR::Type::OpenMPSetLock || type == IR::Type::OpenMPUnsetLock;
}

// Called recursively to build list of events and thread traces
// node      - the current callgraph node to traverse
// thread    - the thread trace being built
// callstack - callstack used to prevent recursion
// pta       - pointer analysis used to find next nodes in call graph
// events    - list of events to append newly created events to
// threads   - list of threads to append and newly created threads to
// state     - used to track data across the construction of the entire program trace
void traverseCallNode(const pta::CallGraphNodeTy *node, const ThreadTrace &thread, CallStack &callstack,
                      const pta::PTA &pta, std::vector<std::unique_ptr<const Event>> &events,
                      std::vector<std::unique_ptr<ThreadTrace>> &threads, TraceBuildState &state) {
  auto func = node->getTargetFun()->getFunction();
  if (callstack.contains(func)) {
    // prevent recursion
    return;
  }

  callstack.push(func);

  if (DEBUG_PTA) {
    llvm::outs() << "Generating Func Sum: TID: " << thread.id << " Func: " << func->getName() << "\n";
  }

  auto const &summary = *state.builder.getFunctionSummary(func);

  auto const context = node->getContext();
  auto einfo = std::make_shared<EventInfo>(thread, context);

  for (auto const &ir : summary) {
    if (shouldSkipIR(ir, state)) {
      continue;
    }
    // Skip OpenMP synchronizations that have no affect across teams
    // TODO: How should single/master be modeled?
    if (state.openmp.inTeamsRegion() && isOpenMPTeamSpecific(ir.get())) {
      continue;
    }

    if (auto readIR = llvm::dyn_cast<ReadIR>(ir.get())) {
      std::shared_ptr<const ReadIR> read(ir, readIR);
      events.push_back(std::make_unique<const ReadEventImpl>(read, einfo, events.size()));
    } else if (auto writeIR = llvm::dyn_cast<WriteIR>(ir.get())) {
      std::shared_ptr<const WriteIR> write(ir, writeIR);
      events.push_back(std::make_unique<const WriteEventImpl>(write, einfo, events.size()));
    } else if (auto forkIR = llvm::dyn_cast<ForkIR>(ir.get())) {
      // if spawned in single region, put omp task forks on master thread only
      if (forkIR->type == IR::Type::OpenMPTaskFork && state.openmp.inSingle && !isOpenMPMasterThread(thread)) {
        continue;
      }

      std::shared_ptr<const ForkIR> fork(ir, forkIR);
      events.push_back(std::make_unique<const ForkEventImpl>(fork, einfo, events.size()));

      if (forkIR->type == IR::Type::OpenMPForkTeams) {
        state.openmp.teamsDepth++;
      }

      // traverse this fork
      auto event = events.back().get();
      auto forkEvent = llvm::cast<ForkEvent>(event);

      // maintain the current traversed tasks in state.openmp.unjoinedTasks
      if (forkIR->type == IR::Type::OpenMPTaskFork) {
        std::shared_ptr<const OpenMPTaskFork> task(fork, llvm::cast<OpenMPTaskFork>(fork.get()));
        state.openmp.unjoinedTasks.emplace_back(forkEvent, task);
      }

      auto entries = forkEvent->getThreadEntry();
      assert(!entries.empty());

      // Heuristic: just choose first entry if there are more than one
      // TODO: log if entries contained more than one possible entry
      auto entry = entries.front();

      auto const threadPosition = threads.size();
      // build thread trace for this fork and all sub threads
      auto subThread = std::make_unique<ThreadTrace>(forkEvent, entry, threads, state);
      threads.insert(threads.begin() + threadPosition, std::move(subThread));

      if (forkIR->type == IR::Type::OpenMPForkTeams) {
        state.openmp.teamsDepth--;
      }

    } else if (auto joinIR = llvm::dyn_cast<JoinIR>(ir.get())) {
      // insert task joins for state.unjoinedTasks before the end of this omp parallel region
      if (joinIR->type == IR::Type::OpenMPJoin) {
        insertTaskJoins(events, state, einfo);
      }

      std::shared_ptr<const JoinIR> join(ir, joinIR);
      events.push_back(std::make_unique<const JoinEventImpl>(join, einfo, events.size()));
    } else if (auto lockIR = llvm::dyn_cast<LockIR>(ir.get())) {
      std::shared_ptr<const LockIR> lock(ir, lockIR);
      events.push_back(std::make_unique<const LockEventImpl>(lock, einfo, events.size()));
    } else if (auto unlockIR = llvm::dyn_cast<UnlockIR>(ir.get())) {
      std::shared_ptr<const UnlockIR> lock(ir, unlockIR);
      events.push_back(std::make_unique<const UnlockEventImpl>(lock, einfo, events.size()));
    } else if (auto barrierIR = llvm::dyn_cast<BarrierIR>(ir.get())) {
      // handle task joins at barriers
      if (barrierIR->type == IR::Type::OpenMPBarrier) {
        insertTaskJoins(events, state, einfo);
      }

      std::shared_ptr<const BarrierIR> barrier(ir, barrierIR);
      events.push_back(std::make_unique<const BarrierEventImpl>(barrier, einfo, events.size()));
    } else if (auto callIR = llvm::dyn_cast<CallIR>(ir.get())) {
      std::shared_ptr<const CallIR> call(ir, callIR);

      if (call->isIndirect()) {
        // TODO: handle indirect
        llvm::errs() << "Skipping indirect call: " << *call << "\n";
        continue;
      }

      auto directContext = pta::CT::contextEvolve(context, ir->getInst());
      auto const directNode = pta.getDirectNodeOrNull(directContext, call->getCalledFunction());

      if (directNode == nullptr) {
        // TODO: LOG unable to get child node
        llvm::errs() << "Unable to get child node: " << call->getCalledFunction()->getName() << "\n";
        continue;
      }

      // Special OpenMP execution modelling
      if (auto ompFork = isOpenMPThread(thread)) {
        if (handleOMPEvents(callIR, state, isOpenMPMasterThread(thread))) {
          continue;
        }
        // insert task joins for state.unjoinedTasks when taskwait is encountered
        if (callIR->type == IR::Type::OpenMPTaskWait) {
          insertTaskJoins(events, state, einfo);
        }
      }

      if (directNode->getTargetFun()->isExtFunction()) {
        events.push_back(std::make_unique<ExternCallEventImpl>(call, einfo, events.size()));
        continue;
      }

      events.push_back(std::make_unique<const EnterCallEventImpl>(call, einfo, events.size()));
      traverseCallNode(directNode, thread, callstack, pta, events, threads, state);
      events.push_back(std::make_unique<const LeaveCallEventImpl>(call, einfo, events.size()));
    } else {
      llvm_unreachable("Should cover all IR types");
    }
  }

  callstack.pop();
}

std::vector<std::unique_ptr<const Event>> buildEventTrace(const ThreadTrace &thread, const pta::CallGraphNodeTy *entry,
                                                          const pta::PTA &pta,
                                                          std::vector<std::unique_ptr<ThreadTrace>> &threads,
                                                          TraceBuildState &state) {
  std::vector<std::unique_ptr<const Event>> events;
  CallStack callstack;
  traverseCallNode(entry, thread, callstack, pta, events, threads, state);
  return events;
}
}  // namespace

ThreadTrace::ThreadTrace(ProgramTrace &program, const pta::CallGraphNodeTy *entry, TraceBuildState &state)
    : id(0),
      program(program),
      spawnSite(std::nullopt),
      events(buildEventTrace(*this, entry, program.pta, program.threads, state)) {}

ThreadTrace::ThreadTrace(const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry,
                         std::vector<std::unique_ptr<ThreadTrace>> &threads, TraceBuildState &state)
    : id(++state.currentTID),
      program(spawningEvent->getThread().program),
      spawnSite(spawningEvent),
      events(buildEventTrace(*this, entry, program.pta, threads, state)) {
  auto const entries = spawningEvent->getThreadEntry();
  auto it = std::find(entries.begin(), entries.end(), entry);
  // entry mut be one of the entries from the spawning event
  assert(it != entries.end());
}

std::vector<const ForkEvent *> ThreadTrace::getForkEvents() const {
  std::vector<const ForkEvent *> forks;
  for (auto const &event : events) {
    if (auto fork = llvm::dyn_cast<ForkEvent>(event.get())) {
      forks.push_back(fork);
    }
  }
  return forks;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const ThreadTrace &thread) {
  os << "---Thread" << thread.id;
  if (thread.spawnSite.has_value()) {
    auto const &spawn = thread.spawnSite.value();
    os << "  (Spawned by T" << spawn->getThread().id << ":" << spawn->getID() << ")";
  }
  os << "\n";

  for (auto const &event : thread.getEvents()) {
    os << *event << "\n";
  }

  return os;
}
