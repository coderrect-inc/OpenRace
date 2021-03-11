#pragma once

#include <vector>

#include "LanguageModel/RaceModel.h"
#include "Trace/Event.h"
#include "Trace/ThreadTrace.h"

namespace race {

class ProgramTrace {
  std::vector<std::unique_ptr<ThreadTrace>> threads;

 public:
  const pta::PTA &pta;

  [[nodiscard]] inline const std::vector<std::unique_ptr<ThreadTrace>> &getThreads() const { return threads; }

  explicit ProgramTrace(const pta::PTA &pta);
  ~ProgramTrace() = default;
  ProgramTrace(const ProgramTrace &) = delete;
  ProgramTrace(ProgramTrace &&) = delete;  // Need to update threads because
                                           // they contain reference to parent
  ProgramTrace &operator=(const ProgramTrace &) = delete;
  ProgramTrace &operator=(ProgramTrace &&) = delete;
};

}  // namespace race
