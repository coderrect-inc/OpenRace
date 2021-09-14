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

#include "Trace/Build/OpenMPRuntime.h"
#include "Trace/Build/TraceBuilder.h"
#include "Trace/ProgramTrace.h"

using namespace race;

ThreadTrace::ThreadTrace(ProgramTrace &program, const pta::CallGraphNodeTy *entry)
    : id(0), program(program), spawnSite(std::nullopt) {
  // Construct the ProgramState used to build the entire program trace
  ProgramBuildState programState(program.pta);
  // TODO: hard coding this for now
  //  but we should have system for customizing which models are added if we have more in the future
  programState.runtimeModels.push_back(std::make_unique<OpenMPRuntime>());

  // Construct the state used to build just this main thread
  ThreadBuildState state(programState, *this, events, childThreads);

  // Recursively build all thread traces
  buildTrace(entry, state);
}

ThreadTrace::ThreadTrace(const ForkEvent *spawningEvent, const pta::CallGraphNodeTy *entry,
                         ProgramBuildState &programState)
    : id(++programState.currentTID), program(spawningEvent->getThread().program), spawnSite(spawningEvent) {
  // Sanity Check
  auto const entries = spawningEvent->getThreadEntry();
  auto it = std::find(entries.begin(), entries.end(), entry);
  // entry mut be one of the entries from the spawning event
  assert(it != entries.end());

  // Build the thread trace
  ThreadBuildState state(programState, *this, events, childThreads);
  buildTrace(entry, state);
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
  if (thread.spawnSite.has_value()) {
    auto const &spawn = thread.spawnSite.value();
    os << "  (Spawned by T" << spawn->getThread().id << ":" << spawn->getID() << ")";
  }
  os << "\n";

  for (auto const &event : thread.getEvents()) {
    os << *event << "\n";
  }

  return os;
}
