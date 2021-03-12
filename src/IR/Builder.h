#pragma once

#include <memory>
#include <vector>

#include "IR/IR.h"

namespace race {
using RaceFunction = std::vector<std::shared_ptr<const IR>>;

RaceFunction generateRaceFunction(const llvm::Function *func);
RaceFunction generateRaceFunction(const llvm::Function &func);

// class Builder {
//     mutable std::map<const llvm::Function *, std::shared_ptr<RaceFunction>> cache;
// };
}  // namespace race