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

#include "ProgramTrace.h"

#include "Trace/Event.h"

using namespace race;

ProgramTrace::ProgramTrace(const pta::PTA &pta) : pta(pta) {
  auto mainEntry = pta::GT::getEntryNode(pta.getCallGraph());
  // construct main thread
  threads.push_back(std::make_unique<ThreadTrace>(*this, mainEntry));

  std::vector<const ForkEvent *> worklist;
  // Add events spawned by main thread to worklist to be traversed
  auto const mainThreadForks = threads.back()->getForkEvents();
  worklist.insert(worklist.end(), mainThreadForks.begin(), mainThreadForks.end());

  while (!worklist.empty()) {
    auto forkEvent = worklist.back();
    worklist.pop_back();

    // Heuristic: just choose first entry if there are more than one
    auto entries = forkEvent->getThreadEntry();
    assert(!entries.empty());
    auto entry = entries.front();
    // TODO: log if entries contained more than one possible entry

    // Build events for this thread entry
    threads.push_back(std::make_unique<ThreadTrace>(threads.size(), forkEvent, entry));

    // Add any newly forked threads
    for (auto const newFork : threads.back()->getForkEvents()) {
      worklist.push_back(newFork);
    }
  }
}
