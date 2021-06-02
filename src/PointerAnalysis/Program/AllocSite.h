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

#include <llvm/IR/GlobalValue.h>
#include <llvm/IR/Operator.h>
#include <llvm/IR/Value.h>

namespace pta {

// forward declaration
template <typename ctx>
class FIObject;

template <typename ctx>
class MemBlock;

enum class AllocKind : uint8_t {
  Stack = 0,
  Heap = 1,
  Functions = 2,
  Globals = 3,
  Anonymous = 4,  // logically exist, but does not have a concrete allocation
                  // site (e.g., argument passed to main)
  Null = 5,
  Universal = 6,
};

template <typename ctx>
class AllocSite {
 private:
  // allocated context
  const ctx *const context;
  // the llvm value that allocates the memory block
  const llvm::Value *const value;
  // allocate type
  const AllocKind type;
  // can only be created by allocating a new memory block
  // there is only one instance of AllocSite per ctx+value
  AllocSite(const ctx *c, const llvm::Value *v, const AllocKind t) : context(c), value(v), type(t) {
    assert(value != nullptr || type == AllocKind::Anonymous);
  }

 public:
  // making a copy of an allocation site is not allowed.
  AllocSite(const AllocSite<ctx> &) = delete;
  AllocSite(AllocSite<ctx> &&) = delete;
  AllocSite<ctx> &operator=(const AllocSite<ctx> &) = delete;
  AllocSite<ctx> &operator=(AllocSite<ctx> &&) = delete;

  // getters
  [[nodiscard]] inline const ctx *getContext() const { return this->context; }

  [[nodiscard]] inline const llvm::Value *getValue() const { return this->value; }

  [[nodiscard]] inline AllocKind getAllocType() const { return this->type; }

  [[nodiscard]] inline const llvm::Module *getLLVMModule() const {
    if (value == nullptr) {
      return nullptr;
    }

    if (auto I = llvm::dyn_cast<llvm::Instruction>(value)) {
      return I->getModule();
    } else if (auto G = llvm::dyn_cast<llvm::GlobalValue>(value)) {
      return G->getParent();
    }

    // what else can it be??
    return nullptr;
  }

  friend FIObject<ctx>;
  friend MemBlock<ctx>;
};

}  // namespace pta
