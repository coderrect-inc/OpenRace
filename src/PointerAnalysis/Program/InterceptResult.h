//
// Created by peiming on 7/21/20.
//

#ifndef PTA_INTERCEPTRESULT_H
#define PTA_INTERCEPTRESULT_H

// forward declaration
namespace llvm {
class Value;
}

namespace pta {

struct InterceptResult {
  enum class Option {
    EXPAND_BODY,    // analyze and expand the body of the function
    ONLY_CALLSITE,  // do not analyze into the function body, but keep the
                    // callsite
    IGNORE_FUN,     // ignore the function completely (no callnode in the
                    // callgraph).
  };

  const llvm::Value *redirectTo;
  Option option;

  InterceptResult(const llvm::Value *target, Option opt) : redirectTo(target), option(opt) {}
};

}  // namespace pta
#endif
