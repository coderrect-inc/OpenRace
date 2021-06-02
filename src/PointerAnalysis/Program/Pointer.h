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

#include "PointerAnalysis/Util/Util.h"

// represent pointers in programs
#include <llvm/ADT/Hashing.h>

namespace pta {

template <typename ctx>
class CGPtrNode;

template <typename ctx>
class Pointer {
 private:
  const ctx *context;
  const llvm::Value *value;  // can be an instruction or global variables
  CGPtrNode<ctx> *ptrNode = nullptr;

 public:
  Pointer(const ctx *context, const llvm::Value *value) : context(context), value(value) {}

  Pointer(const Pointer<ctx> &) = delete;
  Pointer(Pointer<ctx> &&) = delete;  // can not be moved! as the address is held by the
                                      // corresponding callgraph node
  Pointer<ctx> &operator=(const Pointer<ctx> &) = delete;
  Pointer<ctx> &operator=(Pointer<ctx> &&) = delete;

  [[nodiscard]] inline const ctx *getContext() const { return context; }

  [[nodiscard]] inline const llvm::Value *getValue() const { return value; }

  inline void setPtrNode(CGPtrNode<ctx> *node) {
    assert(ptrNode == nullptr);  // can only be set once
    this->ptrNode = node;
  }

  [[nodiscard]] inline CGPtrNode<ctx> *getPtrNode() const { return ptrNode; }
};

// for container operation
template <typename ctx>
bool operator==(const Pointer<ctx> &lhs, const Pointer<ctx> &rhs) {
  return lhs.getContext() == rhs.getContext() && lhs.getValue() == rhs.getValue();
}

template <typename ctx>
bool operator<(const Pointer<ctx> &lhs, const Pointer<ctx> &rhs) {
  if (lhs.getValue() == rhs.getValue()) {
    return lhs.getContext() < rhs.getContext();
  }
  return lhs.getValue() < rhs.getValue();
}

}  // namespace pta

namespace std {
// only hash context and value
template <typename ctx>
struct hash<pta::Pointer<ctx>> {
  size_t operator()(const pta::Pointer<ctx> &ptr) const {
    llvm::hash_code seed = llvm::hash_value(ptr.getContext());
    llvm::hash_code hash = llvm::hash_combine(ptr.getValue(), seed);
    return hash_value(hash);
  }
};

}  // namespace std
