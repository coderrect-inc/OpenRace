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

#include "Analysis/SimpleArrayAnalysis.h"

namespace {

// this is more like "get def"/"get getelementptr", not all getelementptr is array-related
const llvm::GetElementPtrInst *getGEP(const race::MemAccessEvent *event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
}

// return true if this is a math-related operation, e.g., add, mul, or, trunc. for details, see llvm/IR/Instruction.def:
// isBinaryOp includes standard binary (13-24) and logical (25-30) operators
// isCast includes cast (38-50) operators (actually we want 38-46)
// ir can be nullptr
bool isMathOp(llvm::Instruction *ir) { return ir ? ir->isBinaryOp() || ir->isCast() : false; }

// return true if this is a math-related operation on the index or the index has no name
bool isMathOpOrNoName(llvm::Instruction *ir) { return ir ? isMathOp(ir) || !ir->hasName() : false; }

enum class IndexType {
  Indvars,      // the name of index var/ptr starts with "indvars.", it is the index variable of loop,
                // e.g., %indvars.iv.i, and it is private or linear;
  IndvarsNext,  // intermediate var between "indvars." and index
  Idxprom,      // starting with "idxprom" + an int, e.g., %idxprom15.i, can be one of the following case:
            // a. it is not the index variable and declared outside of loop, and has its own self-incrementing rules,
            // b. it is not the index variable, but computed from the index variable,
            // c. it is the index variable but is not private,
            // d. it is the index variable but not in omp parallel region;
  StoreMerge,    // starting with "storemerge" + an int, e.g., %storemerge6.i, it is the index variable but is not
                 // private but shared
  Intermediate,  // intermediate var between index and other index with math/logic/cast operation
  Unknown,       // cannot handle or cannot determine for now
};

IndexType getIndexType(llvm::StringRef name) {
  if (name.startswith("indvars.")) {
    return IndexType::Indvars;
  } else if (name.startswith("indvars.iv.next")) {
    return IndexType::IndvarsNext;
  } else if (name.startswith("idxprom")) {
    return IndexType::Idxprom;
  } else if (name.startswith("storemerge")) {
    return IndexType::StoreMerge;
  }

  return IndexType::Unknown;
}

IndexType getIndexType(llvm::Value *idx) {
  if (idx->hasName()) {
    const StringRef &name = idx->getName();
    return getIndexType(name);
  }
  auto math = llvm::dyn_cast<llvm::Instruction>(idx);
  if (isMathOp(math)) return IndexType::Intermediate;

  return IndexType::Unknown;
}

std::optional<llvm::StringRef> computeIdxName(llvm::Instruction *ir);
std::optional<llvm::StringRef> getInductionVarName(const llvm::GetElementPtrInst *gep);

// conduct a simple backward dataflow analysis to retrieve the name of the index that
// idx can refer to (the name of idx must starts with "idxprom")
std::optional<llvm::StringRef> getInductionVarNameForIdxprom(Value *idx) {
  assert(getIndexType(idx) == IndexType::Idxprom && "The name of idx must starts with idxprom");

  // must be a sext instruction, e.g., %idxprom4.i = sext i32 %19 to i64
  // refer to https://llvm.org/docs/LangRef.html#sext-to-instruction
  auto sext = llvm::cast<llvm::SExtInst>(idx);
  Value *op = sext->getOperand(0);
  if (auto load = llvm::dyn_cast<llvm::LoadInst>(op)) {
    op = load->getPointerOperand();
    if (auto gep_Op = llvm::dyn_cast<llvm::GetElementPtrInst>(op->stripPointerCasts())) {
      // check if it is parallel-related
      return getInductionVarName(gep_Op);
    } else {
      return op->getName();
    }
  } else if (getIndexType(op) == IndexType::StoreMerge) {
    // maybe this index is not private, e.g., DRB073, the IR is like:
    //  %storemerge6.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i ]
    //  %idxprom3.i = sext i32 %storemerge6.i to i64, !dbg !67
    //  %16 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* @a, i32 0, i64 %indvars.iv.i, !dbg !67
    //  %17 = getelementptr [100 x i32], [100 x i32]* %16, i32 0, i64 %idxprom3.i, !dbg !67
    return op->getName();
  } else if (auto math = llvm::dyn_cast<llvm::Instruction>(op)) {
    return computeIdxName(math);
  }

  return std::nullopt;
}

// return true this index is used within the scope of omp parallel region, used for multi-dimension array
bool isOmpRelevant(llvm::StringRef idxName) {
  auto typ = getIndexType(idxName);
  return typ == IndexType::Indvars || typ == IndexType::Idxprom || typ == IndexType::StoreMerge;
}

// return true this index is used within the scope of omp parallel region, used for multi-dimension array
bool isOmpRelevant(const GetElementPtrInst *idx) {
  auto idxName = getInductionVarName(idx);
  return idxName.has_value() ? isOmpRelevant(idxName.value()) : false;
}

// return the non-constant operand in the ir
llvm::Value *getNonConstOperand(llvm::Instruction *ir) {
  auto nonConst = ir->getOperand(0);
  if (llvm::isa<llvm::Constant>(nonConst) && ir->getNumOperands() > 1) {
    nonConst = ir->getOperand(1);
  }
  assert(!llvm::isa<llvm::Constant>(nonConst) && "Must have one non-const operand.");
  return nonConst;
}

// recursively check if this IR does a math-related operation on another index,
// e.g., DRB014, DRB033, the IR is like:
//     %indvars.iv.next23.i = add nsw i64 %indvars.iv22.i, 1, !dbg !61
//     %17 = mul nsw i64 %indvars.iv.next23.i, 100, !dbg !98
// 1st op is lhs, 2nd op is the non-constant element on rhs
std::optional<llvm::StringRef> computeIdxName(llvm::Instruction *ir) {
  if (!isMathOp(ir)) return std::nullopt;

  while (isMathOp(ir)) {
    assert(ir->getNumOperands() >= 1 && "The index IR of standard binary operators should have at least 1 operands.");

    auto rhs = getNonConstOperand(ir);  // lhs = ir
    if (getIndexType(rhs) == IndexType::Indvars) {
      ir = llvm::dyn_cast<llvm::Instruction>(rhs);
    } else if (getIndexType(ir) == IndexType::Indvars) {
      return ir->getName();
    } else if (getIndexType(ir) == IndexType::Idxprom) {
      return getInductionVarNameForIdxprom(ir);
    } else if (isMathOpOrNoName(ir)) {
      ir = llvm::dyn_cast<llvm::Instruction>(rhs);
    } else {  // too complex, cannot handle now
      return std::nullopt;
    }
  }
  if (!ir) return std::nullopt;
  return ir->getName();
}

// return the name of the index variable that the loop (containing gep) will iterate on (or related to this index var),
// this might not be the index that omp parallel will parallel on
std::optional<llvm::StringRef> getInductionVarName(const llvm::GetElementPtrInst *gep) {
  auto idx = gep->getOperand(gep->getNumOperands() - 1);  // the last operand
  switch (getIndexType(idx)) {
    case IndexType::IndvarsNext:
    case IndexType::Intermediate: {
      if (auto math = llvm::dyn_cast<llvm::Instruction>(idx))
        return computeIdxName(math);
      else
        return std::nullopt;
    }
    case IndexType::Indvars: {
      return idx->getName();
    }
    case IndexType::Idxprom: {
      return getInductionVarNameForIdxprom(idx);
    }
    default:
      llvm::errs() << "Unhandled loop index types: " << *idx << "\n";
      return std::nullopt;
  }
}

// record the result of getAllLoopIndexesForArrayAccess
struct ArrayAccess {
  std::vector<const llvm::GetElementPtrInst *> geps;  // the outermost index is at the end
  std::optional<llvm::StringRef>
      outerMostIdxName;  // TODO: can be collapse if has outerMostIdxName? for now, no such tests

