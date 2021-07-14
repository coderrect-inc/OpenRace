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

#include <vector>

#include "LanguageModel/RaceModel.h"
#include "ThreadTrace.h"
#include "Trace/Event.h"

namespace race {

struct OpenMPState {
  // Track if we are currently in parallel region created from kmpc_fork_teams
  size_t teamsDepth = 0;

  bool inTeamsRegion() const { return teamsDepth > 0; }
};

// all included states are ONLY used when building ProgramTrace/ThreadTrace
struct TraceBuildState {
  // the counter of thread id: since we are constructing ThreadTrace while building events,
  // pState.threads.size() will be updated after finishing the construction, we need such a counter
  ThreadID currentTID = 0;

  OpenMPState openmp;
};

class ProgramTrace {
  llvm::Module *module;
  std::vector<std::unique_ptr<ThreadTrace>> threads;

  friend class ThreadTrace;

 public:
  pta::PTA pta;

  [[nodiscard]] inline const std::vector<std::unique_ptr<ThreadTrace>> &getThreads() const { return threads; }

  [[nodiscard]] const Event *getEvent(ThreadID tid, EventID eid) { return threads.at(tid)->getEvent(eid); }

  // Get the module after preprocessing has been run
  [[nodiscard]] const Module &getModule() const { return *module; }

  explicit ProgramTrace(llvm::Module *module, llvm::StringRef entryName = "main");
  ~ProgramTrace() = default;
  ProgramTrace(const ProgramTrace &) = delete;
  ProgramTrace(ProgramTrace &&) = delete;  // Need to update threads because
                                           // they contain reference to parent
  ProgramTrace &operator=(const ProgramTrace &) = delete;
  ProgramTrace &operator=(ProgramTrace &&) = delete;
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const ProgramTrace &trace);

}  // namespace race
