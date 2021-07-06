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
#include <llvm/IR/Function.h>

namespace OpenMPModel {

namespace {
// return true of funcName equals any name in names
bool matchesAny(const llvm::StringRef& funcName, const std::vector<llvm::StringRef>& names) {
  for (auto const& name : names) {
    if (funcName.equals(name)) return true;
  }
  return false;
}
}  // namespace

inline bool isFork(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_fork_call"); }
inline bool isFork(const llvm::CallBase* callInst) {
  if (!callInst) return false;
  auto const func = callInst->getCalledFunction();
  if (!func->hasName()) return false;
  return isFork(func->getName());
}

inline bool isForStaticInit(const llvm::StringRef& funcName) {
  // Each version functions the same, only argument types slightly differ
  return matchesAny(funcName, {"__kmpc_for_static_init_4", "__kmpc_for_static_init_4u", "__kmpc_for_static_init_8",
                               "__kmpc_for_static_init_8u"});
}
inline bool isForStaticFini(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_for_static_fini"); }

inline bool isForDispatchInit(const llvm::StringRef& funcName) { return funcName.startswith("__kmpc_dispatch_init"); }
inline bool isForDispatchNext(const llvm::StringRef& funcName) { return funcName.startswith("__kmpc_dispatch_next"); }
inline bool isForDispatchFini(const llvm::StringRef& funcName) { return funcName.startswith("__kmpc_dispatch_fini"); }

inline bool isSingleStart(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_single"); }
inline bool isSingleEnd(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_end_single"); }

inline bool isBarrier(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_barrier"); }

inline bool isReduceStart(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_reduce"); }
inline bool isReduceEnd(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_end_reduce"); }

inline bool isReduceNowaitStart(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_reduce_nowait"); }
inline bool isReduceNowaitEnd(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_end_reduce_nowait"); }

inline bool isCriticalStart(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_critical"); }
inline bool isCriticalEnd(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_end_critical"); }

inline bool isMasterStart(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_master"); }
inline bool isMasterEnd(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_end_master"); }

inline bool isSetLock(const llvm::StringRef& funcName) { return funcName.equals("omp_set_lock"); }
inline bool isUnsetLock(const llvm::StringRef& funcName) { return funcName.equals("omp_unset_lock"); }

inline bool isSetNestLock(const llvm::StringRef& funcName) { return funcName.equals("omp_set_nest_lock"); }
inline bool isUnsetNestLock(const llvm::StringRef& funcName) { return funcName.equals("omp_unset_nest_lock"); }

inline bool isOrderedStart(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_ordered"); }
inline bool isOrderedEnd(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_end_ordered"); }

// Return true for omp calls that do not need to be modelled (e.g. push_num_threads)
inline bool isNoEffect(const llvm::StringRef& funcName) {
  return matchesAny(funcName, {"__kmpc_push_num_threads", "__kmpc_global_thread_num", "__kmpc_copyprivate"})
         // we dont rely on reduce end to find end of reduce region
         || isReduceEnd(funcName) || isReduceNowaitEnd(funcName);
}

// Used only for debug to try and catch unhandled OpenMP calls
inline bool isOpenMP(const llvm::StringRef& funcName) { return funcName.startswith("__kmpc"); }

// Matches any OpenMP outlined functions, including the outer debug outlined functions
inline bool isOutlined(const llvm::StringRef& funcName) { return funcName.startswith(".omp_outlined."); }

// When OpenMP is compiled with debug info an outer "debug" outline function is generated
inline bool isDebugOutlined(const llvm::StringRef& funcName) { return funcName.startswith(".omp_outlined._debug"); }

inline bool isTaskAlloc(const llvm::StringRef& funcName) { return funcName.equals("__kmpc_omp_task_alloc"); }

inline bool isGetThreadNum(const llvm::StringRef& funcName) { return funcName.equals("omp_get_thread_num"); }

}  // namespace OpenMPModel