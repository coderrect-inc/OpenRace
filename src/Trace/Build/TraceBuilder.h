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

#pragma once

#include <llvm/IR/Instruction.h>

#include <memory>

#include "IR/Builder.h"
#include "LanguageModel/RaceModel.h"
#include "Trace/Build/CallStack.h"
#include "Trace/Build/RuntimeModel.h"
#include "Trace/Event.h"
#include "Trace/EventImpl.h"
#include "Trace/ThreadTrace.h"

namespace race {

// Program (glabal) state needed to build the entire ProgramTrace
struct ProgramBuildState {
  // Cached function summaries
  FunctionSummaryBuilder builder;

  // Counter to set the ThreadID as they are constructed
  ThreadID currentTID = 0;

  // Pointer Analysis
  const pta::PTA &pta;

  std::vector<std::unique_ptr<Runtime>> runtimeModels;

  // Constructor
  ProgramBuildState(const pta::PTA &pta) : pta(pta) {}
};

// Thread (local) state needed to build a single ThreadTrace
struct ThreadBuildState {
  ProgramBuildState &programState;

  // Thread being constructed
  ThreadTrace &thread;

  // List of events being constructed
  std::vector<std::unique_ptr<const Event>> &events;

  // Child threads
  std::vector<std::unique_ptr<const ThreadTrace>> &childThreads;

  // When set, skip traversing until this instruction is reached
  const llvm::Instruction *skipUntil = nullptr;

  // Curent EventInfo object used to construct new events
  std::shared_ptr<EventInfo> einfo;

  // Callstack used to prevent recursion
  CallStack callstack;

  // Constructor
  ThreadBuildState() = delete;
  ThreadBuildState(ProgramBuildState &programState, ThreadTrace &thread,
                   std::vector<std::unique_ptr<const Event>> &events,
                   std::vector<std::unique_ptr<const ThreadTrace>> &childThreads)
      : programState(programState), thread(thread), events(events), childThreads(childThreads) {}
};

void buildTrace(const pta::CallGraphNodeTy *node, ThreadBuildState &state);

}  // namespace race