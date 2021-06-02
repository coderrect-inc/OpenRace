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

#include "RewriteModeledAPIPass.h"

#include <llvm/IR/IRBuilder.h>

#include "Demangler/Demangler.h"
#include "PointerAnalysis/Models/MemoryModel/CppMemModel/SpecialObject/Vector.h"

using namespace llvm;

extern cl::opt<bool> CONFIG_VTABLE_MODE;

namespace pta::cpp {

inline bool isVTableVariable(const llvm::Value *g) {
  if (g->hasName()) {
    auto name = getDemangledName(g->getName());
    if (name.find("vtable for") != std::string::npos) {
      return true;
    }
  }
  return false;
}

bool RewriteModeledAPIPass::runOnFunction(llvm::Function &F) {
  // for now simple delete all the function body to avoid inline
  // TODO: in the future, different API can be transformed in unified form so
  // that they can get analyzed simpler e.g., std::set::insert() and
  // std::vector::push_back() are the same to pointer analysis
  VectorAPI API(&F);
  if (API.getAPIKind() != VectorAPI::APIKind::UNKNOWN) {
    F.deleteBody();
    return true;
  }

  if (CONFIG_VTABLE_MODE) {
    // here mark the vtable instruction
    bool changed = false;
    pta::Demangler demangler;

    if (!demangler.partialDemangle(F.getName())) {
      std::vector<StoreInst *> removedInst;

      if (demangler.isCtor()) {
        IRBuilder<> builder(F.getContext());

        for (auto &BB : F) {
          for (auto &I : BB) {
            // there should be a store instruction that stores the vtable into
            // the object
            if (auto SI = dyn_cast<StoreInst>(&I)) {
              // store instruction is used to set vtable
              if (SI->getPointerOperand()->stripInBoundsConstantOffsets() == F.arg_begin() &&
                  isVTableVariable(SI->getValueOperand()->stripInBoundsConstantOffsets())) {
                // covert the store of the vtable into a special function call
                // so that it can get intercepted by the memory model and we can
                // then perform special handling on it
                auto vtInit =
                    F.getParent()->getOrInsertFunction(".coderrect.vtable.init", llvm::Type::getVoidTy(F.getContext()),
                                                       SI->getPointerOperandType(), SI->getValueOperand()->getType());
                removedInst.push_back(SI);

                builder.SetInsertPoint(SI);
                builder.CreateCall(vtInit, {SI->getPointerOperand(), SI->getValueOperand()});
                changed = true;
              }
            }
          }
        }
      }
      for (auto SI : removedInst) {
        SI->eraseFromParent();
      }
    }
    return changed;
  }

  return false;
}

char RewriteModeledAPIPass::ID = 0;
static RegisterPass<RewriteModeledAPIPass> RMP("", "", false, /*CFG only*/ false /*is analysis*/);
}  // namespace pta::cpp
