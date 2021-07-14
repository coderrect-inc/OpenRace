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

#include <IR/Builder.h>

#include <vector>

#include "IR/IRImpls.h"
#include "LanguageModel/RaceModel.h"
#include "ThreadTrace.h"
#include "Trace/Event.h"

namespace race {

using OMPStartEnd = std::map<const llvm::CallBase *, const llvm::CallBase *>;

// all included states are ONLY used when building ProgramTrace/ThreadTrace
struct TraceBuildState {
  FunctionSummaryBuilder builder;

  // the counter of thread id: since we are constructing ThreadTrace while building events,
  // pState.threads.size() will be updated after finishing the construction, we need such a counter
  ThreadID currentTID = 0;

  // when using omp master/single(+task), there should be only one omp fork thread (we always have two) that execute
  // this part of the code solution:
  // 1. we will attach this part of ir to the omp fork seen first, so it only appear once
  // 2. make sync edges between single(+task) and the first event afterwards from other parallel irs, so guarantee the
  // hb relation
  // when using single(+stmt), we attach this part of ir to both omp forks, so we can find the race between
  // two single blocks. PS: exl = exclusive
  std::map<ThreadID, OMPStartEnd>
      tid2ExlStartEnd;  // record a map of tid to a set of traversed single(+task)/master blocks

  // find the corresponding end if exist any that is in currentTID
  // return the corresponding end, or null if not exist
  const llvm::CallBase *find(const llvm::CallBase *start) {
    for (auto it = tid2ExlStartEnd.begin(); it != tid2ExlStartEnd.end(); it++) {
      if (it->first == currentTID) {
        continue;  // skip self check
      }
      auto itExl = it->second.find(start);
      if (itExl != it->second.end()) {
        return itExl->second;
      }
    }
    return nullptr;
  }

  // insert into tid2ExlStartEnd for currentTID
  void insert(const llvm::CallBase *start, const llvm::CallBase *end) {
    auto pair = std::make_pair(start, end);
    auto it = tid2ExlStartEnd.find(currentTID);
    if (it == tid2ExlStartEnd.end()) {  // no such tid in the record
      OMPStartEnd map;
      map.insert(pair);
      tid2ExlStartEnd.insert(std::make_pair(currentTID, map));
    } else {
      tid2ExlStartEnd.at(currentTID).insert(pair);
    }
  }

  // the matched master start/end in traverseCallNode
  const llvm::CallBase *exlMasterStart = nullptr;
  const llvm::CallBase *exlMasterEnd = nullptr;  // to match skip until

  // the matched single(+task) start/end in traverseCallNode
  const llvm::CallBase *exlSingleStart = nullptr;
  const llvm::CallBase *exlSingleEnd = nullptr;  // to match skip until

  // omp tasks without joins, e.g., single nowait, master, no barrier
  std::queue<std::shared_ptr<race::OpenMPTask>> taskWOJoins;
  std::queue<const ForkEvent *> taskForkEvents;
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
