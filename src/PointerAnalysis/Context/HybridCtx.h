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

#include <llvm/ADT/STLExtras.h>
#include <llvm/IR/Instruction.h>

#include <tuple>
#include <unordered_set>

#include "CtxTrait.h"
#include "KOrigin.h"

namespace pta {
// although we only have two context (origin, callsite)
// we make it va_args in case of future extension
template <typename... Args>
class HybridCtx {
  std::tuple<const Args *...> ctx;

 private:
  template <size_t... N>
  static std::tuple<const Args *...> evolveInnerContext(const HybridCtx<Args...> *prevCtx, const llvm::Instruction *I,
                                                        std::index_sequence<N...>) {
    return {CtxTrait<Args>::contextEvolve(std::get<N>(prevCtx->ctx), I)...};
  }

 public:
  explicit HybridCtx(const Args *...args) : ctx{args...} {}

  HybridCtx(const HybridCtx<Args...> *prevCtx, const llvm::Instruction *I)
      : ctx(evolveInnerContext(prevCtx, I, std::index_sequence_for<Args...>{})) {}

  const std::tuple<const Args *...> &getContext() const { return ctx; }

  [[nodiscard]] std::string toString(bool detailed) const {
    std::string str;
    llvm::raw_string_ostream os(str);
    if (detailed) {
      os << "<origin: ";  // KOrigin
      const pta::KOrigin<3> *const origins = std::get<0>(ctx);
      os << origins->toString(detailed) << " || callsite: ";
      const pta::KCallSite<1> *const cs = std::get<1>(ctx);  // KCallSite
      os << cs->toString(detailed);
      os << ">";
    } else {  // print out the origins
      os << "<";
      auto origins = std::get<0>(ctx);
      os << origins->toString(detailed) << ">";
    }
    return os.str();
  }

  friend CtxTrait<HybridCtx<Args...>>;
  friend std::hash<pta::HybridCtx<Args...>>;
};

// for container operation
template <typename... Args>
bool operator==(const HybridCtx<Args...> &lhs, const HybridCtx<Args...> &rhs) {
  return isTupleEqual(lhs.getContext(), rhs.getContext());
}

// here is the true logic
// basically just delegate it to different CtxTrait
template <typename... Args>
struct CtxTrait<HybridCtx<Args...>> {
 private:
  static const HybridCtx<Args...> initCtx;
  static const HybridCtx<Args...> globCtx;
  static std::unordered_set<HybridCtx<Args...>> ctxSet;

 public:
  static const HybridCtx<Args...> *contextEvolve(const HybridCtx<Args...> *prevCtx, const llvm::Instruction *I) {
    auto result = ctxSet.emplace(prevCtx, I);
    return &*result.first;
  }

  static const HybridCtx<Args...> *getInitialCtx() { return &initCtx; }
  static const HybridCtx<Args...> *getGlobalCtx() { return &globCtx; }

  static std::string toString(const HybridCtx<Args...> *context, bool detailed = false) {
    if (context == &globCtx) return "<global>";
    if (context == &initCtx) return "<empty>";

    return context->toString(detailed);
  }

  static void release() { ctxSet.clear(); }
};

template <typename... Args>
const HybridCtx<Args...> CtxTrait<HybridCtx<Args...>>::initCtx{CtxTrait<Args>::getInitialCtx()...};

template <typename... Args>
const HybridCtx<Args...> CtxTrait<HybridCtx<Args...>>::globCtx{CtxTrait<Args>::getGlobalCtx()...};

template <typename... Args>
std::unordered_set<HybridCtx<Args...>> CtxTrait<HybridCtx<Args...>>::ctxSet{};

}  // namespace pta

namespace std {

// only hash context and value
template <typename... Args>
struct hash<pta::HybridCtx<Args...>> {
  template <size_t... N>
  size_t hash_tuple(const pta::HybridCtx<Args...> &wrapper, std::index_sequence<N...> sequence) const {
    llvm::hash_code code = llvm::hash_combine(static_cast<const void *>(std::get<N>(wrapper.ctx))...);
    return hash_value(code);
  }

  size_t operator()(const pta::HybridCtx<Args...> &wrapper) const {
    return this->hash_tuple(wrapper, std::index_sequence_for<Args...>{});
  }
};

}  // namespace std