  unsigned int collapseLevel = 0;                  // the param in collapse clause
  std::optional<llvm::StringRef> collapseRootIdx;  // the root index that the collapse indexes originated from

  ArrayAccess(std::vector<const llvm::GetElementPtrInst *> geps)
      : geps(geps), outerMostIdxName(computeOuterMostGEPIdxName()), collapseRootIdx(checkCollapse()) {
    if (!hasCollapse()) removeOMPIrrelevantGEP();
  }

  bool hasCollapse() const {  // whether this access involves indexes using collapse
    return collapseRootIdx.has_value();
  }
  bool isMultiDim() const { return outerMostIdxName.has_value() ? geps.size() > 0 : geps.size() > 1; }

 private:
  // this handles a special case when using collapse, e.g., DRB093:
  // the outermost and inner loop indexes can all be omp paralleled, depend on the param passed to collapse, e.g.,
  // collapse(2), however, we cannot see this param. what we can see is, if an index is omp paralleled, it is starting
  // with "idxprom", and all of such omp paralleled indexes by collapse have the same root index if doing a simple
  // backward dataflow analysis, the IR can be like:
  //      %.omp.iv.011.i = phi i32 [ %add14.i, %omp.inner.for.body.i ], [ %14, %omp.inner.for.body.preheader.i ]
  //      %div.i = sdiv i32 %.omp.iv.011.i, 100, !dbg !59
  //      %15 = mul i32 %div.i, -100, !dbg !59
  //      %sub.i = add i32 %15, %.omp.iv.011.i, !dbg !59
  //      %idxprom.i = sext i32 %div.i to i64, !dbg !60
  //      %idxprom7.i = sext i32 %sub.i to i64, !dbg !60
  //      %16 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* @a, i32 0, i64 %idxprom.i, !dbg !60
  //      %17 = getelementptr [100 x i32], [100 x i32]* %16, i32 0, i64 %idxprom7.i, !dbg !60
  // where %.omp.iv.011.i is the root index for %idxprom.i and %idxprom7.i from both gep IRs
  // TODO: if getting more complex in the future, leave this to SCEV
  std::optional<llvm::StringRef> checkCollapse() {
    if (!isMultiDim()) {
      return std::nullopt;
    }

    llvm::StringRef rootIdx;
    int i = 0;
    while (i < geps.size()) {
      auto gep = geps[i];
      auto idx = gep->getOperand(gep->getNumOperands() - 1);
      if (getIndexType(idx) != IndexType::Idxprom) {
        break;
      }
      auto idxName = getInductionVarName(gep);
      if (!idxName.has_value()) {
        break;
      } else if (rootIdx.empty()) {  // initialize
        rootIdx = idxName.value();
      } else if (!rootIdx.equals(idxName.value())) {  // compare with the recorded root index
        break;                                        // not the same root index
      }

      i++;
    }

    if (i < 2) {  // no collapse
      return std::nullopt;
    }

    collapseLevel = i == geps.size() ? i : i - 1;  // all indexes vs. some indexes are using collapse
    return rootIdx;
  }

