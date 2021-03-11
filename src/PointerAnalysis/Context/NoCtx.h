//
// Created by peiming on 11/19/19.
//
#ifndef PTA_NOCTX_H
#define PTA_NOCTX_H

#include <string>

#include "CtxTrait.h"

// forward declaration
namespace llvm {
class Instruction;
}

namespace pta {

// for context insensitive PTA
using NoCtx = std::nullptr_t;

template <>
struct CtxTrait<NoCtx> {
  // No runtime overhead when
  constexpr static const NoCtx* contextEvolve(const NoCtx*, const llvm::Instruction*) { return nullptr; }
  constexpr static const NoCtx* getInitialCtx() { return nullptr; }
  constexpr static const NoCtx* getGlobalCtx() { return nullptr; }

  inline static std::string toString(const NoCtx*, bool detailed = false) { return "<Empty>"; }
  inline static void release(){};
};

}  // namespace pta

#endif
