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

#include <llvm/ADT/StringRef.h>
#include <llvm/IR/Module.h>

#include "Trace/ProgramTrace.h"

namespace race {

struct CoverageData {
  // a map of fn signature with fn from module
  std::map<std::string, const llvm::Function *> total;

  // a map of fn signature with fn from program
  std::map<std::string, const llvm::Function *> analyzed;

  // a set of fn that openrace does not analyze
  std::vector<std::string> unAnalyzed;
};

class Coverage {
  const ProgramTrace &program;
  const llvm::Module &module;

 public:
  explicit Coverage(const ProgramTrace &program);

  CoverageData data;

  // compute coverage = (#function analyzed in openrace/#function in the whole program IR)
  void computeFnCoverage();

  // compute coverage = (#read and write analyzed in openrace/#read and write in the whole program IR)
  void computeMemAccessCoverage();

 private:
  // compute necessary information in CoverageData
  void summarize();
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const Coverage &cvg);

}  // namespace race