  // remove omp irrelevant geps (i.e., the gep index outside omp parallel regions) for multi-dimension array access
  void removeOMPIrrelevantGEP() {
    assert(hasCollapse() == false && "Only remove omp irrelevant indexes (idxprom) when not using collapse.");
    if (!isMultiDim()) return;

    std::vector<const llvm::GetElementPtrInst *> ompRelevantIndexes;
    ompRelevantIndexes.reserve(geps.size());
    std::copy_if(geps.begin(), geps.end(), std::back_inserter(ompRelevantIndexes),
                 [](auto gep) { return isOmpRelevant(gep); });
    ompRelevantIndexes.shrink_to_fit();
    geps = ompRelevantIndexes;
  }

  // we basically do a simple backward dataflow analysis to retrieve the index whenever the base ptr of gep has math
  // operations on index, we only do this on the outermost index of geps if it is not of type IndexType::Idxprom;
  // e.g., DRB003, the IR looks like:
  //    %21 = mul nsw i64 %indvars.iv21.i, %vla1, !dbg !137 --> this is the operation on index
  //    %22 = getelementptr double, double* %a, i64 %21, !dbg !137
  //    %25 = getelementptr double, double* %22, i64 %indvars.iv.i, !dbg !140
  //    store double %add19.i, double* %25, align 8, !dbg !141, !tbaa !63, !noalias !104
  // we are trying to locate %indvars.iv21.i from %21 in the above example
  std::optional<llvm::StringRef> computeOuterMostGEPIdxName() {
    auto getLastOp = [](const llvm::GetElementPtrInst *gep) { return gep->getOperand(gep->getNumOperands() - 1); };

    // Find last index that does not have Idxprom type
    auto it = std::find_if(geps.rbegin(), geps.rend(), [&getLastOp](auto gep) {
      auto outerMostIdx = getLastOp(gep);
      return getIndexType(outerMostIdx) != IndexType::Idxprom;
    });
    if (it == geps.rend()) return std::nullopt;

    auto const outerMostIdx = getLastOp(*it);
    auto const inst = llvm::dyn_cast<llvm::Instruction>(outerMostIdx);
    if (!inst) return std::nullopt;

    auto const name = computeIdxName(inst);
    if (name.has_value() && isOmpRelevant(name.value())) {
      geps.erase(std::next(it).base());
      return name;
    }

    return std::nullopt;
  }
};

// find all the indexes (e.g., GEP or the name of the outermost index) for this array access,
// we already excluded the indexes that are out of the omp parallel region.
// an example IR of multi-dimension array access IR for a[i][j] is (the array struct in gep might be other types):
//     %16 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* @a, i32 0, i64 %idxprom.i, !dbg !60
//     %17 = getelementptr [100 x i32], [100 x i32]* %16, i32 0, i64 %idxprom7.i, !dbg !60
//     %18 = load i32, i32* %17, align 4, !dbg !60, !tbaa !57, !noalias !39
ArrayAccess getAllGEPIndexes(const llvm::GetElementPtrInst *gep) {
  std::vector<const llvm::GetElementPtrInst *> geps;
  while (gep != nullptr) {
    geps.push_back(gep);
    auto base = gep->getOperand(0);
    gep = llvm::dyn_cast<llvm::GetElementPtrInst>(base->stripPointerCasts());
  }

  return ArrayAccess{geps};
}

enum class BBType {
  OMPInnerForBody,  // the name of basicblock follows the pattern "omp.inner.for.bodyxxx.i"
  ForPreheader,     // the name of basicblock follows the pattern "for.cond.preheaderxxx.i"
  ForBody,          // the name of basicblock follows the pattern "for.bodyxxx.i"
  Unknown,
};

BBType getBasicBlockType(const StringRef &bbName) {
  if (bbName.startswith("omp.inner.for.body") && bbName.endswith(".i"))
    return BBType::OMPInnerForBody;
  else if (bbName.startswith("for.body") && bbName.endswith(".i"))
    return BBType::ForBody;
  else if (bbName.startswith("for.cond.preheader") && !bbName.startswith("for.cond.preheader.preheader") &&
           bbName.endswith(".i"))
    return BBType::ForPreheader;
  else
    return BBType::Unknown;
}

BBType getBasicBlockType(const BasicBlock *bb) {
  const StringRef &bbName = bb->getName();
  return getBasicBlockType(bbName);
}

// return the name of the index that omp parallel loop will parallel on, e.g., DRB169
//    #pragma omp parallel for
//    for (i = 1; i < N-1; i++) { // "i" is the index that omp will parallel on
//      for (j = 1; j < N-1; j++) { ...
// TODO: maybe have other cases for other omp directives
std::optional<llvm::StringRef> getOMPParallelLoopIndex(const llvm::GetElementPtrInst *gep) {
  auto const bb = gep->getParent();

  switch (getBasicBlockType(bb)) {
    case BBType::OMPInnerForBody:
      assert(llvm::isa<llvm::PHINode>(bb->front()) &&
             "The index must be from a phi node at the beginning of the basic block.");
      return bb->front().getName();
    case BBType::ForBody: {
      // check the phi node containing the index from the basicblock with name "for.cond.preheader.i" or
      // "omp.inner.for.bodyxxx.i": we traverse the basic blocks starting from bb in a reversed order, to avoid get the
      // index for other omp parallel loops in the same function, e.g., DRB058
      auto const func = bb->getParent();
      auto const &blocks = func->getBasicBlockList();
      auto start =
          std::find_if(blocks.rbegin(), blocks.rend(), [&bb](const llvm::BasicBlock &block) { return &block == bb; });

      for (auto it = start, end = blocks.rend(); it != end; ++it) {
        auto const &block = *it;
        auto ty = getBasicBlockType(block.getName());
        if ((ty == BBType::ForPreheader || ty == BBType::OMPInnerForBody) && llvm::isa<llvm::PHINode>(block.front())) {
          return block.front().getName();
        }
      }
      break;
    }
    case BBType::ForPreheader:
    case BBType::Unknown:
      break;
  }

  llvm::errs() << "Cannot find the the omp parallel loop index for: " << *gep << "\n";
  return std::nullopt;
}

// return true if the index of this array access is perfectly aligned without races
bool isPerfectlyAligned(llvm::StringRef idxName, std::optional<llvm::StringRef> parallelIdx, bool isInnerIdx) {
  if (isInnerIdx) {  // the omp parallel loop will parallel on this idx
    return getIndexType(idxName) == IndexType::Indvars;
  } else {  // the omp parallel loop will parallel on this idx
    return parallelIdx.value() == idxName;
  }
}

// return true if the index of this array access is perfectly aligned without races
bool isPerfectlyAligned(const GetElementPtrInst *gep, std::optional<llvm::StringRef> parallelIdx, bool isInnerIdx) {
  auto idxName = getInductionVarName(gep);
  if (!idxName.has_value() || !parallelIdx.has_value()) return false;  // cannot determine now
  return isPerfectlyAligned(idxName.value(), parallelIdx, isInnerIdx);
}

// return result of getAccessTypeFor
enum class AccessType {
  NoRace,  // this array access has no race
  Race,    // this array access has races
  ND,      // not determined: too complex, leave the job to SCEV
};

// check each index in this multi-dimension array access, see if every index is perfectly aligned
AccessType getAccessTypeForMultiDim(ArrayAccess loopIdxes, std::optional<llvm::StringRef> parallelIdx) {
  auto idxes = loopIdxes.geps;
  if (loopIdxes.hasCollapse()) {
    // when using collapse, we need to compare each index using collapse (recorded in collapseRootIdx) with parallelIdx
    if (!isPerfectlyAligned(loopIdxes.collapseRootIdx.value(), parallelIdx, false)) return AccessType::Race;
    // if still have remaining indexes that do not using collapse, continue check starting from that idx
    auto popCount = loopIdxes.collapseLevel;
    while (popCount > 0) {
      idxes.pop_back();
      popCount--;
    }
  } else {
    // this is the outermost omp parallel index of the array access: from outerMostIdxName or the last
    // element of geps
    auto outerMostIdx = loopIdxes.outerMostIdxName;
    if (outerMostIdx.has_value()) {
      if (!isPerfectlyAligned(outerMostIdx.value(), parallelIdx, false)) return AccessType::Race;
    } else {
      const GetElementPtrInst *idx = idxes.back();
      idxes.pop_back();
      if (!isPerfectlyAligned(idx, parallelIdx, false)) return AccessType::Race;
    }
  }

  // for inner loop indexes
  while (!idxes.empty()) {
    auto innerIdx = idxes.back();
    idxes.pop_back();
    if (!isPerfectlyAligned(innerIdx, parallelIdx, true)) return AccessType::Race;
  }
  return AccessType::NoRace;
}

// For the following conditions, when diff == 0, array access patterns are perfectly aligned and there is not overlap
// and there is no race when the access satisfy the following conditions:
// (1) for one dimension loop:
// the index var used by gep is the one that satisfies both
// a. the loop(s) will iterate over, and
// b. and the omp parallel loop will parallel on or is parallel-related (see below),
//
// (2) for multi dimension loops:
// the index var used by gep is the one that that satisfies both
// a. the loop(s) will iterate over, and
// b. the omp parallel loop will parallel on or is parallel-related,
//    #pragma omp parallel for private(j)
//    for (i = 1; i < N-1; i++) { // "i" is the index that omp will parallel on
//      for (j = 1; j < N-1; j++) { ...
//        a[i][j] = a[i+1][j] ...
//    here, i == paralleled index with perfect arrangement: no write/write race, but can have read/write race on the
//    array element
// another case is when the index of the inner loop(s) is shared, e.g., j is shared across threads
//    #pragma omp parallel for
//    for (i = 1; i < N-1; i++) { // "i" is the index that omp will parallel on
//      for (j = 1; j < N-1; j++) { ...
//        a[i][j] = ...
//    here, we can have write/write and read/write race on both j and array element
//
// parallel-related:
// check if the index is incremented related to the index variable and other arrays, e.g., DRB005-008, DRB052
// the related IR is like:
//  %18 = getelementptr [180 x i32], [180 x i32]* @indexSet, i32 0, i64 %indvars.iv.i, !dbg !114
//  %19 = load i32, i32* %18, align 4, !dbg !114, !tbaa !112, !noalias !91
//  %idxprom4.i = sext i32 %19 to i64, !dbg !118
//  %22 = getelementptr double, double* %21, i64 %idxprom4.i, !dbg !118
//
// PS: this is valid when the parallel loop iterate over the index, e.g., j not i,
//    for (i = 1; i < N-1; i++) {
//      #pragma omp parallel for
//      for (j = 1; j < N-1; j++) { // "j" is the index that omp will parallel on
// but for the index declared outside of loop, this can still overlap since it has a different
// self-update rule, e.g., DRB018; for the index that is out of omp parallel region, e.g., i, the run will be sequential
// and should skip its check
AccessType getAccessTypeFor(const llvm::GetElementPtrInst *gep) {
  auto gepIdxes = getAllGEPIndexes(gep);
  auto parallelLoopIdx = getOMPParallelLoopIndex(gep);

  if (gepIdxes.isMultiDim()) {  // multi-dimension
    return getAccessTypeForMultiDim(gepIdxes, parallelLoopIdx);
  }

  // one-dimension
  if (gepIdxes.outerMostIdxName.has_value()) {  // one-dimension only using outerMostIdxName
    auto idxName = gepIdxes.outerMostIdxName;
    return parallelLoopIdx == idxName ? AccessType::NoRace : AccessType::ND;
  } else {  // one-dimension only using geps
    return isPerfectlyAligned(gep, parallelLoopIdx, false) ? AccessType::NoRace : AccessType::ND;
  }
}

// move add operation out the (sext) SCEV
class BitExtSCEVRewriter : public llvm::SCEVRewriteVisitor<BitExtSCEVRewriter> {
 private:
  const SCEV *rewriteCastExpr(const SCEVCastExpr *Expr);

