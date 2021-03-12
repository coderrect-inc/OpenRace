#pragma once

#include "llvm/ADT/StringRef.h"

namespace PthreadModel {

inline bool isPthreadCreate(const llvm::StringRef &funcName) { return funcName.equals("pthread_create"); }
inline bool isPthreadJoin(const llvm::StringRef &funcName) { return funcName.equals("pthread_join"); }
inline bool isPthreadMutexLock(const llvm::StringRef &funcName) { return funcName.equals("pthread_mutex_lock"); }
inline bool isPthreadMutexUnlock(const llvm::StringRef &funcName) { return funcName.equals("pthread_mutex_unlock"); }
}  // namespace PthreadModel