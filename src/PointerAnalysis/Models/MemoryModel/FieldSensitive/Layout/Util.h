//
// Created by peiming on 5/19/21.
//

#ifndef OPENRACE_UTIL_H
#define OPENRACE_UTIL_H

#include <stddef.h>
#include <map>

//forward declarations
namespace llvm {
class GetElementPtrInst;
class DataLayout;
}

namespace pta {

class ArrayLayout;

size_t getGEPStepSize(const llvm::GetElementPtrInst *GEP, const llvm::DataLayout &DL);
bool isArrayExistAtOffset(const std::map<size_t, ArrayLayout *> &arrayMap, size_t pOffset, size_t elementSize);

}
#endif  // OPENRACE_UTIL_H
