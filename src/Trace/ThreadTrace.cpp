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
#include "Trace/CallStack.h"
#include "Trace/ProgramTrace.h"

using namespace race;

namespace {

// valid for __kmpc_end_single
bool hasBarrierInNextBasicBlock(const llvm::BasicBlock *basicblock) {
  // the basicblock of __kmpc_end_single should only have one successor
  const llvm::BasicBlock *nextBB = basicblock->getSingleSuccessor();
  for (auto it = nextBB->begin(), end = nextBB->end(); it != end; ++it) {
    auto inst = llvm::cast<llvm::Instruction>(it);
    if (auto callInst = llvm::dyn_cast<llvm::CallBase>(inst)) {
      auto funcName = callInst->getCalledFunction()->getName();
      if (OpenMPModel::isBarrier(funcName)) {
        return true;
      }
    }
  }
  return false;
}

// all tasks in state.taskWOJoins should be joined when any of the following occur:
// 1. a barrier is encountered (from anywhere, not just after single)
// 2. taskwait is encountered
// 3. the end of the parallel region is encountered.
void insertTaskJoins(std::vector<std::unique_ptr<const Event>> &events, std::queue<std::shared_ptr<OpenMPTask>> &tasks,
                     std::shared_ptr<struct EventInfo> &einfo) {
  while (!tasks.empty()) {
    auto t = tasks.front();
    tasks.pop();
    auto ir = std::make_shared<OpenMPTaskJoin>(t);
    auto joinIR = llvm::dyn_cast<JoinIR>(ir.get());
    std::shared_ptr<const JoinIR> join(ir, joinIR);
    events.push_back(std::make_unique<const JoinEventImpl>(join, einfo, events.size()));
  }
}

// handle omp single/master events
// return true if skip pushing this event to event trace
bool handleOMPEvents(const CallIR *callIR, std::vector<std::unique_ptr<const Event>> &events, TraceBuildState &state,
                     std::shared_ptr<struct EventInfo> &einfo, bool isFork) {
  const llvm::CallBase *inst = callIR->getInst();

  // handle omp single
  if (callIR->type == IR::Type::OpenMPSingleStart) {
    auto end = state.find(inst);
    if (isFork && end) {
      state.exlSingleEnd = end;
      return true;
    }
    state.exlSingleStart = inst;
  } else if (callIR->type == IR::Type::OpenMPSingleEnd) {
    if (!state.taskWOJoins.empty()) {  // single(+task)
      if (hasBarrierInNextBasicBlock(inst->getParent())) {
        // the implicit barrier is represented as __kmpc_barrier in the successor basicblock,
        // if omp nowait, __kmpc_barrier will be absent
        insertTaskJoins(events, state.taskWOJoins, einfo);
      }
      // we want them exclusive
      state.insert(state.exlSingleStart, inst);
    } else {  // single(+stmt)
      // do nothing: we want the stmt to be shown in both omp forks
    }
  }
  // handle omp master
  else if (callIR->type == IR::Type::OpenMPMasterStart) {
    // check if handled by a previous thread
    auto end = state.find(inst);
    if (end) {
      state.exlMasterEnd = end;
      return true;
    }
    state.exlMasterStart = inst;
  } else if (callIR->type == IR::Type::OpenMPMasterEnd) {
    state.insert(state.exlMasterStart, inst);
  }
  // handle barrier
  else if (callIR->type == IR::Type::OpenMPBarrier) {
    insertTaskJoins(events, state.taskWOJoins, einfo);
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

  auto summary = generateFunctionSummary(func);
  auto irFunc = summary.instructions;
  auto tasks = summary.tasks;
  auto const context = node->getContext();
  auto einfo = std::make_shared<EventInfo>(thread, context);

  bool isFork = events.empty();  // the behavior is different when this traversal is for a fork or a call, , e.g.,
                                 // task-single-call.ll

  for (auto const &ir : irFunc) {
    if (doSkipIR(ir, state, isFork)) {
      continue;
    }

    if (auto readIR = llvm::dyn_cast<ReadIR>(ir.get())) {
      std::shared_ptr<const ReadIR> read(ir, readIR);
      events.push_back(std::make_unique<const ReadEventImpl>(read, einfo, events.size()));
    } else if (auto writeIR = llvm::dyn_cast<WriteIR>(ir.get())) {
      std::shared_ptr<const WriteIR> write(ir, writeIR);
      events.push_back(std::make_unique<const WriteEventImpl>(write, einfo, events.size()));
    } else if (auto forkIR = llvm::dyn_cast<ForkIR>(ir.get())) {
      std::shared_ptr<const ForkIR> fork(ir, forkIR);
      events.push_back(std::make_unique<const ForkEventImpl>(fork, einfo, events.size()));

      // maintain the current traversed tasks in taskWOJoins
      if (forkIR->type == IR::Type::OpenMPTask) {
        state.taskWOJoins.push(tasks.front());
        tasks.pop();
      }

      // traverse this fork
      auto event = events.back().get();
      auto forkEvent = static_cast<const ForkEvent *>(event);
      auto entries = forkEvent->getThreadEntry();
      assert(!entries.empty());

      // Heuristic: just choose first entry if there are more than one
      // TODO: log if entries contained more than one possible entry
      auto entry = entries.front();

      auto const threadPosition = threads.size();
      // build thread trace for this fork and all sub threads
      auto subThread = std::make_unique<ThreadTrace>(forkEvent, entry, threads, state);
      threads.insert(threads.begin() + threadPosition, std::move(subThread));

    } else if (auto joinIR = llvm::dyn_cast<JoinIR>(ir.get())) {
      // check if need to insert joins for tasks
      if (joinIR->type == IR::Type::OpenMPJoin && !state.taskWOJoins.empty()) {
        insertTaskJoins(events, state.taskWOJoins, einfo);
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
      auto const directNode = pta.getDirectNodeOrNull(directContext, call->getInst()->getCalledFunction());

      if (directNode == nullptr) {
        // TODO: LOG unable to get child node
        llvm::errs() << "Unable to get child node: " << call->getInst()->getCalledFunction()->getName() << "\n";
        continue;
      }

      // omp events
      if (handleOMPEvents(callIR, events, state, einfo, isFork)) {
        continue;
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
