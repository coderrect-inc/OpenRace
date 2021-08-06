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

#include <memory>
#include <vector>

#include "Event.h"
#include "LanguageModel/RaceModel.h"

namespace race {

struct TraceBuildState;
class ProgramTrace;

using ThreadID = size_t;

class ThreadTrace {
 public:
  const ThreadID id;
  const ProgramTrace &program;
  // The fork event that created this thread
  // Optional because main thread does not have a spawn site
  const std::optional<const ForkEvent *> spawnSite;

  [[nodiscard]] const std::vector<std::unique_ptr<const Event>> &getEvents() const { return events; }
  [[nodiscard]] std::vector<const ForkEvent *> getForkEvents() const;

  [[nodiscard]] const Event *getEvent(EventID id) const { return events.at(id).get(); }

  [[nodiscard]] const std::vector<std::unique_ptr<const ThreadTrace>> &getChildThreads() const { return childThreads; }

  // Constructs the main thread.
  // All others should be built from forkEvent constructor
  ThreadTrace(ProgramTrace &program, const pta::CallGraphNodeTy *entry, TraceBuildState &state);
  // Construct thread from forkEvent.
  // entry specifies the entry point of the spawned thread
  //  and should be one of the entries from the spawningEvent entry list
  // threads should be mutable reference to ProgramTrace's list of threads
  ThreadTrace(const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry, TraceBuildState &state);
  ~ThreadTrace() = default;
  ThreadTrace(const ThreadTrace &) = delete;
  ThreadTrace(ThreadTrace &&other) = delete;
  ThreadTrace &operator=(const ThreadTrace &) = delete;
  ThreadTrace &operator=(ThreadTrace &&other) = delete;

 private:
  std::vector<std::unique_ptr<const Event>> events;
  std::vector<std::unique_ptr<const ThreadTrace>> childThreads;

  void buildEventTrace(const pta::CallGraphNodeTy *entry, const pta::PTA &pta, TraceBuildState &state);
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const ThreadTrace &thread);

}  // namespace race