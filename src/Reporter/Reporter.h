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

  bool operator==(const SourceLoc &other) const {
    return filename == other.filename && line == other.line && col == other.col;
  }

  bool operator<(const SourceLoc &other) const {
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

  bool operator==(const Race &other) const { return first == other.first && second == other.second; }
};

using Report = std::vector<Race>;

class Reporter {
  std::vector<std::pair<const WriteEvent *, const MemAccessEvent *>> races;

 public:
  void collect(const WriteEvent *e1, const MemAccessEvent *e2);

  [[nodiscard]] Report getReport() const;
};

}  // namespace race