 public:
  using super = SCEVRewriteVisitor<BitExtSCEVRewriter>;
  explicit BitExtSCEVRewriter(llvm::ScalarEvolution &SE) : super(SE) {}

  const SCEV *visit(const SCEV *S);

  inline const SCEV *visitZeroExtendExpr(const SCEVZeroExtendExpr *Expr) { return rewriteCastExpr(Expr); };

  inline const SCEV *visitSignExtendExpr(const SCEVSignExtendExpr *Expr) { return rewriteCastExpr(Expr); }
};

class SCEVBoundApplier : public llvm::SCEVRewriteVisitor<SCEVBoundApplier> {
 private:
  using super = SCEVRewriteVisitor<SCEVBoundApplier>;
  const llvm::Loop *ompLoop;

 public:
  SCEVBoundApplier(const llvm::Loop *ompLoop, llvm::ScalarEvolution &SE) : super(SE), ompLoop(ompLoop) {}

  const llvm::SCEV *visitAddRecExpr(const llvm::SCEVAddRecExpr *Expr);
};

class OpenMPLoopManager {
 private:
  Function *F;

  // dependent pass from LLVM
  DominatorTree *DT;

  // cached result. TODO: use const pointer
  SmallDenseMap<BasicBlock *, CallBase *, 4> ompStaticInitBlocks;
  SmallDenseMap<BasicBlock *, CallBase *, 4> ompDispatchInitBlocks;

