#pragma once

#include <set>

#include "PointerAnalysis/RaceModel.h"
#include "Trace/ProgramTrace.h"

namespace race {

class LockSet {
 public:
  explicit LockSet(const ProgramTrace &program);

  [[nodiscard]] bool sharesLock(const MemAccessEvent *lhs, const MemAccessEvent *rhs) const;
};
}  // namespace race
