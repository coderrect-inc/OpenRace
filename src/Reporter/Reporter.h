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

#include <Trace/ProgramTrace.h>
namespace race {

struct SourceLoc {
  llvm::StringRef filename;
  unsigned int line;
  unsigned int col;

  SourceLoc() : filename("UNKOWN"), line(0), col(0) {}
  SourceLoc(llvm::StringRef filename, unsigned int line, unsigned int col) : filename(filename), line(line), col(col) {}
  explicit SourceLoc(const llvm::DILocation *loc)
      : filename(loc->getFilename()), line(loc->getLine()), col(loc->getColumn()) {}

  // Location is unknown
  bool isUnkown() const { return filename == "UNKOWN"; }

  inline bool operator==(const SourceLoc &other) const {
    return filename == other.filename && line == other.line && col == other.col;
  }

  inline bool operator<(const SourceLoc &other) const {
    if (filename < other.filename) return true;
    if (line < other.line) return true;
    return col < other.col;
  }
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const SourceLoc &loc);

struct Race {
 public:
  SourceLoc first;
  SourceLoc second;
  Race(SourceLoc first, SourceLoc second) : first(first), second(second) {
    if (second < first) std::swap(first, second);
  }

  inline bool operator==(const Race &other) const { return first == other.first && second == other.second; }
  inline bool operator<(const Race &other) const {
    if (first < other.first) return true;
    return second < other.second;
  }
};

llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const Race &race);

using Report = std::set<Race>;
// Helpers for testing
bool reportContains(const Report &report, Race race);
bool reportContains(const Report &report, std::vector<Race> races);

class Reporter {
  std::vector<std::pair<const WriteEvent *, const MemAccessEvent *>> races;

 public:
  void collect(const WriteEvent *e1, const MemAccessEvent *e2);

  [[nodiscard]] Report getReport() const;
};

}  // namespace race
