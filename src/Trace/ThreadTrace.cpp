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
#include "Trace/CallStack.h"
#include "Trace/ProgramTrace.h"

using namespace race;

namespace {

void traverseCallNode(const pta::CallGraphNodeTy *node, const ThreadTrace &thread, CallStack &callstack,
                      const pta::PTA &pta, std::vector<std::unique_ptr<const Event>> &events, ProgramInfo *pInfo) {
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

      // traverse this fork
      auto event = events.back().get();
      auto forkEvent = static_cast<const ForkEvent *>(event);
      auto entries = forkEvent->getThreadEntry();
      assert(!entries.empty());

      // Heuristic: just choose first entry if there are more than one
      // TODO: log if entries contained more than one possible entry
      auto entry = entries.front();

      // build thread trace for this fork
      pInfo->threads.push_back(std::make_unique<ThreadTrace>(pInfo->threads.size(), forkEvent, node, pInfo));

    } else if (auto joinIR = llvm::dyn_cast<JoinIR>(ir.get())) {
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

      if (directNode->getTargetFun()->isExtFunction()) {
        events.push_back(std::make_unique<ExternCallEventImpl>(call, einfo, events.size()));
        continue;
      }

      events.push_back(std::make_unique<const EnterCallEventImpl>(call, einfo, events.size()));
      traverseCallNode(directNode, thread, callstack, pta, events, pInfo);
      events.push_back(std::make_unique<const LeaveCallEventImpl>(call, einfo, events.size()));

    } else {
      llvm_unreachable("Should cover all IR types");
    }
  }

  callstack.pop();
}

std::vector<std::unique_ptr<const Event>> buildEventTrace(const ThreadTrace &thread, const pta::CallGraphNodeTy *entry,
                                                          const pta::PTA &pta, ProgramInfo *pInfo) {
  std::vector<std::unique_ptr<const Event>> events;
  CallStack callstack;
  traverseCallNode(entry, thread, callstack, pta, events, pInfo);
  return events;
}
}  // namespace

// ThreadTrace::ThreadTrace(const race::ProgramTrace &program, const pta::CallGraphNodeTy *entry)
//    : id(0), program(program), spawnSite(std::nullopt), events(buildEventTrace(*this, entry, program.pta)) {}
//
// ThreadTrace::ThreadTrace(ThreadID id, const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry)
//    : id(id),
//      program(spawningEvent->getThread().program),
//      spawnSite(spawningEvent),
//      events(buildEventTrace(*this, entry, program.pta)) {
//  auto const entries = spawningEvent->getThreadEntry();
//  auto it = std::find(entries.begin(), entries.end(), entry);
//  // entry mut be one of the entries from the spawning event
//  assert(it != entries.end());
//}

ThreadTrace::ThreadTrace(const ProgramTrace &program, const pta::CallGraphNodeTy *entry, ProgramInfo *pInfo)
    : id(0),
      program(program),
      spawnSite(std::nullopt),
      pInfo(pInfo),
      events(buildEventTrace(*this, entry, program.pta, pInfo)) {}

ThreadTrace::ThreadTrace(ThreadID id, const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry,
                         ProgramInfo *pInfo)
    : id(id),
      program(spawningEvent->getThread().program),
      spawnSite(spawningEvent),
      pInfo(pInfo),
      events(buildEventTrace(*this, entry, program.pta, pInfo)) {
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

void ThreadTrace::constructThreadTraces(ProgramTrace *program, const pta::CallGraphNodeTy *entry, ProgramInfo *pInfo) {
  pInfo->threads.push_back(std::make_unique<ThreadTrace>(*program, entry, pInfo));
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
