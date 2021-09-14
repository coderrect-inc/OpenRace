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

// Check if currentThread is trying to create a recursive thread spawn at childEntry, by checking if the current thread
// or any parent thread's entry is childEntry
bool isRecursiveThreadSpawn(const ThreadTrace &currentThread, const pta::CallGraphNodeTy *childEntry) {
  auto parentFork = currentThread.spawnSite;
  // iterate untile we hit mian thread, which does not have a spawnsite
  while (parentFork.has_value()) {
    auto const threadEntry = parentFork.value()->getThreadEntry();
    if (threadEntry == childEntry) {
      return true;
    }
    parentFork = parentFork.value()->getThread().spawnSite;
  }
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

  // Update  einfo
  state.einfo = std::make_shared<EventInfo>(state.thread, node->getContext());

  auto const &summary = *state.programState.builder.getFunctionSummary(func);
  for (auto const &ir : summary) {
    if (shouldSkipIR(ir, state)) {
      continue;
    }

    // Check with runtime models before doing anything with this ir
    for (auto const &model : state.programState.runtimeModels) {
      if (model->preVisit(ir, state)) {
        continue;
      }
    }

    if (auto readIR = llvm::dyn_cast<ReadIR>(ir.get())) {
      std::shared_ptr<const ReadIR> read(ir, readIR);
      state.events.push_back(std::make_unique<const ReadEventImpl>(read, state.einfo, state.events.size()));
    } else if (auto writeIR = llvm::dyn_cast<WriteIR>(ir.get())) {
      std::shared_ptr<const WriteIR> write(ir, writeIR);
      state.events.push_back(std::make_unique<const WriteEventImpl>(write, state.einfo, state.events.size()));
    } else if (auto forkIR = llvm::dyn_cast<ForkIR>(ir.get())) {
      std::shared_ptr<const ForkIR> fork(ir, forkIR);
      auto forkEventImpl = std::make_unique<const ForkEventImpl>(fork, state.einfo, state.events.size());

      auto const entry = forkEventImpl->getThreadEntry();
      assert(entry && "Thread has no entry");

      // Check for recursive thread creation
      if (isRecursiveThreadSpawn(state.thread, entry)) {
        llvm::outs() << "Skipping recursive thread creation: " << entry->getTargetFun()->getName() << "\n";
        continue;
      }
      // Now we can push the event since we are sure we are going to crate a new thread
      state.events.push_back(std::move(forkEventImpl));
      // Note forkEventmpl has been moved and should not be accessed anymore
      auto const &event = state.events.back();
      auto const forkEvent = llvm::cast<ForkEvent>(event.get());

      // Notify runtime models we are about to start traversing new thread
      for (auto const &model : state.programState.runtimeModels) {
        model->preFork(fork, forkEvent);
      }

      // build thread trace for this fork and all sub threads
      auto childThread = std::make_unique<ThreadTrace>(forkEvent, entry, state.programState);
      state.childThreads.push_back(std::move(childThread));

      // Notify runtime models we are returning from traversing new thread
      for (auto const &model : state.programState.runtimeModels) {
        model->postFork(fork, forkEvent);
      }
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
