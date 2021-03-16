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
// Created by peiming on 7/21/20.
//
#include "PointerAnalysis/Models/MemoryModel/CppMemModel/SpecialObject/Vector.h"

#include <llvm/ADT/StringRef.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Type.h>

#include <memory>

#include "Demangler/Demangler.h"

using namespace llvm;

namespace pta {
namespace cpp {

std::map<StringRef, VectorAPI::APIKind> VectorAPI::VecAPIMap = {
    {"push_back", APIKind::PUSH_BACK},       {"begin", APIKind::IT_BEGIN}, {"end", APIKind::IT_END},
    {"operator[]", APIKind::OPERATOR_INDEX}, {"vector", APIKind::CTOR},    {"~vector", APIKind::DTOR},
};

void VectorAPI::init(const Function *fun) {
  if (fun == nullptr) {
    return;
  }
  if (demangler.partialDemangle(fun->getName().data())) {
    // fail to demangle function name
    return;
  }

  StringRef funContext = demangler.getFunctionDeclContextName(nullptr, nullptr);
  if (funContext.startswith("std::vector")) {
    const llvm::Value *theVec = fun->arg_begin();  // the *this*
    if (theVec != nullptr) {
      if (theVec->getType()->isPointerTy()) {
        this->vecElemType = resolveVecElemType(theVec->getType()->getPointerElementType());
        if (this->vecElemType && isSupportedElementType(this->vecElemType)) {
          // a resolvable vector API
          StringRef funBaseName = demangler.getFunctionBaseName(nullptr, nullptr);
          auto it = VecAPIMap.find(funBaseName);
          if (it != VecAPIMap.end()) {
            this->kind = it->second;
          }
        }
      }
    }
  }
}

const Type *VectorAPI::resolveVecElemType(const Type *T) {
  auto ST = dyn_cast<StructType>(T);
  if (ST == nullptr) {
    return nullptr;
  }

  // by convention, the struct name is "class.std::vector.XXX" (where XXX is
  // number)
  // FIXME: vector<bool> is specialized, so it will break the convention we used
  // here
  if (ST->hasName() && ST->getStructName().startswith("class.std::vector")) {
    // go down the type tree, eventually it will become
    while (ST->getNumElements() == 1) {
      ST = cast<StructType>(ST->getElementType(0));
    }

    // this is the element type
    // %"XXX::_Vector_impl_data" = type { optional allocator type, %class.A**,
    // %class.A**, %class.A** }
    if (ST->getElementType(1)->isPointerTy()) {
      return ST->getElementType(1)->getPointerElementType();
    }
  }

  return nullptr;
}

}  // namespace cpp
}  // namespace pta