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

#include <llvm/Analysis/ScopedNoAliasAA.h>

#include "Analysis/HappensBeforeGraph.h"
#include "Analysis/LockSet.h"
#include "Analysis/OpenMPAnalysis.h"
#include "Analysis/SharedMemory.h"
#include "Analysis/SimpleAlias.h"
#include "LanguageModel/RaceModel.h"
#include "PreProcessing/PreProcessing.h"
#include "Trace/ProgramTrace.h"

using namespace race;

Report race::detectRaces(llvm::Module *module, DetectRaceConfig config) {
  race::ProgramTrace program(module);

  if (config.dumpPreprocessedIR.has_value()) {
    std::error_code err;
    llvm::raw_fd_ostream outfile(config.dumpPreprocessedIR.value(), err);
    if (err) {
      llvm::errs() << "Error dumping preprocessed IR!\n";
    } else {
      program.getModule().print(outfile, nullptr);
      outfile.close();
    }
  }

  race::SharedMemory sharedmem(program);
  race::HappensBeforeGraph happensbefore(program);
  race::LockSet lockset(program);
  race::SimpleAlias simpleAlias;
  race::OpenMPAnalysis ompAnalysis(program);

  race::Reporter reporter;

  llvm::PassBuilder PB;
  llvm::FunctionAnalysisManager FAM;
  PB.registerFunctionAnalyses(FAM);
  // contains default AA pipeline (type + scoped + global)
  // but i do not know how to register it properly now
  // FAM.registerPass([&] { return PB.buildDefaultAAPipeline(); });

  // Adds to report if race is detected between write and other
  auto checkRace = [&](const race::WriteEvent *write, const race::MemAccessEvent *other) {
    if (DEBUG_PTA) {
      llvm::outs() << "Checking Race: " << write->getID() << " " << other->getID() << "\n";
    }
    if (!happensbefore.areParallel(write, other) || lockset.sharesLock(write, other)) {
      return;
    }

    if (simpleAlias.mustNotAlias(write, other)) {
      return;
    }

    if (ompAnalysis.fromSameParallelRegion(write, other)) {
      // Non overlapping array accesses inside of an OpenMP loop are not races
      // e.g.
      //  #pragma omp parallel for shared(A)
      //  for (int i = 0; i < N: i++) { A[i] = i; }
      // even though A is shared, each index is unique so there is no race
      if (ompAnalysis.isLoopArrayAccess(write, other) && !ompAnalysis.canIndexOverlap(write, other)) {
        return;
      }

      // Certain omp blocks cannot race with themselves or those of the same type within the same scope/team
      if (ompAnalysis.inSameSingleBlock(write, other) || ompAnalysis.inSameReduce(write, other) ||
          ompAnalysis.bothInMasterBlock(write, other) || race::OpenMPAnalysis::insideCompatibleSections(write, other)) {
        return;
      }

      // No race if guaranteed to be executed by same thread
      if (ompAnalysis.guardedBySameTid(write, other)) return;
    }

    // Race detected
    reporter.collect(write, other);
  };

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
            checkRace(write, read);
          }
        }
      }

      // Check write/write
      for (auto wit = std::next(it, 1); wit != end; ++wit) {
        auto otherWrites = wit->second;
        for (auto write : writes) {
          for (auto otherWrite : otherWrites) {
            checkRace(write, otherWrite);
          }
        }
      }
    }
  }

  llvm::outs() << program << "\n";

  return reporter.getReport();
}