  void init();

  Optional<int64_t> resolveBoundValue(const AllocaInst *V, const CallBase *initCall) const;

 public:
  // constructor
  OpenMPLoopManager(AnalysisManager<Function> &FAM, Function &fun)
      : F(&fun), DT(&FAM.getResult<DominatorTreeAnalysis>(fun)) {
    init();
  }

  // getter
  [[nodiscard]] inline Function *getTargetFunction() const { return F; }

  // query.
  // TODO: handle dynamic dispatch calls.
  inline CallBase *getStaticInitCallIfExist(const BasicBlock *block) const {
    auto it = ompStaticInitBlocks.find(block);
    return it == ompStaticInitBlocks.end() ? nullptr : it->second;
  }

  // TODO: handle dynamic dispatch for loop
  inline CallBase *getStaticInitCallIfExist(const Loop *L) const {
    if (L->getLoopPreheader() == nullptr) {
      return nullptr;
    }

    auto initBlock = L->getLoopPreheader()->getUniquePredecessor();
    return getStaticInitCallIfExist(initBlock);
  }

  std::pair<Optional<int64_t>, Optional<int64_t>> resolveOMPLoopBound(const Loop *L) const {
    return resolveOMPLoopBound(getStaticInitCallIfExist(L));
  }
  std::pair<Optional<int64_t>, Optional<int64_t>> resolveOMPLoopBound(const CallBase *initForCall) const;

  const SCEVAddRecExpr *getOMPLoopSCEV(const llvm::SCEV *root) const;

