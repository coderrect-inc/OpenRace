#pragma once

#include <memory>
#include <vector>

#include "Event.h"
#include "LanguageModel/RaceModel.h"

namespace race {

class ProgramTrace;

using ThreadID = size_t;

class ThreadTrace {
 public:
  const ThreadID id;
  const ProgramTrace &program;
  // Main thread does not have spawnEvent
  const std::optional<const ForkEvent *> spawnEvent;

  [[nodiscard]] const std::vector<std::unique_ptr<const Event>> &getEvents() const { return events; }
  [[nodiscard]] std::vector<const ForkEvent *> getForkEvents() const;

  void print(llvm::raw_ostream &os) const;

  // Constructs the main thread. All others should be built from forkEvent
  // constructor
  ThreadTrace(const ProgramTrace &program, const pta::CallGraphNodeTy *entry);
  // Construct thread from forkEvent. entry specifies the entry point of the
  // spawned thread and should be one of the entries from the spawningEvent
  // entry list
  ThreadTrace(ThreadID id, const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry);
  ~ThreadTrace() = default;
  ThreadTrace(const ThreadTrace &) = delete;
  ThreadTrace(ThreadTrace &&other) = delete;  // need to update events because they contain reference to parent
                                              // thread
  ThreadTrace &operator=(const ThreadTrace &) = delete;
  ThreadTrace &operator=(ThreadTrace &&other) = delete;

 private:
  std::vector<std::unique_ptr<const Event>> events;
};

}  // namespace race