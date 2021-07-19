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
#include "IR/Builder.h"
#include "IR/IRImpls.h"
#include "LanguageModel/OpenMP.h"
#include "Trace/CallStack.h"
#include "Trace/ProgramTrace.h"

using namespace race;

namespace {

// all tasks in state.taskWOJoins should be joined when any of the following occur:
// 1. a barrier is encountered (from anywhere, not just after single)
// 2. taskwait is encountered (TODO)
// 3. the end of the parallel region is encountered.
void insertTaskJoins(std::vector<std::unique_ptr<const Event>> &events, TraceBuildState &state,
                     std::shared_ptr<struct EventInfo> &einfo) {
  for (auto const &task : state.unjoinedTasks) {
    auto taskJoin = std::make_shared<OpenMPTaskJoin>(task.forkIR);
    std::shared_ptr<const JoinIR> join(taskJoin, llvm::cast<JoinIR>(taskJoin.get()));
    events.push_back(std::make_unique<const JoinEventImpl>(join, einfo, events.size(), task.forkEvent));
  }
  state.unjoinedTasks.clear();
}

// return the spawning omp fork if this is an omp thread, else return nullptr
const OpenMPFork *isOpenMPThread(const ThreadTrace &thread) {
  if (!thread.spawnSite) return nullptr;
  return llvm::dyn_cast<OpenMPFork>(thread.spawnSite.value()->getIRInst());
}

// return true if the current instruction should be skipped
bool handleOpenMPSingle(const CallIR *callIR, TraceBuildState &state, bool isMasterThread) {
  // Model single by only traversing the single region on the master thread unless there are no tasks in the single
  // TODO: this modelling is technically wrong.
  // In cases where single is only traversed by the master thread we may miss races between single regions:
  // e.g.
  //    #pragma omp single nowait
  //    { shared++; }
  //    #pragma omp single nowait
  //    { shared++; }
  //
  // In cases where single is traversed by both threads we may report false positives
  // because we see both threads making an access when in reality there is only a single thread access
  // e.g.
  //    #pragma omp single
  //    { singleAccess++; }
  //

  if (callIR->type == IR::Type::OpenMPSingleStart) {
    state.openmp.inSingle = true;
    // if (!isMasterThread) {
    //   // Try skipping
    //   auto end = state.find(callIR->getInst());
    //   // end may be nullptr meaning this thread should not skip the single region
    //   state.exlSingleEnd = end;
    //   // if end is not nullptr, this single region should be skipped
    //   return end;
    // }
    // // Save the start of this single region
    // assert(!state.exlSingleStart && "encountered two single starts in a row");
    // state.exlSingleStart = callIR->getInst();
    // return false;
  }

  if (callIR->type == IR::Type::OpenMPSingleEnd) {
    state.openmp.inSingle = false;
  }

  // if (callIR->type == IR::Type::OpenMPSingleEnd && isMasterThread) {
  //   if (state.unjoinedTasks.empty()) {
  //     // This should not be skipped if there are no tasks
  //     state.insert(state.exlSingleStart, nullptr);
  //   } else {
  //     // This should be skipped if there are tasks
  //     // (only spawn tasks on one thread)
  //     state.insert(state.exlSingleStart, callIR->getInst());
  //   }
  //   state.exlSingleStart = nullptr;
  // }

  return false;
}

// Return true if the current instruction should be skipped
bool handleOpenMPMaster(const CallIR *callIR, TraceBuildState &state, bool isMasterThread) {
  // Model master by only traversing the master region on master omp threads
  // skip the region on non-master threads

  if (callIR->type == IR::Type::OpenMPMasterStart) {
    if (!isMasterThread) {
      // skip on non-master threads
      auto end = state.openmp.getMasterRegionEnd(callIR->getInst());
      assert(end && "encountered master start without end");
      state.exlMasterEnd = end;
      return true;
    }

    // Save the beggining of the master region
    state.openmp.markMasterStart(callIR->getInst());
    return false;
  }

  if (callIR->type == IR::Type::OpenMPMasterEnd && isMasterThread) {
    // Save the end of the master region
    state.openmp.markMasterEnd(callIR->getInst());
  }

  return false;
}

// handle omp single/master events
// return true if skip pushing this event to event trace
bool handleOMPEvents(const CallIR *callIR, TraceBuildState &state, bool isMasterThread) {
  if (handleOpenMPMaster(callIR, state, isMasterThread)) {
    return true;
  }

  if (handleOpenMPSingle(callIR, state, isMasterThread)) {
    return true;
  }

  return false;
}

// avoid duplicate omp single/master blocks
bool doSkipIR(const std::shared_ptr<const IR> &ir, TraceBuildState &state, bool isFork) {
  if (state.exlMasterEnd) {
    if (state.exlMasterEnd == ir->getInst()) {
      state.exlMasterEnd = nullptr;  // matched and reset
    }
    return true;  // skip traversing to avoid FP
  }
  if (isFork && state.exlSingleEnd) {
    if (state.exlSingleEnd == ir->getInst()) {
      state.exlSingleEnd = nullptr;  // matched and reset
    }
    return true;  // skip traversing to avoid FP
  }
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

  // the behavior is different when this traversal is for a fork or a call, e.g., task-single-call.ll
  bool isFork = callstack.isEmpty();

  callstack.push(func);

  if (DEBUG_PTA) {
    llvm::outs() << "Generating Func Sum: TID: " << thread.id << " Func: " << func->getName() << "\n";
  }

  auto summary = state.builder.getFunctionSummary(func);
  auto const &irFunc = summary->instructions;

  auto const context = node->getContext();
  auto einfo = std::make_shared<EventInfo>(thread, context);

  for (auto const &ir : irFunc) {
    if (doSkipIR(ir, state, isFork)) {
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
      // Only put omp task forks on master thread if spawned in single region
      if (forkIR->type == IR::Type::OpenMPTask && state.openmp.inSingle) {
        auto ompFork = isOpenMPThread(thread);
        if (ompFork && !ompFork->isMasterThread) continue;
      }

      std::shared_ptr<const ForkIR> fork(ir, forkIR);
      events.push_back(std::make_unique<const ForkEventImpl>(fork, einfo, events.size()));

      if (forkIR->type == IR::Type::OpenMPForkTeams) {
        state.openmp.teamsDepth++;
      }

      // traverse this fork
      auto event = events.back().get();
      auto forkEvent = static_cast<const ForkEvent *>(event);

      // maintain the current traversed tasks in state.unjoinedTasks
      if (forkIR->type == IR::Type::OpenMPTask) {
        std::shared_ptr<const OpenMPTask> task(fork, llvm::cast<OpenMPTask>(fork.get()));
        state.unjoinedTasks.emplace_back(forkEvent, task);
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
      // check if need to insert joins for tasks
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
        if (handleOMPEvents(callIR, state, ompFork->isMasterThread)) {
          continue;
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
