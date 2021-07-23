
#include "SimpleArrayAnalysis.h"

namespace {

bool regionEndLessThan(const race::Region &region1, const race::Region &region2) { return region1.end < region2.end; }

// this is more like "get def"/"get getelementptr", not all getelementptr is array-related
const llvm::GetElementPtrInst *getGEP(const race::MemAccessEvent *event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
}

bool isBinaryOp(unsigned int op) { return op >= 13 && op <= 24; }

bool isLogicalOp(unsigned int op) { return op >= 25 && op <= 30; }

bool isMathCast(unsigned int op) { return op >= 38 && op <= 46; }

// whether this is a math operation, e.g., add, mul, or
// the range of llvm standard binary (13-24) and logical (25-30) and cast (38-46) operators, see llvm/IR/Instruction.def
bool isMathOp(unsigned int op) { return isBinaryOp(op) || isLogicalOp(op) || isMathCast(op); }

bool isIndvars(llvm::Value *idx) { return idx->hasName() && idx->getName().startswith("indvars."); }

// intermediate var between "indvars." and index
bool isIndvarsNext(llvm::Value *idx) { return idx->hasName() && idx->getName().startswith("indvars.iv.next"); }

bool isIdxprom(llvm::Value *idx) { return idx->hasName() && idx->getName().startswith("idxprom"); }

bool isStoreMerge(llvm::Value *idx) { return idx->hasName() && idx->getName().startswith("storemerge"); }

bool isFromCollapse(llvm::Value *idx) {
  if (!idx->hasName()) return false;
  const StringRef &idxName = idx->getName();
  return idxName.startswith("div.") || idxName.startswith("sub.");
}

std::string recursivelyRetrieveIdx(llvm::Instruction *ir);
std::string getIterateIndex(const llvm::GetElementPtrInst *gep);

// the name of idx must starts with "idxprom"
std::string getIdxForIdxprom(Value *idx) {
  assert(isIdxprom(idx) && "The name of idx must starts with idxprom");

  // must be a sext instruction, e.g., %idxprom4.i = sext i32 %19 to i64
  // refer to https://llvm.org/docs/LangRef.html#sext-to-instruction
  auto sext = llvm::dyn_cast<llvm::SExtInst>(idx);
  Value *op = sext->getOperand(0);
  if (auto load = llvm::dyn_cast<llvm::LoadInst>(op)) {
    op = load->getPointerOperand();
    auto gep_Op = llvm::dyn_cast<llvm::GetElementPtrInst>(op->stripPointerCasts());
    if (gep_Op) {
      // parallel-related:
      // check if idx is incremented related to the index variable and other arrays, e.g., DRB005-008, DRB052
      // the related IR is like:
      //  %18 = getelementptr [180 x i32], [180 x i32]* @indexSet, i32 0, i64 %indvars.iv.i, !dbg !114
      //    // --> this is gen_Op, which index is indvars
      //  %19 = load i32, i32* %18, align 4, !dbg !114, !tbaa !112, !noalias !91
      //  %idxprom4.i = sext i32 %19 to i64, !dbg !118
      //  %22 = getelementptr double, double* %21, i64 %idxprom4.i, !dbg !118
      return getIterateIndex(gep_Op);
    } else {
      return op->getName();
    }
  } else if (isFromCollapse(op)) {
    // maybe are nested loops using collapse, e.g.,DRB093, the IR is like:
    //  %idxprom.i = sext i32 %div.i to i64, !dbg !60
    //  %idxprom7.i = sext i32 %sub.i to i64, !dbg !60
    //  %16 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* @a, i32 0, i64 %idxprom.i, !dbg !60
    //  %17 = getelementptr [100 x i32], [100 x i32]* %16, i32 0, i64 %idxprom7.i, !dbg !60
    // if so, this is nested loop with the collapse clause: should have no dependency and no race
    return "collapse";
  } else if (isStoreMerge(op)) {
    // maybe this index is not private, e.g., DRB073, the IR is like:
    //  %storemerge6.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i ]
    //  %idxprom3.i = sext i32 %storemerge6.i to i64, !dbg !67
    //  %16 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* @a, i32 0, i64 %indvars.iv.i, !dbg !67
    //  %17 = getelementptr [100 x i32], [100 x i32]* %16, i32 0, i64 %idxprom3.i, !dbg !67
    return op->getName().str();
  } else if (auto math = llvm::dyn_cast<llvm::Instruction>(op)) {
    return recursivelyRetrieveIdx(math);
  }
  return "";
}

llvm::Value *getNonConstOperand(llvm::Instruction *ir) {
  auto rhs = ir->getOperand(0);
  if (llvm::isa<llvm::Constant>(rhs)) {
    rhs = ir->getOperand(1);
  }
  return rhs;
}

// recursively check if this IR is a mul/add/sub/div on another index, e.g., DRB014, DRB033
//     %indvars.iv.next23.i = add nsw i64 %indvars.iv22.i, 1, !dbg !61
//     %17 = mul nsw i64 %indvars.iv.next23.i, 100, !dbg !98
// 1st op is lhs, 2nd op is the first element on rhs
std::string recursivelyRetrieveIdx(llvm::Instruction *ir) {
  if (!isMathOp(ir->getOpcode())) return "";

  while (isMathOp(ir->getOpcode())) {
    assert(ir->getNumOperands() >= 1 && "The index IR of standard binary operators should have at least 1 operands.");
    auto rhs = getNonConstOperand(ir);  // lhs = ir
    if (isIndvars(rhs)) {
      ir = llvm::dyn_cast<llvm::Instruction>(rhs);
    } else if (isIndvars(ir)) {
      return ir->getName();
    } else if (isIdxprom(ir)) {
      return getIdxForIdxprom(ir);
    } else if (isLogicalOp(ir->getOpcode()) || isMathCast(ir->getOpcode()) ||
               !ir->hasName()) {  // complex operation on index
      ir = llvm::dyn_cast<llvm::Instruction>(rhs);
    } else {  // too complex, cannot handle now
      return "";
    }
  }
  return ir->getName();
}

// return the name of the index variable that the loop (containing gep) will iterate on (or related to this index var),
// which might not be the index that omp parallel will parallel on:
// (1) if the name of index var/ptr starts with "indvars.", it is the index variable of loop, e.g., %indvars.iv.i, and
// it is private (2) if starting with "idxprom" + an int, e.g., %idxprom15.i, can be: a. it is not the index variable
// and declared outside of loop, and has its own self-incrementing rules b. it is not the index variable, but computed
// from the index variable c. it is the index variable but is not private d. it is the index variable but not in omp
// parallel region (3) if starting with "storemerge" + an int, e.g., %storemerge6.i, it is the index variable but is not
// private
std::string getIterateIndex(const llvm::GetElementPtrInst *gep) {
  auto idx = gep->getOperand(gep->getNumOperands() - 1);  // the last operand
  if (isIndvarsNext(idx)) {
    auto math = llvm::dyn_cast<llvm::Instruction>(idx);
    return recursivelyRetrieveIdx(math);
  } else if (isIndvars(idx)) {
    return idx->getName().str();
  } else if (isIdxprom(idx)) {
    return getIdxForIdxprom(idx);
  } else if (auto math = llvm::dyn_cast<llvm::Instruction>(idx)) {
    return recursivelyRetrieveIdx(math);
  }

  llvm::errs() << "Unhandled loop index types: " << idx << "\n";
  return "";
}

class my_stack : public std::stack<const llvm::GetElementPtrInst *> {
 public:
  using std::stack<const llvm::GetElementPtrInst *>::c;  // expose the container
};

// record the result of findAllGEPForArrayAccess
struct ArrayAccess {
  my_stack idxes;
  std::string outerMostIdxName;

