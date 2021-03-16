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

#include "Trace/ProgramTrace.h"

namespace race {

class HappensBeforeGraph {
 public:
  // constructs an graph from the events currently stored in program
  explicit HappensBeforeGraph(const ProgramTrace &program);

  // return true if there is a happens before edge from src to dst
  [[nodiscard]] bool canReach(const Event *src, const Event *dst) const;

  // return true if there is no happens-before edge from src->dst or dst->src
  [[nodiscard]] inline bool areParallel(const Event *lhs, const Event *rhs) const {
    return !canReach(lhs, rhs) && !canReach(rhs, lhs);
  }

 private:
  // EventId unique across entire program
  struct EventPID {
    ThreadID tid;
    EventID eid;

    EventPID(ThreadID tid, EventID eid) : tid(tid), eid(eid) {}
    explicit EventPID(const Event *event) : tid(event->getThread().id), eid(event->getID()) {}

    bool operator<(const EventPID &other) const {
      if (tid != other.tid) {
        return tid < other.tid;
      }
      return eid < other.eid;
    }
    bool operator==(const EventPID &other) const { return tid == other.tid && eid == other.eid; }
    bool operator<=(const EventPID &other) const { return *this < other || *this == other; }
  };

  std::map<EventPID, std::set<EventPID>> syncEdges;
  // DSF on syncEdges to see if src can reach dst
  [[nodiscard]] bool syncEdgesDFS(EventPID src, EventPID dst) const;
  [[nodiscard]] bool hasEdge(EventPID src, EventPID dst) const;

  // Per-thread **SORTED** list of sync events
  std::map<ThreadID, std::vector<EventPID>> threadSyncs;
  // Add sync to threadSyncs keeping the list of sync events sorted
  void addSync(const Event *syncEvent);

  void addSyncEdge(const Event *src, const Event *dst);

  // Return next sync on the same thread, or this event if it is a sync
  [[nodiscard]] std::optional<EventPID> findNextSync(const Event *e) const;
  [[nodiscard]] std::optional<EventPID> findNextSync(EventPID node) const;

  // Return next sync on the same thread AFTER this event (will not return this event if it is sync)
  [[nodiscard]] std::optional<EventPID> findNextSyncAfter(EventPID node) const;

  // Return previous sync on the same thread, or this event if it is a sync
  [[nodiscard]] std::optional<EventPID> findPrevSync(const Event *e) const;
};

}  // namespace race
