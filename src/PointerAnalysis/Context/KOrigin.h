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

//
// Created by peiming on 11/19/19.
//

#ifndef PTA_KORIGIN_H
#define PTA_KORIGIN_H

#include <llvm/ADT/StringSet.h>

#include "CtxTrait.h"
#include "KCallSite.h"
#include "Logging/Log.h"

namespace pta {

template <uint32_t K, uint32_t L = 1>
struct OriginsSetter;

// L is only useful in hybrid context,
// e.g., when use with <k-callsite + origin>, L=k+1 can make origin more precise

// TODO: support L > 1 to make it more accurate
// L is the length of the callchain that can be used to indentify an origin
template <uint32_t K, uint32_t L = 1>
class KOrigin : public KCallSite<K * L> {
 private:
  using self = KOrigin<K, L>;
  using super = KCallSite<K * L>;

  static std::function<bool(const self *, const llvm::Instruction *)> callback;

 public:
  KOrigin() noexcept : super() {}
  KOrigin(const self *prevCtx, const llvm::Instruction *I) : super(prevCtx, I) {}

  static void setOriginRules(std::function<bool(const self *, const llvm::Instruction *)> cb) { callback = cb; }

  KOrigin(const self &) = delete;
  KOrigin(self &&) = delete;
  KOrigin &operator=(const self &) = delete;
  KOrigin &operator=(self &&) = delete;

  friend OriginsSetter<K, L>;
  friend CtxTrait<KOrigin<K, L>>;
};

template <uint32_t K, uint32_t L>
struct CtxTrait<KOrigin<K, L>> {
 private:
  static const KOrigin<K, L> initCtx;
  static const KOrigin<K, L> globCtx;
  static std::unordered_set<KOrigin<K, L>> ctxSet;

 public:
  static const KOrigin<K, L> *contextEvolve(const KOrigin<K, L> *prevCtx, const llvm::Instruction *I) {
    if constexpr (L == 1) {
      if (KOrigin<K, L>::callback(prevCtx, I)) {
        auto result = ctxSet.emplace(prevCtx, I);
        return &*result.first;
      }
      return prevCtx;
    } else {
      llvm_unreachable("No support yet");
    }
  }

  inline static size_t getNumCtx() { return ctxSet.size(); }

  static const KOrigin<K, L> *getInitialCtx() { return &initCtx; }

  static const KOrigin<K, L> *getGlobalCtx() { return &globCtx; }

  // 3rd, string representation
  static std::string toString(const KOrigin<K, L> *context, bool detailed = false) {
    if (context == &globCtx) return "<global>";
    if (context == &initCtx) return "<empty>";
    return context->toString(detailed);
  }

  static void release() { ctxSet.clear(); }
};

template <uint32_t K, uint32_t L>
const KOrigin<K, L> CtxTrait<KOrigin<K, L>>::initCtx{};

template <uint32_t K, uint32_t L>
const KOrigin<K, L> CtxTrait<KOrigin<K, L>>::globCtx{};

template <uint32_t K, uint32_t L>
std::unordered_set<KOrigin<K, L>> CtxTrait<KOrigin<K, L>>::ctxSet{};

template <uint32_t K, uint32_t L>
std::function<bool(const KOrigin<K, L> *, const llvm::Instruction *)> KOrigin<K, L>::callback =
    [](const KOrigin<K, L> *, const llvm::Instruction *) {
      // by default no function is origin
      return false;
    };

}  // namespace pta

namespace std {

// only hash context and value
template <uint32_t K, uint32_t L>
struct hash<pta::KOrigin<K, L>> {
  size_t operator()(const pta::KOrigin<K, L> &origin) const { return hash<pta::KCallSite<K * L>>()(origin); }
};

}  // namespace std

#endif
