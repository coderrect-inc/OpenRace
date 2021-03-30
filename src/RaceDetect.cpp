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

#include "RaceDetect.h"

#include "Analysis/HappensBeforeGraph.h"
#include "Analysis/LockSet.h"
#include "Analysis/SharedMemory.h"
#include "LanguageModel/RaceModel.h"
#include "PreProcessing/PreProcessing.h"
#include "Trace/ProgramTrace.h"

using namespace race;

bool isRace(const race::WriteEvent *write, const race::MemAccessEvent *other, const HappensBeforeGraph &happensbefore,
            const LockSet &lockset) {
  return happensbefore.areParallel(write, other) && !lockset.sharesLock(write, other);
}

Report race::detectRaces(llvm::Module *module) {
  race::Reporter reporter;

  race::ProgramTrace program(module);
  race::SharedMemory sharedmem(program);
  race::HappensBeforeGraph happensbefore(program);
  race::LockSet lockset(program);

  for (auto const sharedObj : sharedmem.getSharedObjects()) {
    auto threadedWrites = sharedmem.getThreadedWrites(sharedObj);
    auto threadedReads = sharedmem.getThreadedReads(sharedObj);

    for (auto it = threadedWrites.begin(), end = threadedWrites.end(); it != end; ++it) {
      auto const wtid = it->first;
      auto const writes = it->second;
      // check Read/Write race
      for (auto const &[rtid, reads] : threadedReads) {
        if (wtid == rtid) continue;
        for (auto write : writes) {
          for (auto read : reads) {
            if (isRace(write, read, happensbefore, lockset)) {
              reporter.collect(write, read);
            }
          }
        }
      }

      // Check write/write
      for (auto wit = std::next(it, 1); wit != end; ++wit) {
        auto otherWrites = wit->second;
        for (auto write : writes) {
          for (auto otherWrite : otherWrites) {
            if (isRace(write, otherWrite, happensbefore, lockset)) {
              reporter.collect(write, otherWrite);
            }
          }
        }
      }
    }
  }

  llvm::outs() << program << "\n";

  // TODO: this is probably not the best place to call this function
  reporter.dumpReport();
  return reporter.getReport();
}
