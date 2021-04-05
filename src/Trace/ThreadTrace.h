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

  [[nodiscard]] const Event *getEvent(EventID id) const { return events.at(id).get(); }

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