  // TODO: handle dynamic dispatch for loop
  inline bool isOMPForLoop(const Loop *L) const { return this->getStaticInitCallIfExist(L) != nullptr; }
};

template <typename PredTy>
const SCEV *findSCEVExpr(const llvm::SCEV *Root, PredTy Pred) {
  struct FindClosure {
    const SCEV *Found = nullptr;
    PredTy Pred;

    FindClosure(PredTy Pred) : Pred(Pred) {}

    bool follow(const llvm::SCEV *S) {
      if (!Pred(S)) return true;

      Found = S;
      return false;
    }

    bool isDone() const { return Found != nullptr; }
  };

  FindClosure FC(Pred);
  visitAll(Root, FC);
  return FC.Found;
}

inline const SCEV *stripSCEVBaseAddr(const SCEV *root) {
  return findSCEVExpr(root, [](const llvm::SCEV *S) -> bool { return isa<llvm::SCEVAddRecExpr>(S); });
}

const SCEV *getNextIterSCEV(const SCEVAddRecExpr *root, ScalarEvolution &SE) {
  auto step = root->getOperand(1);
  return SE.getAddRecExpr(SE.getAddExpr(root->getOperand(0), step), step, root->getLoop(), root->getNoWrapFlags());
}

}  // namespace

race::SimpleArrayAnalysis::SimpleArrayAnalysis() { PB.registerFunctionAnalyses(FAM); }

const SCEV *BitExtSCEVRewriter::visit(const SCEV *S) {
  auto result = super::visit(S);
  // recursively into the sub expression
  while (result != S) {
    S = result;
    result = super::visit(S);
  }
  return result;
}

const SCEV *BitExtSCEVRewriter::rewriteCastExpr(const SCEVCastExpr *Expr) {
  auto buildCastExpr = [&](const SCEV *op, Type *type) -> const SCEV * {
    switch (Expr->getSCEVType()) {
      case scSignExtend:
        return SE.getSignExtendExpr(op, type);
      case scZeroExtend:
        return SE.getZeroExtendExpr(op, type);
      default:
        llvm_unreachable("unhandled type of scev cast expression");
    }
  };

  const llvm::SCEV *Operand = super::visit(Expr->getOperand());
  if (auto add = llvm::dyn_cast<llvm::SCEVNAryExpr>(Operand)) {
    llvm::SmallVector<const llvm::SCEV *, 2> Operands;
    for (auto op : add->operands()) {
      Operands.push_back(buildCastExpr(op, Expr->getType()));
    }
    switch (add->getSCEVType()) {
      case llvm::scMulExpr:
        return SE.getMulExpr(Operands);
      case llvm::scAddExpr:
        return SE.getAddExpr(Operands);
      case llvm::scAddRecExpr:
        auto addRec = llvm::dyn_cast<llvm::SCEVAddRecExpr>(add);
        return SE.getAddRecExpr(Operands, addRec->getLoop(), addRec->getNoWrapFlags());
    }
  }
  return Operand == Expr->getOperand() ? Expr : buildCastExpr(Operand, Expr->getType());
}

const llvm::SCEV *SCEVBoundApplier::visitAddRecExpr(const llvm::SCEVAddRecExpr *Expr) {
  // stop at the OpenMP Loop
  if (Expr->getLoop() == ompLoop) {
    return Expr;
  }

  if (Expr->isAffine()) {
    auto op = visit(Expr->getOperand(0));
    auto step = Expr->getOperand(1);

    auto backEdgeCount = SE.getBackedgeTakenCount(Expr->getLoop());
    if (isa<SCEVConstant>(backEdgeCount)) {
      auto bounded = SE.getAddExpr(op, SE.getMulExpr(backEdgeCount, step));
      return bounded;
    }
  }
  return Expr;
}

void OpenMPLoopManager::init() {
  // initialize the map to the omp related calls
  for (auto &BB : *F) {
    for (auto &I : BB) {
      if (auto call = dyn_cast<CallBase>(&I)) {
        if (call->getCalledFunction() != nullptr && call->getCalledFunction()->hasName()) {
          auto funcName = call->getCalledFunction()->getName();
          if (OpenMPModel::isForStaticInit(funcName)) {
            this->ompStaticInitBlocks.insert(std::make_pair(&BB, call));
          } else if (OpenMPModel::isForDispatchInit(funcName)) {
            this->ompDispatchInitBlocks.insert(std::make_pair(&BB, call));
          }
        }
      }
    }
  }
}

Optional<int64_t> OpenMPLoopManager::resolveBoundValue(const AllocaInst *V, const CallBase *initCall) const {
  const llvm::StoreInst *storeInst = nullptr;
  for (auto user : V->users()) {
    if (auto SI = llvm::dyn_cast<llvm::StoreInst>(user)) {
      // simple cases, only has one store instruction
      if (storeInst == nullptr) {
        if (this->DT->dominates(SI, initCall)) {
          storeInst = SI;
        }
      } else {
        if (this->DT->dominates(SI, initCall)) {
          return Optional<int64_t>();
        }
      }
    }
  }

  if (storeInst) {
    auto bound = dyn_cast<ConstantInt>(storeInst->getValueOperand());
    if (bound) {
      return bound->getSExtValue();
    }
    return Optional<int64_t>();
  } else {
    // LOG_DEBUG("omp bound has no store??");
    return Optional<int64_t>();
  }
}

