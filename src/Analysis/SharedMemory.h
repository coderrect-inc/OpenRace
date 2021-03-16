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

#include <map>

#include "LanguageModel/RaceModel.h"
#include "Trace/ProgramTrace.h"

namespace race {

struct SharedMemory {
  using ObjID = size_t;
  std::map<const pta::ObjTy *, ObjID> objIDs;

  struct Accesses {
    std::vector<const ReadEvent *> reads;
    std::vector<const WriteEvent *> writes;
  };

  std::map<ObjID, std::map<ThreadID, Accesses>> objAccesses;

  std::map<ObjID, std::map<ThreadID, std::vector<const ReadEvent *>>> objReads;
  std::map<ObjID, std::map<ThreadID, std::vector<const WriteEvent *>>> objWrites;

  [[nodiscard]] size_t numThreadsWrite(ObjID id) const;
  [[nodiscard]] size_t numThreadsRead(ObjID id) const;

 public:
  explicit SharedMemory(const ProgramTrace &);

  [[nodiscard]] std::vector<const pta::ObjTy *> getSharedObjects() const;

  // TODO: wrap this in option?? Make a copy?? Iterator??
  [[nodiscard]] std::map<ThreadID, std::vector<const ReadEvent *>> getThreadedReads(const pta::ObjTy *obj) const;
  [[nodiscard]] std::map<ThreadID, std::vector<const WriteEvent *>> getThreadedWrites(const pta::ObjTy *obj) const;
};
}  // namespace race