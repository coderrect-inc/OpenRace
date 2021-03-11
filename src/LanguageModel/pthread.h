#pragma once

#include "llvm/ADT/StringRef.h"

namespace PthreadModel {

bool isPthreadCreate(const llvm::StringRef &funcName) { return funcName.equals("pthread_create"); }
bool isPthreadJoin(const llvm::StringRef &funcName) { return funcName.equals("pthread_join"); }
bool isPthreadMutexLock(const llvm::StringRef &funcName) { return funcName.equals("pthread_mutex_lock"); }
bool isPthreadMutexUnlock(const llvm::StringRef &funcName) { return funcName.equals("pthread_mutex_unlock"); }
}  // namespace PthreadModel