std::pair<Optional<int64_t>, Optional<int64_t>> OpenMPLoopManager::resolveOMPLoopBound(
    const CallBase *initForCall) const {
  Value *ompLB = nullptr, *ompUB = nullptr;  // up bound and lower bound
  if (OpenMPModel::isForStaticInit(initForCall->getCalledFunction()->getName())) {
    ompLB = initForCall->getArgOperand(4);
    ompUB = initForCall->getArgOperand(5);
  } else if (OpenMPModel::isForDispatchInit(initForCall->getCalledFunction()->getName())) {
    ompLB = initForCall->getArgOperand(3);
    ompUB = initForCall->getArgOperand(4);
  } else {
    return std::make_pair(Optional<int64_t>(), Optional<int64_t>());
  }

  auto allocaLB = llvm::dyn_cast<llvm::AllocaInst>(ompLB);
  auto allocaUB = llvm::dyn_cast<llvm::AllocaInst>(ompUB);

  // omp.ub and omp.lb are always alloca?
  if (allocaLB == nullptr || allocaUB == nullptr) {
    return std::make_pair(Optional<int64_t>(), Optional<int64_t>());
  }

  auto LB = resolveBoundValue(allocaLB, initForCall);
  auto UB = resolveBoundValue(allocaUB, initForCall);
  return std::make_pair(LB, UB);
}

const SCEVAddRecExpr *OpenMPLoopManager::getOMPLoopSCEV(const llvm::SCEV *root) const {
  // get the outter-most loop (omp loop should always be the outter-most
  // loop within an OpenMP region)
  auto omp = findSCEVExpr(root, [&](const llvm::SCEV *S) -> bool {
    if (auto addRec = llvm::dyn_cast<llvm::SCEVAddRecExpr>(S)) {
      if (this->isOMPForLoop(addRec->getLoop())) {
        return true;
      }
    }
    return false;
  });

  return llvm::dyn_cast_or_null<llvm::SCEVAddRecExpr>(omp);
}

// refer to https://llvm.org/docs/GetElementPtr.html
// an array access (load/store) is probably like this (the simplest case):
//   %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %idxprom3, !dbg !67
//   store i32 %add2, i32* %arrayidx4, align 4, !dbg !68, !tbaa !21
// the ptr %arrayidx4 should come from an getelementptr with array type load ptr
// HOWEVER, many "arrays" in C/C++ are actually pointers so that we cannot always confirm the array type,
// e.g., DRB014-outofbounds-orig-yes.ll
bool race::SimpleArrayAnalysis::isArrayAccess(const llvm::GetElementPtrInst *gep) {
  // must be array type
  bool isArray =
      gep->getPointerOperand()->getType()->getPointerElementType()->isArrayTy();  // fixed array size, e.g., int A[100];
  if (isArray || gep->getName().startswith(
                     "arrayidx")) {  // array size is a var or user input, e.g., DRB014-outofbounds-orig-yes.ll
    return true;
  }
  // must NOT be array type, e.g., DRB119-nestlock-orig-yes.ll
  if (gep->getPointerOperand()->getType()->getPointerElementType()->isStructTy()) {  // a non array field of a
    // struct
    return false;
  }

  // others we cannot determine, assume they might be array type to be conservative
  return true;
}

bool race::SimpleArrayAnalysis::isLoopArrayAccess(const race::MemAccessEvent *event1,
                                                  const race::MemAccessEvent *event2) {
  auto gep1 = getGEP(event1);
  if (!gep1) return false;

  auto gep2 = getGEP(event2);
  if (!gep2) return false;

  return isArrayAccess(gep1) && isArrayAccess(gep2);
}

