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

#include "OMPConstantPropPass.h"

#include "LanguageModel/OpenMP.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/ConstantFolding.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/DebugCounter.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/Local.h"

using namespace llvm;

DEBUG_COUNTER(CPCounter, "constprop-transform", "Controls which instructions are killed");

namespace {

// only isa<StoreInst> is not enough to guarantee the GV has no overwritten,
// e.g., @counter in DRB088-dynamic-storage-orig-yes.ll:
//   source code: counter++
//   IR: there is always a StoreInst after LoadInst:
//       %0 = load i32*, i32** @counter, align 8, !dbg !21, !tbaa !22  --> load to %0
//       %1 = load i32, i32* %0, align 4, !dbg !26, !tbaa !27
//       %inc = add nsw i32 %1, 1, !dbg !26
//       store i32 %inc, i32* %0, align 4, !dbg !26, !tbaa !27         --> store to %0: changed
// to precisely determine whether GV (counter here) will be overwritten afterwards is complex and expensive,
// which requires inter-procedural data-flow analysis/forward slicing.
// TODO: find a solution?
inline bool hasGlobalOverwritten(GlobalVariable *GV) {
  for (auto user : GV->users()) {
    if (isa<StoreInst>(user)) {
      return true;
    }
  }
  return false;
}

// Try to convert the constant C to type T, return nullptr if unable
llvm::Constant *convertConstant(llvm::Constant *C, llvm::Type *T) {
  auto const srcType = C->getType();

  if (srcType->isFloatingPointTy() && T->isIntegerTy()) {
    return llvm::ConstantExpr::getFPToSI(C, T);
  }

  if (srcType->isIntegerTy() && T->isFloatingPointTy()) {
    return llvm::ConstantExpr::getSIToFP(C, T);
  }

  // TODO: are there other conversions we need to handle?

  return nullptr;
}

bool intraConstantProp(Function &F, const TargetLibraryInfo &TLI) {
  // based on ConstantPropagation in lib/Transforms/Scalar/ConstantProp.cpp

  // Initialize the worklist to all of the instructions ready to process...
  SmallPtrSet<Instruction *, 16> WorkList;
  // The SmallVector of WorkList ensures that we do iteration at stable order.
  // We use two containers rather than one SetVector, since remove is
  // linear-time, and we don't care enough to remove from Vec.
  SmallVector<Instruction *, 16> WorkListVec;
  for (Instruction &I : instructions(&F)) {
    WorkList.insert(&I);
    WorkListVec.push_back(&I);
  }

  bool Changed = false;
  const DataLayout &DL = F.getParent()->getDataLayout();

  while (!WorkList.empty()) {
    SmallVector<Instruction *, 16> NewWorkListVec;
    for (auto *I : WorkListVec) {
      WorkList.erase(I);  // Remove element from the worklist...

      if (I->use_empty()) {
        continue;
      }  // Don't muck with dead instructions...

      // The intuition is to identify the constant global var that passed to openmp as a bound
      // of array index accesses, to give convenience for pointer analysis and shared memory access analysis
      Constant *C = nullptr;
      if (auto LI = dyn_cast<LoadInst>(I)) {
        if (auto GV = dyn_cast<GlobalVariable>(LI->getPointerOperand()->stripPointerCasts())) {
          if (GV->hasInitializer() && !GV->hasCommonLinkage()) {
            // from https://llvm.org/docs/LangRef.html:
            // “common” linkage is most similar to “weak” linkage, but they are used for tentative definitions in C,
            // such as “int X;” at global scope.
            if (GV->isConstant() || !hasGlobalOverwritten(GV)) {
              C = GV->getInitializer();
            }
          }
        }
      } else {
        C = ConstantFoldInstruction(I, DL, &TLI);
      }

      // Add all of the users of this instruction to the worklist,
      // they might be constant propagatable now...
      if (C != nullptr) {
        for (User *U : I->users()) {
          // If user not in the set, then add it to the vector.
          if (WorkList.insert(cast<Instruction>(U)).second) NewWorkListVec.push_back(cast<Instruction>(U));
        }

        // If the types do not match, try to convert the type
        // this can happen when a global constant is one type e.g. double
        // and the instruction looks like:
        //   load i64, i64* bitcast (double* @relax to i64*)
        if (C->getType() != I->getType()) {
          C = convertConstant(C, I->getType());
        }

        // Replace all of the uses of a variable with uses of the constant.
        if (C) {
          I->replaceAllUsesWith(C);
        }

        if (isInstructionTriviallyDead(I, &TLI)) {
          I->eraseFromParent();
        }

        // We made a change to the function...
        Changed = true;
      }
    }
    WorkListVec = std::move(NewWorkListVec);
  }
  return Changed;
}

// if there is a single store instruction that dominates I and is a user of V, return it, else return nullptr.
StoreInst *findUniqueDominatedStoreDef(Value *V, const Instruction *I, const DominatorTree &DT) {
  StoreInst *storeInst = nullptr;
  for (auto user : V->users()) {
    if (auto SI = llvm::dyn_cast<llvm::StoreInst>(user)) {
      // simple cases, only has one store instruction
      if (storeInst == nullptr) {
        if (DT.dominates(SI, I)) {
          storeInst = SI;
        }
      } else {
        if (DT.dominates(SI, I)) {
          return nullptr;
        }
      }
    }
  }

  return storeInst;
}

// If a function is only ever called with constant value arguments, propogate those constant values into the function
bool PropagateConstantsIntoArguments(Function &F, const DominatorTree &DT, const TargetLibraryInfo &TLI) {
  if (F.arg_empty() || F.use_empty()) return false;  // No arguments? Early exit.

  // For each argument, keep track of its constant value and whether it is a
  // constant or not.  The bool is driven to true when found to be
  // non-constant.
  SmallVector<std::pair<Constant *, bool>, 16> ArgumentConstants;
  ArgumentConstants.resize(F.arg_size());

  unsigned NumNonconstant = 0;
  for (Use &U : F.uses()) {
    User *UR = U.getUser();
    // Ignore blockaddress uses.
    if (isa<BlockAddress>(UR)) continue;

    // If no abstract call site was created we did not understand the use,
    // bail.
    AbstractCallSite ACS(&U);
    if (!ACS) return false;

    // Mismatched argument count is undefined behavior. Simply bail out to
    // avoid handling of such situations below (avoiding asserts/crashes).
    unsigned NumActualArgs = ACS.getNumArgOperands();
    if (F.isVarArg() ? ArgumentConstants.size() > NumActualArgs : ArgumentConstants.size() != NumActualArgs)
      return false;

    // Check out all of the potentially constant arguments.  Note that we
    // don't inspect varargs here.
    Function::arg_iterator Arg = F.arg_begin();
    for (unsigned i = 0, e = ArgumentConstants.size(); i != e; ++i, ++Arg) {
      // If this argument is known non-constant, ignore it.
      if (ArgumentConstants[i].second) continue;

      Value *V = ACS.getCallArgOperand(i);
      // Ignore recursive calls passing argument down.
      if (V == &*Arg) continue;

      Constant *C = dyn_cast_or_null<Constant>(V);
      if (C == nullptr) {
        // Argument became non-constant.
        // If all arguments are non-constant now, give up on this function.
        if (++NumNonconstant == ArgumentConstants.size()) return false;
        ArgumentConstants[i].second = true;
        continue;
      }

      // Mismatched argument type is undefined behavior. Simply bail out
      // to avoid handling of such situations below (avoiding
      // asserts/crashes).
      if (Arg->getType() != C->getType()) return false;

      // We can only propagate thread independent values through
      // callbacks. This is different to direct/indirect call sites
      // because for them we know the thread executing the caller and
      // callee is the same. For callbacks this is not guaranteed, thus a
      // thread dependent value could be different for the caller and
      // callee, making it invalid to propagate.
      if (ACS.isCallbackCall() && C->isThreadDependent()) {
        // Argument became non-constant.
        // If all arguments are non-constant now, give up on this function.
        if (++NumNonconstant == ArgumentConstants.size()) return false;
        ArgumentConstants[i].second = true;
        continue;
      }

      // A different constant has been passed to this arg already
      if (ArgumentConstants[i].first != nullptr) {
        // Argument became non-constant.
        // If all arguments are non-constant now, give up on this function.
        if (++NumNonconstant == ArgumentConstants.size()) return false;
        ArgumentConstants[i].second = true;
        continue;
      }

      // record the first constant seen for this argument
      ArgumentConstants[i].first = C;
    }
  }

  // If we got to this point, there is a constant argument!
  assert(NumNonconstant != ArgumentConstants.size());
  bool MadeChange = false;
  Function::arg_iterator Arg = F.arg_begin();
  for (unsigned i = 0, e = ArgumentConstants.size(); i != e; ++i, ++Arg) {
    // Do we have a constant argument?
    // FIXME: why can we skip (hasByValAttr && !onlyReadsMemory)
    if (ArgumentConstants[i].second || Arg->use_empty() || Arg->hasInAllocaAttr() ||
        (Arg->hasByValAttr() && !F.onlyReadsMemory()))
      continue;

    Value *V = ArgumentConstants[i].first;
    if (!V) V = UndefValue::get(Arg->getType());
    Arg->replaceAllUsesWith(V);
    MadeChange = true;
  }

  // special case, the omp_outlined function calls use a pointer but only reads it
  // omp outlined passes shared variables by pointer, and never modifies where the pointer points to
  // In this case, we can propogate the value of the pointer into the omp.outlined function
  if (OpenMPModel::isOutlined(F.getName())) {
    for (int i = 2; i < F.arg_size(); i++) {
      // skip the first two args: i32* noalias %.global_tid., i32* noalias %.bound_tid.
      if (!F.getArg(i)->getType()->isPointerTy()) {
        continue;
      }

      for (Use &U : F.uses()) {
        User *UR = U.getUser();
        if (isa<BlockAddress>(UR)) continue;

        // the omp.outlined function should only have one use of callsite?
        AbstractCallSite ACS(&U);
        auto V = ACS.getCallArgOperand(i);

        auto SI = findUniqueDominatedStoreDef(V, ACS.getCallSite().getInstruction(), DT);
        if (SI == nullptr) break;

        if (auto defVal = dyn_cast<Constant>(SI->getValueOperand())) {
          // there is a unique constant def value
          // if in current function, only load instruction exist, the loaded value should be equal to
          SmallVector<LoadInst *, 8> loadVec;
          for (auto &U : F.getArg(i)->uses()) {
            if (isa<StoreInst>(U.getUser())) {
              loadVec.clear();
              break;
            } else if (auto LI = dyn_cast<LoadInst>(U.getUser())) {
              loadVec.push_back(LI);
            }
          }

          for (auto LI : loadVec) {
            LI->replaceAllUsesWith(defVal);

            if (isInstructionTriviallyDead(LI, &TLI)) {
              LI->eraseFromParent();
            }
            MadeChange = true;
          }
        }
      }
    }
  }

  return MadeChange;
}

// we can get a list of function which are users of this function -- if a constant is propagated in a user, we may
// need to propagate it to used functions, so this method allows us to collect the relevant functions
std::set<Function *> getUserFunctions(Function &F) {
  std::set<Function *> userFunctions;
  for (Use &U : F.uses()) {
    User *UR = U.getUser();
    // Ignore blockaddress uses.
    if (isa<BlockAddress>(UR)) continue;

    // If no abstract call site was created we did not understand the use,
    // bail.
    AbstractCallSite ACS(&U);
    if (!ACS) return {};  // this would be bailed anyways

    // Mismatched argument count is undefined behavior. Simply bail out to
    // avoid handling of such situations below (avoiding asserts/crashes).
    unsigned NumActualArgs = ACS.getNumArgOperands();
    if (F.isVarArg() ? F.arg_size() > NumActualArgs : F.arg_size() != NumActualArgs)
      return {};  // this would be bailed anyways

    userFunctions.insert(ACS.getInstruction()->getParent()->getParent());
  }
  return userFunctions;
}

// TODO fix constant propagation in libraries where exported functions are called called internally as well, leading to
// false negatives due to incorrect constant propagation
bool runOpenMPConstantPropagation(Module &M, std::function<const TargetLibraryInfo &(Function &)> GetTLI,
                                  std::function<const DominatorTree &(Function &)> GetDT) {
  bool Changed = false;
  bool ArgPropagated = true;
  bool FunctionChanged = true;

  // this map keeps track of all function uses that we consider legitimate in the program
  //
  // since the number of function calls per function averages out to some constant (which appears to be somewhere around
  // 4 or 5 for typical cases), the list here will grow linearly with function size with a relatively small factor
  std::multimap<Function *, Function *> userEdges;

  for (Function &F : M) {
    const TargetLibraryInfo &TLI = GetTLI(F);
    Changed |= intraConstantProp(F, TLI);
    for (auto userFunction : getUserFunctions(F)) {
      userEdges.emplace(userFunction, &F);
    }
  }

  if (userEdges.size() > 10 * M.getFunctionList().size()) {
    llvm::errs() << "WARNING: OmpConstPropPass found significantly more user edges (" << userEdges.size()
                 << ") than functions (" << M.getFunctionList().size() << ") in module!\n";
  }

  SmallSet<Function *, 8> work;
  for (auto edge : userEdges) {
    work.insert(edge.first);
  }
  // propagate constant into function arguement
  SmallSet<Function *, 8> changedFunction;
  while (FunctionChanged) {
    while (ArgPropagated) {
      ArgPropagated = false;
      for (Function *F : work) {
        if (!F->isDeclaration()) {
          // Delete any klingons.
          F->removeDeadConstantUsers();
          if (PropagateConstantsIntoArguments(*F, GetDT(*F), GetTLI(*F))) {
            changedFunction.insert(F);
            ArgPropagated = true;
          }
        }
      }
      Changed |= ArgPropagated;
    }

    FunctionChanged = false;
    // propagate constant inside the function and prep next propagation
    work.clear();
    for (Function *F : changedFunction) {
      const TargetLibraryInfo &TLI = GetTLI(*F);
      auto furtherPropagated = intraConstantProp(*F, TLI);
      FunctionChanged |= furtherPropagated;
      if (furtherPropagated) {
        auto userEdgeRange = userEdges.equal_range(F);
        for (auto userEdgeIter = userEdgeRange.first; userEdgeIter != userEdgeRange.second; userEdgeIter++) {
          work.insert(userEdgeIter->second);  // these are the only entries which were propagated to
        }
      }
    }

    changedFunction.clear();
  }
  return Changed;
}
}  // namespace

PreservedAnalyses OMPConstantPropPass::run(Module &M, ModuleAnalysisManager &AM) {
  auto &FAM = AM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();
  auto GetTLI = [&FAM](Function &F) -> const TargetLibraryInfo & { return FAM.getResult<TargetLibraryAnalysis>(F); };

  auto GetDT = [&FAM](Function &F) -> const DominatorTree & { return FAM.getResult<DominatorTreeAnalysis>(F); };

  if (!runOpenMPConstantPropagation(M, GetTLI, GetDT)) {
    return PreservedAnalyses::all();
  }

  PreservedAnalyses PA;
  PA.preserve<FunctionAnalysisManagerModuleProxy>();
  PA.preserve<DominatorTreeAnalysis>();
  return PA;
}
