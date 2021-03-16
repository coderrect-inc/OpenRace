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
// Created by peiming on 1/9/20.
//
#ifndef PTA_CONSTEXPRVISITOR_H
#define PTA_CONSTEXPRVISITOR_H

#include <llvm/IR/Constant.h>
#include <llvm/IR/Instructions.h>

#include "Logging/Log.h"

namespace pta {

/// This class defines a simple visitor class that may be used for
/// various SCEV analysis purposes.
template <typename SC, typename RetVal = void>
struct ConstExprVisitor {
  RetVal visit(const llvm::Constant *C) {
    if (auto CE = llvm::dyn_cast<llvm::ConstantExpr>(C)) {
      switch (CE->getOpcode()) {
        case llvm::Instruction::GetElementPtr:
          return ((SC *)this)->visitGEP(llvm::dyn_cast<llvm::GEPOperator>(CE));
        case llvm::Instruction::BitCast:
          return ((SC *)this)->visitBitCast(llvm::dyn_cast<llvm::BitCastOperator>(CE));
        default:
          // TODO handle more!
          LOG_ERROR("unhandled constant expression. type={}", *C);
          llvm_unreachable("h SCEV type!");
      }
    } else {
      return ((SC *)this)->visitConstant(C);
    }
  }
};

}  // namespace pta

#endif
