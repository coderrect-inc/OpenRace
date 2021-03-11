#include "Trace/EventImpl.h"

#include "Trace/ProgramTrace.h"
#include "Trace/ThreadTrace.h"

using namespace race;

std::vector<const pta::ObjTy *> ReadEventImpl::getAccessedMemory() const {
  std::vector<const pta::ObjTy *> pts;
  info->thread.program.pta.getPointsTo(info->context, read->getAccessedValue(), pts);
  return pts;
}

std::vector<const pta::ObjTy *> WriteEventImpl::getAccessedMemory() const {
  std::vector<const pta::ObjTy *> pts;
  info->thread.program.pta.getPointsTo(info->context, write->getAccessedValue(), pts);
  return pts;
}

std::vector<const pta::CallGraphNodeTy *> ForkEventImpl::getThreadEntry() const {
  auto entryVal = fork->getThreadEntry();
  if (auto entryFunc = llvm::dyn_cast<llvm::Function>(entryVal)) {
    auto const newContext = pta::CT::contextEvolve(info->context, fork->getInst());
    auto const entryNode = info->thread.program.pta.getDirectNodeOrNull(newContext, entryFunc);
    return {entryNode};
  }

  // the entry is indirect and we need to figure out where the real function is
  auto callsite = info->thread.program.pta.getInDirectCallSite(info->context, fork->getInst());
  auto const &nodes = callsite->getResolvedNode();
  return std::vector<const pta::CallGraphNodeTy *>(nodes.begin(), nodes.end());
}
