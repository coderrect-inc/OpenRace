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
                      const pta::PTA &pta, std::vector<std::unique_ptr<const Event>> &events) {
  auto func = node->getTargetFun()->getFunction();
  if (callstack.contains(func)) {
    // prevent recursion
    return;
  }
  callstack.push(func);

  auto irFunc = generateFunctionSummary(func);
  auto const context = node->getContext();
  auto einfo = std::make_shared<EventInfo>(thread, context);

  for (auto const &ir : irFunc) {
    switch (ir->type) {
      case IR::Type::Read: {
        std::shared_ptr<const ReadIR> read(ir, llvm::cast<ReadIR>(ir.get()));
        events.push_back(std::make_unique<const ReadEventImpl>(read, einfo, events.size()));
        break;
      }
      case IR::Type::Write: {
        std::shared_ptr<const WriteIR> write(ir, llvm::cast<WriteIR>(ir.get()));
        events.push_back(std::make_unique<const WriteEventImpl>(write, einfo, events.size()));
        break;
      }
      case IR::Type::Fork: {
        std::shared_ptr<const ForkIR> fork(ir, llvm::cast<ForkIR>(ir.get()));
        events.push_back(std::make_unique<const ForkEventImpl>(fork, einfo, events.size()));
        break;
      }
      case IR::Type::Join: {
        std::shared_ptr<const JoinIR> join(ir, llvm::cast<JoinIR>(ir.get()));
        events.push_back(std::make_unique<const JoinEventImpl>(join, einfo, events.size()));
        break;
      }
      case IR::Type::Lock: {
        std::shared_ptr<const LockIR> lock(ir, llvm::cast<LockIR>(ir.get()));
        events.push_back(std::make_unique<const LockEventImpl>(lock, einfo, events.size()));
        break;
      }
      case IR::Type::Unlock: {
        std::shared_ptr<const UnlockIR> unlock(ir, llvm::cast<UnlockIR>(ir.get()));
        events.push_back(std::make_unique<const UnlockEventImpl>(unlock, einfo, events.size()));
        break;
      }
      case IR::Type::Call: {
        std::shared_ptr<const CallIR> call(ir, llvm::cast<CallIR>(ir.get()));

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
        traverseCallNode(directNode, thread, callstack, pta, events);
        events.push_back(std::make_unique<const LeaveCallEventImpl>(call, einfo, events.size()));
        break;
      }
    }
  }

  callstack.pop();
}

std::vector<std::unique_ptr<const Event>> buildEventTrace(const ThreadTrace &thread, const pta::CallGraphNodeTy *entry,
                                                          const pta::PTA &pta) {
  std::vector<std::unique_ptr<const Event>> events;
  CallStack callstack;
  traverseCallNode(entry, thread, callstack, pta, events);
  return events;
}
}  // namespace

ThreadTrace::ThreadTrace(const race::ProgramTrace &program, const pta::CallGraphNodeTy *entry)
    : id(0), program(program), spawnEvent(std::nullopt), events(buildEventTrace(*this, entry, program.pta)) {}

ThreadTrace::ThreadTrace(ThreadID id, const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry)
    : id(id),
      program(spawningEvent->getThread().program),
      spawnEvent(spawningEvent),
      events(buildEventTrace(*this, entry, program.pta)) {
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
  if (thread.spawnEvent.has_value()) {
    auto const &spawn = thread.spawnEvent.value();
    os << "  (Spawned by T" << spawn->getThread().id << ":" << spawn->getID() << ")";
  }
  os << "\n";

  for (auto const &event : thread.getEvents()) {
    os << *event << "\n";
  }

  return os;
}
