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

#include "TraceBuilder.h"

#include "Trace/Build/OpenMPRuntime.h"

using namespace race;

namespace {
// return true if the current instruction should be skipped
bool shouldSkipIR(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) {
  if (!state.skipUntil) return false;

  // Skip until we reach the target instruction
  if (ir->getInst() != state.skipUntil) return true;

  // Else we reached the target instruction
  // reset skipUntil ptr and continue traversing
  state.skipUntil = nullptr;
  return false;
}
}  // namespace

void race::buildTrace(const pta::CallGraphNodeTy *node, ThreadBuildState &state) {
  auto func = node->getTargetFun()->getFunction();
  if (state.callstack.contains(func)) {
    // Prevent recursion
    return;
  }
  state.callstack.push(func);

  OpenMPRuntime omprt;

  // Update  einfo
  state.einfo = std::make_shared<EventInfo>(state.thread, node->getContext());

  auto const &summary = *state.programState.builder.getFunctionSummary(func);
  for (auto const &ir : summary) {
    if (shouldSkipIR(ir, state)) {
      continue;
    }

    // TODO: Check runtime models
    if (omprt.preVisit(ir, state)) {
      continue;
    }

    if (auto readIR = llvm::dyn_cast<ReadIR>(ir.get())) {
      std::shared_ptr<const ReadIR> read(ir, readIR);
      state.events.push_back(std::make_unique<const ReadEventImpl>(read, state.einfo, state.events.size()));
    } else if (auto writeIR = llvm::dyn_cast<WriteIR>(ir.get())) {
      std::shared_ptr<const WriteIR> write(ir, writeIR);
      state.events.push_back(std::make_unique<const WriteEventImpl>(write, state.einfo, state.events.size()));
    } else if (auto forkIR = llvm::dyn_cast<ForkIR>(ir.get())) {
      std::shared_ptr<const ForkIR> fork(ir, forkIR);
      state.events.push_back(std::make_unique<const ForkEventImpl>(fork, state.einfo, state.events.size()));

      // traverse this fork
      auto const event = state.events.back().get();
      auto const forkEvent = llvm::cast<ForkEvent>(event);

      // TODO: runtime prefork check
      omprt.preFork(fork, forkEvent);

      auto const entries = forkEvent->getThreadEntry();
      assert(!entries.empty() && "Thread has no entry");

      // Heuristic: choose first entry if there is more than one
      if (entries.size() > 1) {
        llvm::outs() << "Thread contianed multiple possible entries, choosing first one\n";
      }
      auto const entry = entries.front();

      // build thread trace for this fork and all sub threads
      auto childThread = std::make_unique<ThreadTrace>(forkEvent, entry, state.programState);
      state.childThreads.push_back(std::move(childThread));

      // TODO: runtime postFork check
      omprt.postFork(fork, forkEvent);
    } else if (auto joinIR = llvm::dyn_cast<JoinIR>(ir.get())) {
      std::shared_ptr<const JoinIR> join(ir, joinIR);
      state.events.push_back(std::make_unique<const JoinEventImpl>(join, state.einfo, state.events.size()));
    } else if (auto lockIR = llvm::dyn_cast<LockIR>(ir.get())) {
      std::shared_ptr<const LockIR> lock(ir, lockIR);
      state.events.push_back(std::make_unique<const LockEventImpl>(lock, state.einfo, state.events.size()));
    } else if (auto unlockIR = llvm::dyn_cast<UnlockIR>(ir.get())) {
      std::shared_ptr<const UnlockIR> lock(ir, unlockIR);
      state.events.push_back(std::make_unique<const UnlockEventImpl>(lock, state.einfo, state.events.size()));
    } else if (auto barrierIR = llvm::dyn_cast<BarrierIR>(ir.get())) {
      std::shared_ptr<const BarrierIR> barrier(ir, barrierIR);
      state.events.push_back(std::make_unique<const BarrierEventImpl>(barrier, state.einfo, state.events.size()));
    } else if (auto callIR = llvm::dyn_cast<CallIR>(ir.get())) {
      std::shared_ptr<const CallIR> call(ir, callIR);

      if (call->isIndirect()) {
        // TODO: handle indirect
        llvm::errs() << "Skipping indirect call: " << *call << "\n";
        continue;
      }

      auto const directContext = pta::CT::contextEvolve(node->getContext(), ir->getInst());
      auto const callee = CallIR::resolveTargetFunction(call->getInst());
      if (callee == nullptr || callee->isIntrinsic() || callee->isDebugInfoForProfiling()) {
        continue;
      }

      auto const directNode = state.programState.pta.getDirectNodeOrNull(directContext, callee);
      if (directNode == nullptr) {
        llvm::errs() << "Unable to get child node: " << call->getCalledFunction()->getName() << "from "
                     << *ir->getInst() << "\n";
        continue;
      }

      if (directNode->getTargetFun()->isExtFunction()) {
        state.events.push_back(std::make_unique<ExternCallEventImpl>(call, state.einfo, state.events.size()));
        continue;
      }

      state.events.push_back(std::make_unique<const EnterCallEventImpl>(call, state.einfo, state.events.size()));
      buildTrace(directNode, state);
      state.events.push_back(std::make_unique<const LeaveCallEventImpl>(call, state.einfo, state.events.size()));

    } else {
      llvm_unreachable("Should cover all IR types");
    }
  }
  state.callstack.pop();
}
