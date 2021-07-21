#include "Analysis/OpenMPAnalysis.h"

#include "LanguageModel/OpenMP.h"
#include "Trace/Event.h"
#include "Trace/ProgramTrace.h"
#include "Trace/ThreadTrace.h"

using namespace race;
using namespace llvm;

namespace {

// this is more like "get def"/"get getelementptr", not all getelementptr is array-related
const llvm::GetElementPtrInst *getGEP(const MemAccessEvent *event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
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
bool regionEndLessThan(const Region &region1, const Region &region2) { return region1.end < region2.end; }

}  // namespace

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

OpenMPAnalysis::OpenMPAnalysis(const ProgramTrace &program)
    : getThreadNumAnalysis(program), lastprivate(program.getModule()) {
  PB.registerFunctionAnalyses(FAM);
}

bool OpenMPAnalysis::canIndexOverlap(const race::MemAccessEvent *event1, const race::MemAccessEvent *event2) {
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
    // simplest case, array access patterns are perfectly aligned an there is not overlap
    return false;
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

namespace {

// recursively find the spawn site of the closest/innermost OpenMPFork for this event
std::optional<const ForkEvent *> getRootSpawnSite(const Event *event) {
  auto eSpawn = event->getThread().spawnSite;
  if (!eSpawn) return std::nullopt;
  if (eSpawn.value()->getIRInst()->type == IR::Type::OpenMPTaskFork) {
    // this works when the event is from omp task fork: we need the parent spawn site here,
    // and the code may have nested tasks
    while (eSpawn.value()->getIRInst()->type != IR::Type::OpenMPFork) {
      auto parentSpawn = eSpawn.value()->getThread().spawnSite;
      if (!parentSpawn) return std::nullopt;
      eSpawn = parentSpawn;
    }
  }
  return eSpawn;
}

// return true if both events belong to the same OpenMP team (e.g., under the same #pragma omp parallel)
// This function is split out so that it can be called from the template functions below (in, inSame, etc)
bool _fromSameParallelRegion(const Event *event1, const Event *event2) {
  // Check both spawn events are OpenMP forks
  auto e1Spawn = getRootSpawnSite(event1);
  if (!e1Spawn || !e1Spawn.value()) return false;

  auto e2Spawn = getRootSpawnSite(event2);
  if (!e2Spawn || !e2Spawn.value()) return false;

  // Check they are spawned from same thread
  if (e1Spawn.value()->getThread().id != e2Spawn.value()->getThread().id) return false;

  // Check that they are adjacent. Only matching omp forks can be adjacent, because they are always followed by joins
  auto const eid1 = e1Spawn.value()->getID();
  auto const eid2 = e2Spawn.value()->getID();
  auto const diff = (eid1 > eid2) ? (eid1 - eid2) : (eid2 - eid1);
  return diff == 1;
}

// Get list of (non-nested) event regions
// template definition can be in cpp as long as we dont expose the template outside of this file
template <IR::Type Start, IR::Type End>
std::vector<Region> getRegions(const ThreadTrace &thread) {
  std::vector<Region> regions;

  std::optional<EventID> start;
  for (auto const &event : thread.getEvents()) {
    switch (event->getIRType()) {
      case Start: {
        assert(!start.has_value() && "encountered two start types in a row");
        start = event->getID();
        break;
      }
      case End: {
        assert(start.has_value() && "encountered end type without a matching start type");
        regions.emplace_back(start.value(), event->getID(), thread);
        start.reset();
        break;
      }
      default:
        // Nothing
        break;
    }
  }

  return regions;
}

auto constexpr _getLoopRegions = getRegions<IR::Type::OpenMPForInit, IR::Type::OpenMPForFini>;

// Get the innermost region that contains event
template <IR::Type Start, IR::Type End>
std::optional<Region> getContainingRegion(const Event *event) {
  if (!event) return std::nullopt;

  auto const &thread = event->getThread();
  auto const regions = getRegions<Start, End>(thread);

  // If we are on thread spawned wihtin parallel region,
  // we can also check to see if this thread was spawned within a region on the parent thread:
  // This ONLY valid when the event is from threads spawned by OpenMPTask (or maybe also OpenMPForkTeams later if we
  // also need such checks). For other cases (e.g., events from threads spawned by OpenMPFork), if there exists such a
  // region, the region must be in the same thread, not parent thread. If we remove the check, we will get wrong/null
  // regions for the other cases.
  if (regions.empty()) {
    auto parent = thread.spawnSite.value();
    if (parent->getIRInst()->type == IR::Type::OpenMPTaskFork) {
      return getContainingRegion<Start, End>(parent);
    }
    return std::nullopt;
  }

  for (auto const &region : regions) {
    if (region.contains(event->getID())) {
      return region;
    }
  }

  return std::nullopt;
}

// return true if both events are inside of the region marked by Start and End
// see getRegions for more detail on regions
// (event1 is always from Thread1, i.e., the master thread, which has the full thread trace with all IRs)
template <IR::Type Start, IR::Type End>
bool inSame(const Event *event1, const Event *event2) {
  assert(_fromSameParallelRegion(event1, event2) && "events must be from same omp parallel region");

  // get omp region contains the event
  auto const region1 = getContainingRegion<Start, End>(event1);
  auto const region2 = getContainingRegion<Start, End>(event2);

  if (!region1 || !region2) {
    return false;
  }

  // Omp threads in same team may or may not have identical traces so we see them separately
  if (region1.value().sameAs(region2.value())) {
    return true;
  }

  return false;
}

auto const _inSameSingleBlock = inSame<IR::Type::OpenMPSingleStart, IR::Type::OpenMPSingleEnd>;

}  // namespace

const std::vector<OpenMPAnalysis::LoopRegion> &OpenMPAnalysis::getOmpForLoops(const ThreadTrace &thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  ompForLoops[thread.id] = _getLoopRegions(thread);

  return ompForLoops.at(thread.id);
}

bool OpenMPAnalysis::inParallelFor(const race::MemAccessEvent *event) {
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
bool OpenMPAnalysis::isArrayAccess(const llvm::GetElementPtrInst *gep) {
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

bool OpenMPAnalysis::isLoopArrayAccess(const race::MemAccessEvent *event1, const race::MemAccessEvent *event2) {
  auto gep1 = getGEP(event1);
  if (!gep1) return false;

  auto gep2 = getGEP(event2);
  if (!gep2) return false;

  return isArrayAccess(gep1) && isArrayAccess(gep2) && inParallelFor(event1) && inParallelFor(event2);
}

bool OpenMPAnalysis::fromSameParallelRegion(const Event *event1, const Event *event2) const {
  return _fromSameParallelRegion(event1, event2);
}

bool OpenMPAnalysis::inSameSingleBlock(const Event *event1, const Event *event2) const {
  return _inSameSingleBlock(event1, event2);
}

std::vector<const llvm::BasicBlock *> &ReduceAnalysis::computeGuardedBlocks(ReduceInst reduce) const {
  assert(reduceBlocks.find(reduce) == reduceBlocks.end() &&
         "Should not call compute if results have already been computed");

  // compute results, cache them, then return them
  auto &blocks = reduceBlocks[reduce];

  /* We are expecting the reduce code produced by clang to follow a specific pattern:
    -------------------------------------------------
      %15 = call i32 @__kmpc_reduce(...)
      switch i32 %15, label %.omp.reduction.default [
        i32 1, label %.omp.reduction.case1
        i32 2, label %.omp.reduction.case2
      ]

    .omp.reduction.case1:
      ...
      call void @__kmpc_end_reduce(...)
      br label %.omp.reduction.default

    .omp.reduction.case2:
      ...
      call void @__kmpc_end_reduce(...)
      br label %.omp.reduction.default

    .omp.reduction.default:
      ...
    -------------------------------------------------

    Our logic makes the following assumptions:
      - There is a switch after the reduce call
      - the default case on the switch is the end fo the reduce code
      - The default case post-dominates the switch

    If these assumptions are true, we can get the blocks that make up
    the reduction code by getting all blocks that are reachable from the switch but
    stop when we reach the default case block (end of the reduce code)
  */

  auto const switchInst = llvm::dyn_cast<llvm::SwitchInst>(reduce->getNextNode());
  assert(switchInst && "instruction after reduce should always be switch");

  // Default dest marks the end of the reduce
  auto const exitBlock = switchInst->getDefaultDest();

  std::vector<const llvm::BasicBlock *> worklist;
  std::set<const llvm::BasicBlock *> visited;
  for (auto const succ : successors(switchInst)) {
    worklist.push_back(succ);
  }

  while (!worklist.empty()) {
    auto block = worklist.back();
    worklist.pop_back();
    visited.insert(block);

    // Stop traversing when we reach end of reduce code
    if (block == exitBlock) continue;

    // add to list of blocks covered by this reduce
    blocks.push_back(block);

    // sanity check that all succ must eventually reach exitBlock
    assert(llvm::succ_size(block) > 0 && "block should have successors");

    // Keep traversing
    for (auto const succ : llvm::successors(block)) {
      if (visited.find(succ) == visited.end()) {
        worklist.push_back(succ);
      }
    }
  }

  return blocks;
}

const std::vector<const llvm::BasicBlock *> &ReduceAnalysis::getReduceBlocks(ReduceInst reduce) const {
  // Check cache first
  if (auto it = reduceBlocks.find(reduce); it != reduceBlocks.end()) {
    return it->second;
  }

  // Else compute
  return computeGuardedBlocks(reduce);
}

bool ReduceAnalysis::reduceContains(const llvm::Instruction *reduce, const llvm::Instruction *inst) const {
  auto const &blocks = getReduceBlocks(reduce);
  return std::find(blocks.begin(), blocks.end(), inst->getParent()) != blocks.end();
}

bool OpenMPAnalysis::inSameReduce(const Event *event1, const Event *event2) const {
  // Find reduce events
  for (auto const &event : event1->getThread().getEvents()) {
    // If an event e is inside of a reduce block it must occur *after* the reduce event
    // so, if either event is encountered before finding a reduce that contains event1
    // we know that they are not in the same reduce block
    // since event2 might in a thread that removes single/master events (since we always traverse
    // them in a small thread ID and here the TID of event1 <= TID of event2), so event2 can
    // have smaller eventID than event1's
    if (event->getID() == event1->getID()) return false;

    // Once a reduce is found, check that it contains both events (true)
    // or that it contains neither event (keep searching)
    // if it contains one but not the other, return false
    if (event->getIRType() == IR::Type::OpenMPReduce) {
      auto const reduce = event->getInst();
      auto const contains1 = reduceAnalysis.reduceContains(reduce, event1->getInst());
      auto const contains2 = reduceAnalysis.reduceContains(reduce, event2->getInst());
      if (contains1 && contains2) return true;
      if (contains1 || contains2) return false;
    }
  }

  return false;
}

#include "IR/IR.h"
#include "Trace/ProgramTrace.h"
#include "Trace/ThreadTrace.h"

namespace {

// Get any icmp_eq insts that use this value and compare against a constant integer
// return list of pairs (cmp, c) where cmp is the cmpInst and c is the constant value compared against
std::vector<std::pair<const llvm::CmpInst *, uint64_t>> getConstCmpEqInsts(const llvm::Value *value) {
  std::vector<std::pair<const llvm::CmpInst *, uint64_t>> result;

  std::vector<const llvm::User *> worklist;

  for (auto user : value->users()) {
    worklist.push_back(user);
  }

  while (!worklist.empty()) {
    auto const user = worklist.back();
    worklist.pop_back();

    // follow loads
    if (auto load = llvm::dyn_cast<llvm::LoadInst>(user)) {
      for (auto loadUser : load->users()) {
        worklist.push_back(loadUser);
      }
      continue;
    }

    if (auto cmp = llvm::dyn_cast<llvm::CmpInst>(user)) {
      if (cmp->getPredicate() != llvm::CmpInst::Predicate::ICMP_EQ) continue;

      if (auto val = llvm::dyn_cast<llvm::ConstantInt>(cmp->getOperand(1))) {
        result.emplace_back(cmp, val->getZExtValue());
        continue;
      }

      if (auto val = llvm::dyn_cast<llvm::ConstantInt>(cmp->getOperand(0))) {
        result.emplace_back(cmp, val->getZExtValue());
        continue;
      }
    }
  }

  return result;
}

// Get list of blocks guarded by one case of this branch.
// branch arg decides if checking for blocks guarded by true or false branch
// Start by assuming the target block is guarded
// Iterate from the target block until we find a block that has an unguarded predecessor
// Cannot handle loops
std::set<const llvm::BasicBlock *> getGuardedBlocks(const llvm::BranchInst *branchInst, bool branch = true) {
  // This branch should use a cmp eq instruction
  // Otherwise the true/false blocks below may be wrong
  assert(llvm::isa<llvm::CmpInst>(branchInst->getOperand(0)));
  assert(llvm::cast<llvm::CmpInst>(branchInst->getOperand(0))->getPredicate() == llvm::CmpInst::Predicate::ICMP_EQ);

  auto trueBlock = llvm::cast<llvm::BasicBlock>(branchInst->getOperand(2));
  auto falseBlock = llvm::cast<llvm::BasicBlock>(branchInst->getOperand(1));

  auto const targetBlock = (branch) ? trueBlock : falseBlock;

  // This will be the returned result
  std::set<const llvm::BasicBlock *> guardedBlocks;
  guardedBlocks.insert(targetBlock);

  std::set<const llvm::BasicBlock *> visited;
  std::vector<const llvm::BasicBlock *> worklist;

  visited.insert(targetBlock);
  for (auto next : successors(targetBlock)) {
    worklist.push_back(next);
  }

  do {
    auto const currentBlock = worklist.back();
    worklist.pop_back();

    auto hasUnguardedPred = std::any_of(
        pred_begin(currentBlock), pred_end(currentBlock),
        [&guardedBlocks](const llvm::BasicBlock *pred) { return guardedBlocks.find(pred) == guardedBlocks.end(); });

    if (hasUnguardedPred) continue;
    visited.insert(currentBlock);

    guardedBlocks.insert(currentBlock);

    for (auto next : successors(currentBlock)) {
      if (visited.find(next) == visited.end()) {
        worklist.push_back(next);
      }
    }

  } while (!worklist.empty());

  return guardedBlocks;
}

}  // namespace

void SimpleGetThreadNumAnalysis::computeGuardedBlocks(const Event *event) {
  assert(event->getIRType() == IR::Type::OpenMPGetThreadNum);
  auto const call = event->getInst();
  // Check if we have already computed guardedBlocks for this omp_get_thread_num call
  if (visited.find(call) != visited.end()) return;

  // Find all cmpInsts that compare the omp_get_thread_num call to a const value
  auto const cmpInsts = getConstCmpEqInsts(call);
  for (auto const &pair : cmpInsts) {
    auto const cmpInst = pair.first;
    auto const tid = pair.second;

    // Find all branches that use the result of the cmp inst
    for (auto user : cmpInst->users()) {
      auto branch = llvm::dyn_cast<llvm::BranchInst>(user);
      if (branch == nullptr) continue;

      // Find all the blocks guarded by this branch
      auto guarded = getGuardedBlocks(branch);

      // insert the blocks into the guardedBlocks map
      for (auto const block : guarded) {
        guardedBlocks[block] = tid;
      }
    }
  }

  // Mark this get_thread_num call as visited
  visited.insert(call);
}

std::optional<u_int64_t> SimpleGetThreadNumAnalysis::getGuardedBy(const Event *event) const {
  // check if this event's block is guarded
  auto guarded = guardedBlocks.find(event->getInst()->getParent());
  if (guarded == guardedBlocks.end()) return std::nullopt;
  return guarded->second;
}

SimpleGetThreadNumAnalysis::SimpleGetThreadNumAnalysis(const ProgramTrace &program) {
  for (auto const &thread : program.getThreads()) {
    for (auto const &event : thread->getEvents()) {
      // Only care about get_thread_num calls
      if (event->getIRType() != IR::Type::OpenMPGetThreadNum) continue;
      computeGuardedBlocks(event.get());
    }
  }
}

bool SimpleGetThreadNumAnalysis::guardedBySameTid(const Event *event1, const Event *event2) const {
  auto tid1 = getGuardedBy(event1);
  if (!tid1.has_value()) return false;

  auto tid2 = getGuardedBy(event2);
  if (!tid2.has_value()) return false;

  return tid1.value() == tid2.value();
}

std::set<const llvm::BasicBlock *> LastprivateAnalysis::computeLastprivateBlocks(const llvm::Function &func) {
  /* kmpc_static_for_init takes a pointer to an "isLast" flag
     if the parallel loop has a last private member, the flag will be set for the last thread
     and that thread will execute the lastprivate code.

     This function looks for omp loops, finds the last private flag, and looks for blocks guarded by the flag */
  std::set<const llvm::BasicBlock *> blocks;

  for (auto const &block : func.getBasicBlockList()) {
    for (auto const &inst : block.getInstList()) {
      // Find calls to isForStaticInit
      auto call = llvm::dyn_cast<llvm::CallBase>(&inst);
      if (!call || !call->getCalledFunction() || !call->getCalledFunction()->hasName()) continue;
      auto const calledName = call->getCalledFunction()->getName();
      if (!OpenMPModel::isForStaticInit(calledName)) continue;

      // Get the "isLast" flag
      auto isLastFlag = call->getArgOperand(3);
      // Find cmp instructions that use the flag
      // clang should always generate cmp_eq instructions for the lastprivate check after a loop
      auto const cmps = getConstCmpEqInsts(isLastFlag);
      for (auto cmp : cmps) {
        // Only care about cmp instructions checking that the flag is "true" or non-zero
        if (cmp.second != 0) continue;

        // Find branches using result of the cmp
        for (auto user : cmp.first->users()) {
          auto branch = llvm::dyn_cast<llvm::BranchInst>(user);
          // find blocks in the false path
          // the cmp is equal to if(isLast == 0)
          // and we care about the path where the flag is non-zero or "true"
          auto const guarded = getGuardedBlocks(branch, false);
          blocks.insert(guarded.begin(), guarded.end());
        }
      }
    }
  }

  return blocks;
}

LastprivateAnalysis::LastprivateAnalysis(const llvm::Module &module) {
  for (auto const &func : module.getFunctionList()) {
    auto const blocks = computeLastprivateBlocks(func);
    lastprivateBlocks.insert(blocks.begin(), blocks.end());
  }
}

bool OpenMPAnalysis::insideCompatibleSections(const Event *event1, const Event *event2) {
  // assertion: threads of the same team are identical
  // assertion: we aren't given events from threads in different parallel sections blocks because those would be
  //            different teams

  // observation: we only enter a section if any event in the queue passes through a section case
  // assertion: this vector is distinct but ordered because a given section isn't a descendent of another section
  std::vector<const Event *> sections;
  auto lastID = std::max(event1->getID(), event2->getID());
  for (auto &event : event1->getThread().getEvents()) {
    auto block = event->getInst()->getParent();
    if ((sections.empty() || block != sections.back()->getInst()->getParent()) && block->hasName() &&
        block->getName().startswith(".omp.sections.case")) {  // add for body check
      sections.push_back(event.get());
    }
    // this is our end event; anything beyond this is not worth capturing
    if (event->getID() > lastID) {
      break;
    }
  }

  if (sections.empty()) {
    return false;
  }

  std::vector<const Event *> events;
  events.reserve(event1->getThread().getEvents().size());
  std::transform(event1->getThread().getEvents().begin(), event1->getThread().getEvents().end(),
                 std::back_inserter(events), [&](const auto &event) { return event.get(); });

  const Event *ev1sec = nullptr;
  const Event *ev2sec = nullptr;

  auto currSecEv = sections.begin();
  for (auto currEvent = std::find(events.begin(), events.end(), *currSecEv); (*currEvent)->getID() <= lastID;
       ++currSecEv) {
    do {
      if (event1->getID() == (*currEvent)->getID()) {
        ev1sec = *currSecEv;
      }
      if (event2->getID() == (*currEvent)->getID()) {
        ev2sec = *currSecEv;
      }

      if (ev1sec != nullptr && ev2sec != nullptr) {
        if (ev1sec == ev2sec) {
          return true;
        } else {
          return false;
        }
      }
      ++currEvent;
    } while (std::find(sections.begin(), sections.end(), *currEvent) == sections.end());
  }

  return false;
}