// event1 must be write, event2 can be either read/write
bool race::SimpleArrayAnalysis::canIndexOverlap(const race::MemAccessEvent *event1,
                                                const race::MemAccessEvent *event2) {
  auto gep1 = getGEP(event1);
  if (!gep1) return false;

  auto gep2 = getGEP(event2);
  if (!gep2) return false;

  if (!isArrayAccess(gep1) || !isArrayAccess(gep2)) {
    return false;
  }

  // should be in same function
  if (gep1->getFunction() != gep2->getFunction()) {
    return false;
  }

  // TODO: get rid of const cast?
  auto &targetFun = *const_cast<llvm::Function *>(gep1->getFunction());
  auto &scev = FAM.getResult<ScalarEvolutionAnalysis>(targetFun);

  BitExtSCEVRewriter rewriter(scev);
  auto scev1 = scev.getSCEV(const_cast<llvm::Value *>(llvm::cast<llvm::Value>(gep1)));
  auto scev2 = scev.getSCEV(const_cast<llvm::Value *>(llvm::cast<llvm::Value>(gep2)));

  // the rewriter here move sext adn zext operations into the deepest scope
  // e.g., (4 + (4 * (sext i32 (2 * %storemerge2) to i64))<nsw> + %a) will be rewritten to
  //   ==> (4 + (8 * (sext i32 %storemerge2 to i64)) + %a)
  // this will simplied the scev expression as sext and zext are considered as variable instead of constant
  // during the computation between two scev expression.
  scev1 = rewriter.visit(scev1);
  scev2 = rewriter.visit(scev2);
  auto diff = dyn_cast<SCEVConstant>(scev.getMinusSCEV(scev1, scev2));

  if (diff == nullptr) {
    // TODO: we are unable to analyze unknown gap array index for now.
    return true;
  }

  if (diff->isZero()) {
    // check if the array access patterns are perfectly aligned and there is not overlap
    AccessType typ1 = getAccessTypeFor(gep1);
    AccessType typ2 = getAccessTypeFor(gep2);
    if (typ1 == AccessType::NoRace && typ2 == AccessType::NoRace) {
      return false;
    } else if (typ1 == AccessType::Race || typ2 == AccessType::Race) {
      return true;
    }
    // for all other cases, leave the job to the OpenMPLoopManager below
  }

  OpenMPLoopManager ompManager(FAM, targetFun);

  // Get the SCEV expression containing only OpenMP loop induction variable.
  auto omp1 = ompManager.getOMPLoopSCEV(scev1);
  auto omp2 = ompManager.getOMPLoopSCEV(scev2);

  // the scev expression does not contains OpenMP for loop
  if (!omp1 || !omp2) {
    return true;
  }

  if (!omp1->isAffine() || !omp2->isAffine()) {
    return true;
  }

  // different OpenMP loop, should never happen though
  if (omp1->getLoop() != omp2->getLoop()) {
    return true;
  }

  /* stripSCEVBaseAddr simplifies SCEV expressions when there is a nested parallel loop

  float A[N][N];
  for (int i = 0; ....)
   #pragma omp parallel for
   for (int j = 0; ...)
      A[i][j] = ...

  Before Strip:
  ((160 * (sext i32 %14 to i64))<nsw> + {((8 * (sext i32 %12 to i64))<nsw> + %a),+,8}<nw><%omp.inner.for.body.i>)
  |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
                  Base
  After Strip:
                                        {((8 * (sext i32 %12 to i64))<nsw> + %a),+,8}<nw><%omp.inner.for.body.i>

  From OpenMP's perspective there is no multi-dimensional array in this case.
  The outlined OpenMP region will see (i*sizeof(float)) + A as the base address and j as the *only* induction variable.
  stripSCEVBaseAddr strips (i*sizeof(float)) from the SCEV.

  Because this base value is constant with regard to the OpenMP region, the stripped portion can be safely ignored. */
  scev1 = stripSCEVBaseAddr(scev1);
  scev2 = stripSCEVBaseAddr(scev2);

  // This will be true when the parallel loop is nested in a non-parallel outer loop
  if (omp1 == scev1 && omp2 == scev2) {
    uint64_t distance = diff->getAPInt().abs().getLimitedValue();
    auto step = omp1->getOperand(1);

    if (auto constStep = llvm::dyn_cast<llvm::SCEVConstant>(step)) {
      // the step of the loop
      uint64_t loopStep = constStep->getAPInt().abs().getLimitedValue();
      // assume we iterate at least one time
      if (distance == loopStep) {
        return true;
      }

      /* When the loopStep is greater than distance, overlapping accesses are not possible
        Consider the following loop
          for (int i = 0; i < N; i+=2)
            A[i] = i;
            A[i+1] = i;
        The two accesses being considered are A[i] and A[i+1].
        The distance between these two accesses is 1
        As long as the step is greater than this distance there will be no overlap
          i=0 {0, 1} | i=2 {2, 3} | i=4 {4, 5} | ...
        But iof the loopstep is not greater, there may be an overlap.
        Consider a loopstep of 1
          i=0 {0, 1} | i=1 {1, 2} | ...
        Iterations 0 and 1 both access A at an offset of 1*/
      if (distance < loopStep) {
        return false;
      }

      auto bounds = ompManager.resolveOMPLoopBound(omp1->getLoop());
      if (bounds.first.hasValue() && bounds.second.hasValue()) {
        // do we need special handling for negative bound?
        int64_t lowerBound = std::abs(bounds.first.getValue());
        int64_t upperBound = std::abs(bounds.second.getValue());

        // if both bound are resolvable
        // FIXME: why do we need to divide by loopstep?
        assert(std::max(lowerBound, upperBound) >= 0);  // both bounds should be >=0, isn't it?
        long unsigned int maxBound = static_cast<long unsigned int>(std::max(lowerBound, upperBound));
        if (maxBound < (distance / loopStep)) {
          return false;
        }
      }
    }
  } else {
    // FIXME: what is this check doing and why does it work?
    SCEVBoundApplier boundApplier(omp1->getLoop(), scev);

    // this scev represent the largest array elements that will be accessed in the nested loop
    auto b1 = boundApplier.visit(scev1);
    auto b2 = boundApplier.visit(scev2);

    // thus if the largest index is smaller than the smallest index in the next OpenMP loop iteration
    // there is no race
    // TODO: negative loop? are they canonicalized?
    auto n1 = getNextIterSCEV(omp1, scev);
    auto n2 = getNextIterSCEV(omp2, scev);

    std::vector<const SCEV *> gaps = {scev.getMinusSCEV(n1, b1), scev.getMinusSCEV(n1, b2), scev.getMinusSCEV(n2, b1),
                                      scev.getMinusSCEV(n2, b2)};

    if (std::all_of(gaps.begin(), gaps.end(), [](const SCEV *expr) -> bool {
          if (auto constExpr = dyn_cast<SCEVConstant>(expr)) {
            // the gaps are smaller or equal to zero
            return !constExpr->getAPInt().isNonPositive();
          }
          return false;
        })) {
      // then there is no race
      return false;
    }
  }

  // If unsure report they do alias
  llvm::errs() << "unsure so reporting alias\n";
  return true;
}
