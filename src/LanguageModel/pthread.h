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

#include "llvm/ADT/StringRef.h"

namespace PthreadModel {

inline bool isPthreadCreate(const llvm::StringRef &funcName) { return funcName.equals("pthread_create"); }
inline bool isPthreadJoin(const llvm::StringRef &funcName) { return funcName.equals("pthread_join"); }
inline bool isPthreadMutexLock(const llvm::StringRef &funcName) { return funcName.equals("pthread_mutex_lock"); }
inline bool isPthreadMutexUnlock(const llvm::StringRef &funcName) { return funcName.equals("pthread_mutex_unlock"); }
inline bool isPthreadSpinLock(const llvm::StringRef &funcName) { return funcName.equals("pthread_spin_lock"); }
inline bool isPthreadSpinUnlock(const llvm::StringRef &funcName) { return funcName.equals("pthread_spin_unlock"); }
}  // namespace PthreadModel