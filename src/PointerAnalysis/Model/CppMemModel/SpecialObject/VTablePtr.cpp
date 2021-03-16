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
// Created by peiming on 8/27/20.
//

#include "PointerAnalysis/Models/MemoryModel/CppMemModel/SpecialObject/VTablePtr.h"

#include "llvm/IR/Type.h"

using namespace llvm;

namespace pta {

bool isVTablePtrType(const llvm::Type *type) {
  static Type *vtableType = nullptr;

  if (vtableType == nullptr) {
    // vtable type i32 (...)**
    auto &C = type->getContext();
    auto elemTy = FunctionType::get(IntegerType::get(C, 32), true);
    vtableType = PointerType::get(PointerType::get(elemTy, 0), 0);
  }

  return type == vtableType;
}

}  // namespace pta