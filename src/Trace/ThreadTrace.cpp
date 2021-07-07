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
  auto irFunc = generateFunctionSummary(func);
  auto const context = node->getContext();
  auto einfo = std::make_shared<EventInfo>(thread, context);

  for (auto const &ir : irFunc) {
    if (auto readIR = llvm::dyn_cast<ReadIR>(ir.get())) {
      std::shared_ptr<const ReadIR> read(ir, readIR);
      events.push_back(std::make_unique<const ReadEventImpl>(read, einfo, events.size()));
    } else if (auto writeIR = llvm::dyn_cast<WriteIR>(ir.get())) {
      std::shared_ptr<const WriteIR> write(ir, writeIR);
      events.push_back(std::make_unique<const WriteEventImpl>(write, einfo, events.size()));
    } else if (auto forkIR = llvm::dyn_cast<ForkIR>(ir.get())) {
      std::shared_ptr<const ForkIR> fork(ir, forkIR);
      events.push_back(std::make_unique<const ForkEventImpl>(fork, einfo, events.size()));

      if (llvm::isa<race::OpenMPForkTeams>(ir.get())) {
        state.openmp.teamsDepth++;
      }

      // traverse this fork
      auto event = events.back().get();
      auto forkEvent = llvm::cast<ForkEvent>(event);
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
      std::shared_ptr<const JoinIR> join(ir, joinIR);
      events.push_back(std::make_unique<const JoinEventImpl>(join, einfo, events.size()));
      if (llvm::isa<race::OpenMPJoinTeams>(ir.get())) {
        state.openmp.teamsDepth--;
      }
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
      auto const directNode = pta.getDirectNodeOrNull(directContext, call->getCalledFunction());

      if (directNode == nullptr) {
        // TODO: LOG unable to get child node
        llvm::errs() << "Unable to get child node: " << call->getCalledFunction()->getName() << "\n";
        continue;
      }

      if (directNode->getTargetFun()->isExtFunction()) {
        // Skip OpenMP synchronizations that have no affect across teams
        // TODO: How should single/master be modeled?
        if (state.openmp.inTeamsRegion() &&
            OpenMPModel::isTeamSpecificSync(directNode->getTargetFun()->getFunction())) {
          continue;
        }

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
