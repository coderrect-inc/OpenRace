#pragma once

#include "llvm/ADT/StringRef.h"

namespace OpenMPModel {

inline bool isFork(const llvm::StringRef &funcName) { return funcName.equals("__kmpc_fork_call"); }

}