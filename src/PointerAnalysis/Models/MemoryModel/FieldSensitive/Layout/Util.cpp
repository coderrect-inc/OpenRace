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

#include "Util.h"

#include <llvm/IR/DataLayout.h>
#include <llvm/IR/GetElementPtrTypeIterator.h>
#include <llvm/IR/GlobalAlias.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Operator.h>
#include <llvm/Support/CommandLine.h>

#include "PointerAnalysis/Models/MemoryModel/FieldSensitive/Layout/ArrayLayout.h"

using namespace llvm;

namespace pta {

// get the step size of the getelementptr (which uses variable index)
// return MAX_size_t when it can not be resolved
size_t getGEPStepSize(const GetElementPtrInst *GEP, const DataLayout &DL) {
  assert(!GEP->hasAllConstantIndices());
  // since we canonicalized the getelementptr instruction before, the
  // getelementptr that uses variable to index object can only two different
  // forms
  assert(GEP->getNumOperands() == 2 || GEP->getNumOperands() == 3 ||
         (GEP->getNumOperands() == 4 && llvm::isa<llvm::UndefValue>(GEP->getOperand(3))));

  for (gep_type_iterator GTI = gep_type_begin(GEP), GTE = gep_type_end(GEP); GTI != GTE; GTI++) {
    // 1st, the first idx is zero, and the second idx is a variable
    // getelementptr [type], [type *] %obj, 0, %var
    // or the first and second indexes are zero, and the third idx is a undef
    if (isa<UndefValue>(GTI.getOperand())) {
      return std::numeric_limits<size_t>::max();
    } else if (isa<Constant>(GTI.getOperand())) {
      assert(dyn_cast<Constant>(GTI.getOperand())->isZeroValue());
      continue;
    }

    // 2nd, the first idx is variable
    // getelementptr [type], [type *] %obj, %var
    assert(!isa<Constant>(GTI.getOperand()));
    return DL.getTypeAllocSize(GTI.getIndexedType());
  }

  llvm_unreachable("bad gep format");
}

bool isArrayExistAtOffset(const std::map<size_t, ArrayLayout *> &arrayMap, size_t pOffset, size_t elementSize) {
  if (arrayMap.empty()) {
    return false;
  }

  auto it = arrayMap.find(pOffset);
  if (it != arrayMap.end()) {
    ArrayLayout *arrLayout = it->second;
    if (arrLayout->getElementSize() == elementSize) {
      return true;
    } else if (arrLayout->getElementSize() < elementSize) {
      // for flang
      if (arrLayout->getElementSize() == 1) {
        return true;
      }
      return false;
    }

    // the current layout is larger than the element size,
    // the underlying layout might be nested inside and is an array at zero
    // offset
    return isArrayExistAtOffset(arrLayout->getSubArrayMap(), 0, elementSize);
  } else {
    for (auto it : arrayMap) {
      size_t arrOffset = it.first;
      ArrayLayout *arrLayout = it.second;

      if (arrOffset < pOffset && arrOffset + arrLayout->getArraySize() >= elementSize) {
        // might be nested here
        return isArrayExistAtOffset(arrLayout->getSubArrayMap(), pOffset - arrOffset, elementSize);
      }
    }
  }

  return false;
}

}  // namespace pta