  ArrayAccess(my_stack idxes, std::string outerMostIdxName) : idxes(idxes), outerMostIdxName(outerMostIdxName) {}

  bool hasOuterMostIdxName() { return outerMostIdxName != ""; }
  std::string getOuterMostIdxName() { return outerMostIdxName; }
};

// find all the indexes/GEPs for this array access
ArrayAccess findAllGEPForArrayAccess(const llvm::GetElementPtrInst *gep) {
  my_stack idxes;
  while (gep != nullptr) {
    idxes.push(gep);
    auto base = gep->getOperand(0);
    // (base->getType()->isArrayTy() || base->getType()->getContainedType(0)->isArrayTy()) --> this is not always valid
    gep = llvm::dyn_cast<llvm::GetElementPtrInst>(base->stripPointerCasts());
  }

  // check if the base ptr has operations on index, e.g., DRB003, the IR looks like:
  //    %21 = mul nsw i64 %indvars.iv21.i, %vla1, !dbg !137 --> this is the operation on index
  //    %22 = getelementptr double, double* %a, i64 %21, !dbg !137
  //    %25 = getelementptr double, double* %22, i64 %indvars.iv.i, !dbg !140
  //    store double %add19.i, double* %25, align 8, !dbg !141, !tbaa !63, !noalias !104
  auto lastGep = idxes.top();
  auto lastIdx = lastGep->getOperand(lastGep->getNumOperands() - 1);
  long removedIdx = idxes.empty() ? 0 : idxes.size() - 1;
  if (idxes.size() > 1) {  // reversely check
    long i = idxes.size() - 2;
    while (isIdxprom(lastIdx) && i >= 0) {  // skip if this idx is "idxprom", e.g., DRB037
      lastIdx = idxes.c[i]->getOperand(lastGep->getNumOperands() - 1);
      removedIdx = i;
      i--;
    }
  }
  if (!isIdxprom(lastIdx)) {
    auto ir = llvm::dyn_cast<llvm::Instruction>(lastIdx);
    std::string name = recursivelyRetrieveIdx(ir);
    if (name != "") {  // remove this idx from idxes since we already record its index name
      idxes.c.erase(idxes.c.begin() + removedIdx);
    }
    return ArrayAccess{idxes, name};
  }

  return ArrayAccess{idxes, ""};
}

// return the name of the ONE index that omp parallel will parallel on, e.g., DRB169
//    #pragma omp parallel for
//    for (i = 1; i < N-1; i++) { // "i" is the index that omp will parallel on IF there is no collapse clause
//      for (j = 1; j < N-1; j++) { ...
std::string getLoopParallelIndexes(const llvm::GetElementPtrInst *gep) {
  auto bb = gep->getParent();

  // check whether this idx is the one that omp parallel on
  auto func = bb->getParent();
  for (auto it = func->begin(); it != func->end(); it++) {
    const StringRef &bbName = it->getName();
    // this is the basic block with the index:
    // (1) if using "omp parallel for", find the basic block has name "omp.inner.for.body.i"
    // (2) others, e.g., "omp target", find the basic block has name "for.body.i" or "for.cond.preheader.i"
    // TODO: maybe have other cases for other omp directives
    if (bbName == "omp.inner.for.body.i" || bbName == "for.body.i" ||
        bbName == "for.cond.preheader.i") {  // e.g., DRB003
      assert(it->front().getOpcode() == llvm::Instruction::PHI && "The index must be from a phi node.");
      return it->front().getName().str();
    }
  }

  return "";
}

bool isPerfectlyAligned(const GetElementPtrInst *idx, std::string parallelIdx, bool isInnerIdx) {
  std::string idxName = getIterateIndex(idx);
  if (isInnerIdx) {  // the omp parallel loop will parallel on this idx
    return idxName == "collapse" ? true : idxName.rfind("indvars.", 0) == 0;
  } else {  // the omp parallel loop will parallel on this idx
    return idxName == "collapse" ? true : parallelIdx == idxName;
  }
}

// return true this index is used within the scope of omp parallel region, used for multi-dimension array
bool isOmpRelevant(std::string idxName) {
  return idxName == "collapse" || idxName.rfind("indvars.", 0) == 0 || idxName.rfind("idxprom", 0) == 0 ||
         idxName.rfind("storemerge", 0) == 0;
}

// return true this index is used within the scope of omp parallel region, used for multi-dimension array
bool isOmpRelevant(const GetElementPtrInst *idx) {
  std::string idxName = getIterateIndex(idx);
  return isOmpRelevant(idxName);
}

// return result of noRaceFor
enum class NoRaceType { NoRace, Race, ND };  // ND = not determined: too complex -> leave it to SCEV

NoRaceType noRaceForMultiDim(my_stack idxes, std::string parallelIdx) {
  // skip index outside of omp parallel region
  const GetElementPtrInst *idx = idxes.top();
  idxes.pop();
  while (!isOmpRelevant(idx)) {
    idx = idxes.top();
    idxes.pop();
  }

  // this is the outermost omp parallel index of the array
  if (!isPerfectlyAligned(idx, parallelIdx, false)) return NoRaceType::Race;

  // for inner loopIdxes
  while (!idxes.empty()) {
    auto innerIdx = idxes.top();
    idxes.pop();
    if (!isPerfectlyAligned(innerIdx, parallelIdx, true)) return NoRaceType::Race;
  }
  return NoRaceType::NoRace;
}

// For the following conditions, when diff == 0, array access patterns are perfectly aligned and there is not overlap
// and there is no race when:
// (1) for one dimension loop:
// the index var used by gep is the one that
// a. the loop(s) will iterate over,
// b. and the omp parallel loop will parallel on or is parallel-related,
//
// (2) for multi dimension loops:
// the index var used by gep is the one that
// a. the loop(s) will iterate over,
// b. the omp parallel loop will parallel on or is parallel-related (see line 28),
//    #pragma omp parallel for private(j)
//    for (i = 1; i < N-1; i++) { // "i" is the index that omp will parallel on
//      for (j = 1; j < N-1; j++) { ...
//        a[i][j] = ... // i == paralleled index with perfect arrangement: no write/write race, can have read/write race
//        write/write and read/write races
// c. if there is collapse clause: should not have dependency across loops and perfect aligned, should not have race
// d. if the index of inner loop(s) is shared, e.g., j is shared across threads
//    #pragma omp parallel for
//    for (i = 1; i < N-1; i++) { // "i" is the index that omp will parallel on
//      for (j = 1; j < N-1; j++) { ...
//        a[i][j] = ... // can have write/write and read/write race on both j and array element
//
// An example IR of multi-dimension array access IR for x[i][j] is (array struct might be other types):
//     %16 = getelementptr [100 x [100 x i32]], [100 x [100 x i32]]* @a, i32 0, i64 %idxprom.i, !dbg !60
//     %17 = getelementptr [100 x i32], [100 x i32]* %16, i32 0, i64 %idxprom7.i, !dbg !60
//     %18 = load i32, i32* %17, align 4, !dbg !60, !tbaa !57, !noalias !39
//
// PS: this is valid when the loop iterate over the index, e.g., j not i,
//    for (i = 1; i < N-1; i++) {
//      #pragma omp parallel for
//      for (j = 1; j < N-1; j++) { // "j" is the index that omp will parallel on
// but for the index declared outside of loop, this can still overlap since it has a different
// self-update rule, e.g., DRB018; for the index that is out of omp parallel region, e.g., i,
// the run will be sequential and should skip its check
NoRaceType noRaceFor(const llvm::GetElementPtrInst *gep) {
  auto loopIdxes = findAllGEPForArrayAccess(gep);
  auto parallelIdx = getLoopParallelIndexes(gep);  // the outermost index of the loop that omp parallels on

  if (loopIdxes.hasOuterMostIdxName()) {  // may be one-dimension or multi-dimension
    auto idxName = loopIdxes.getOuterMostIdxName();
    if (loopIdxes.idxes.size() > 0) {  // multi-dimension
      if (!isOmpRelevant(idxName)) {   // skip index outside of omp parallel region
        return noRaceForMultiDim(loopIdxes.idxes, parallelIdx);
      }
    }
    return parallelIdx == idxName ? NoRaceType::NoRace : NoRaceType::ND;
  } else if (loopIdxes.idxes.size() == 1) {  // one-dimension array
    return isPerfectlyAligned(gep, parallelIdx, false) ? NoRaceType::NoRace : NoRaceType::ND;
  } else {  // multi-dimension array
    return noRaceForMultiDim(loopIdxes.idxes, parallelIdx);
  }
}

// move add operation out the (sext ) SCEV
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

race::SimpleArrayAnalysis::SimpleArrayAnalysis(const OpenMPAnalysis &ompAnalysis) : ompAnalysis(ompAnalysis) {
  PB.registerFunctionAnalyses(FAM);
}

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

const std::vector<race::SimpleArrayAnalysis::LoopRegion> &race::SimpleArrayAnalysis::getOmpForLoops(
    const ThreadTrace &thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  // auto const loopRegions = ;
  ompForLoops[thread.id] = ompAnalysis.getLoopRegions(thread);

  return ompForLoops.at(thread.id);
}

bool race::SimpleArrayAnalysis::inParallelFor(const race::MemAccessEvent *event) {
  auto loopRegions = getOmpForLoops(event->getThread());
  auto const eid = event->getID();

  auto it =
      lower_bound(loopRegions.begin(), loopRegions.end(), Region(eid, eid, event->getThread()), regionEndLessThan);
  if (it != loopRegions.end()) {
    if (it->contains(eid)) return true;
  }

  return false;
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

  return isArrayAccess(gep1) && isArrayAccess(gep2) && inParallelFor(event1) && inParallelFor(event2);
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

  // an array write may include two IRs: load + store, e.g.,
  //     %19 = getelementptr [20 x [20 x double]], [20 x [20 x double]]* %a, i32 0, i64 %indvars.iv.next22.i, !dbg !108
  //     %20 = getelementptr [20 x double], [20 x double]* %19, i32 0, i64 %indvars.iv.i, !dbg !108
  //     %21 = load double, double* %20, align 8, !dbg !108, !tbaa !46, !noalias !77
  //     %22 = getelementptr [20 x [20 x double]], [20 x [20 x double]]* %a, i32 0, i64 %indvars.iv21.i, !dbg !110
  //     %23 = getelementptr [20 x double], [20 x double]* %22, i32 0, i64 %indvars.iv.i, !dbg !110
  //     %24 = load double, double* %23, align 8, !dbg !111, !tbaa !46, !noalias !77 // --> get the array element: load
  //     %add17.i = fadd double %21, %24, !dbg !111  // --> do computation on this element
  //     store double %add17.i, double* %23, align 8, !dbg !111, !tbaa !46, !noalias !77 // --> put it back: store
  // this pair of load and store from different threads is FP: even though they race with each other, we should report
  // the corresponding write/write race.
  // note: the ir stmt before the last store must be operating on different geps
  if (event2->type == Event::Type::Read) {
    auto loadBase = event2->getInst()->getOperand(0);
    auto storeBase = event1->getInst()->getOperand(1);  // must be write
    if (loadBase == storeBase) {
      auto storeOp = event1->getInst()->getOperand(0);
      if (auto inst = llvm::cast<llvm::Instruction>(storeOp)) {
        auto op1 = inst->getOperand(0);
        auto op2 = inst->getOperand(1);
        auto opGep1 = llvm::dyn_cast<llvm::GetElementPtrInst>(op1->stripPointerCasts());
        auto opGep2 = llvm::dyn_cast<llvm::GetElementPtrInst>(op2->stripPointerCasts());
        if (opGep1 != opGep2) {
          // avoid the case that: its self load, conduct operation on it, then store back on the same element, should be
          // race, e.g., DRB073
          return false;
        }
      }
    }
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
    // array access patterns are perfectly aligned and there is not overlap
    NoRaceType typ1 = noRaceFor(gep1);
    NoRaceType typ2 = noRaceFor(gep2);
    if (typ1 == NoRaceType::NoRace && typ2 == NoRaceType::NoRace) {
      return false;
    } else if (typ1 == NoRaceType::Race || typ2 == NoRaceType::Race) {
      return true;
    }
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
