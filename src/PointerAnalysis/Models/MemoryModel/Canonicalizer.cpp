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

//#include <llvm/IR/CallSite.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/IR/GlobalAlias.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Operator.h>
#include <llvm/Support/CommandLine.h>

#include "PointerAnalysis/Models/MemoryModel/FieldInsensitive/FICanonicalizer.h"
#include "PointerAnalysis/Models/MemoryModel/FieldSensitive/FSCanonicalizer.h"
#include "PointerAnalysis/Models/MemoryModel/FieldSensitive/Layout/ArrayLayout.h"

using namespace pta;
using namespace llvm;

extern cl::opt<bool> USE_MEMLAYOUT_FILTERING;
extern cl::opt<bool> CONFIG_USE_FI_MODE;

static auto stripNullOrUnDef(const Value *V) -> const Value * {
  // a uni ptr
  if (isa<UndefValue>(V)) {
    V = UndefValue::get(llvm::Type::getInt8PtrTy(V->getContext()));
  }

  // a null ptr
  if (auto C = dyn_cast<Constant>(V)) {
    if (C->isNullValue()) {
      V = ConstantPointerNull::get(Type::getInt8PtrTy(V->getContext()));
    }
  }

  if (Operator::getOpcode(V) == Instruction::IntToPtr) {
    if (auto ptrToInt = llvm::dyn_cast<PtrToIntOperator>(cast<Operator>(V)->getOperand(0))) {
      // handle (inttoptr (ptrtoint %ptr)) pattern
      V = ptrToInt->getOperand(0);
    } else {
      // inttoptr creates universal ptr, change it to
      V = UndefValue::get(Type::getInt8PtrTy(V->getContext()));
    }
  }
  return V;
}

// modified from llvm::stripPointerCastsAndOffsets
auto FICanonicalizer::stripPointerCastsAndOffsets(const Value *V) -> const Value * {
  // Even though we don't look through PHI nodes, we could be called on an
  // instruction in an unreachable block, which may be on a cycle.
  SmallPtrSet<const Value *, 4> Visited;
  Visited.insert(V);
  do {
    if (auto *GEP = dyn_cast<GEPOperator>(V)) {
      // skip even if GEP is not in_bound
      V = GEP->getPointerOperand();
    } else if (Operator::getOpcode(V) == Instruction::BitCast || Operator::getOpcode(V) == Instruction::AddrSpaceCast) {
      V = cast<Operator>(V)->getOperand(0);
    } else if (auto *GA = dyn_cast<GlobalAlias>(V)) {
      V = GA->getAliasee();
    } else {
      if (auto CB = dyn_cast<CallBase>(V)) {
        if (const Value *RV = CB->getReturnedArgOperand()) {
          // the argument is also the return pointer,
          // this can increase both performance and accuarcy if it is
          // ever used but it seems no one use it
          V = RV;
          continue;
        }
        if (CB->getIntrinsicID() == Intrinsic::launder_invariant_group ||
            CB->getIntrinsicID() == Intrinsic::strip_invariant_group) {
          V = CB->getArgOperand(0);
          continue;
        }
      }
      return V;
    }
    assert(V->getType()->isPointerTy() && "Unexpected operand type!");
  } while (Visited.insert(V).second);

  return V;
}

static auto stripPointerCasts(const Value *V) -> const Value * {
  // Even though we don't look through PHI nodes, we could be called on an
  // instruction in an unreachable block, which may be on a cycle.
  SmallPtrSet<const Value *, 4> Visited;
  Visited.insert(V);
  do {
    if (auto *GEP = dyn_cast<GEPOperator>(V)) {
      return V;  // do not collapse any GEP even if it has all-zero offset
    } else if (Operator::getOpcode(V) == Instruction::BitCast || Operator::getOpcode(V) == Instruction::AddrSpaceCast) {
      V = cast<Operator>(V)->getOperand(0);
    } else if (auto *GA = dyn_cast<GlobalAlias>(V)) {
      V = GA->getAliasee();
    } else {
      if (auto CS = dyn_cast<CallBase>(V)) {
        if (const Value *RV = CS->getReturnedArgOperand()) {
          V = RV;
          continue;
        }
        if (CS->getIntrinsicID() == Intrinsic::launder_invariant_group ||
            CS->getIntrinsicID() == Intrinsic::strip_invariant_group) {
          V = CS->getArgOperand(0);
          continue;
        }
      }
      return V;
    }
    assert(V->getType()->isPointerTy() && "Unexpected operand type!");
  } while (Visited.insert(V).second);
  return V;
}

auto FICanonicalizer::canonicalize(const Value *V) -> const Value * {
  if (!V->getType()->isPointerTy()) return V;
  V = stripPointerCastsAndOffsets(V);

  return stripNullOrUnDef(V);
}

/// Strip off pointer casts, all-zero GEPs, aliases and invariant group
/// info.
auto FSCanonicalizer::canonicalize(const llvm::Value *V) -> const Value * {
  if (CONFIG_USE_FI_MODE) {
    // use the field-insensitive canonicalizer instead
    return FICanonicalizer::canonicalize(V);
  }

  if (!V->getType()->isPointerTy()) return V;
  bool changed = true;

  while (changed) {
    V = V->stripPointerCastsAndInvariantGroups();
    if (auto gep = dyn_cast<GetElementPtrInst>(V)) {
      if (gep->getNumIndices() == 1 && gep->hasAllConstantIndices()) {
        if (auto idx = cast<ConstantInt>(gep->getOperand(1))) {
          if (idx->isNegative()) {
            V = canonicalize(gep->getOperand(0));
          }
        }
      }
    }
    // does not strip GEP even it is zero offset, it will enable type filtering
    // on zero-offset gep as well V = stripPointerCasts(

    // strip away global alias
    if (auto GV = dyn_cast<GlobalAlias>(V)) {
      V = GV->getAliasee();
    }

    auto tmp = stripNullOrUnDef(V);
    if (V != tmp) {
      V = tmp;
      changed = true;
    } else {
      changed = false;
    }
  }

  return V;
}
