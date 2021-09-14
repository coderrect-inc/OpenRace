#pragma once

#include <llvm/IR/Instruction.h>

#include <memory>

#include "IR/Builder.h"
#include "LanguageModel/RaceModel.h"
#include "Trace/CallStack.h"
#include "Trace/Event.h"
#include "Trace/EventImpl.h"
#include "Trace/ThreadTrace.h"

namespace race {

// State needed to build the ProgramTrace
struct ProgramBuildState {
  // Cached function summaries
  FunctionSummaryBuilder builder;

  // Counter to set the ThreadID as they are constructed
  ThreadID currentTID = 0;

  // Pointer Analysis
  const pta::PTA &pta;

  // List of threads being constructed
  // std::vector<std::unique_ptr<const ThreadTrace>> &threads;

  // Constructor
  ProgramBuildState(const pta::PTA &pta) : pta(pta) {}
};

// State needed to build a ThreadTrace
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