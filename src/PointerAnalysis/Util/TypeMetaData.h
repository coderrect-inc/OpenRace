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

//
// Created by peiming on 8/26/20.
//

#ifndef PTA_TYPEMETADATA_H
#define PTA_TYPEMETADATA_H

#include <llvm/ADT/SmallVector.h>

#include "PointerAnalysis/Program/AllocSite.h"

namespace llvm {

class DICompositeType;
class DIDerivedType;
class Module;
class StructType;

}  // namespace llvm

namespace pta {

llvm::DIType *stripTypeDefDI(llvm::DIType *DI);
llvm::DIType *stripArrayDI(llvm::DIType *DI);
llvm::DIType *stripArrayAndTypeDefDI(llvm::DIType *DI);

void TypeMDinit(const llvm::Module *M);

// only support looking up composite type, scalar type like int, float or
// pointer are not supported
const llvm::DICompositeType *getTypeMetaData(const llvm::StructType *T);
const llvm::DICompositeType *getTypeMetaData(const llvm::Module *M, const llvm::StructType *T);

// look up the type metadata of the object allocated
const llvm::DICompositeType *getTypeMetaData(const llvm::Value *allocSite, AllocKind T, const llvm::Type *allocType);

llvm::SmallVector<llvm::DIDerivedType *, 8> getNonStaticDataMember(const llvm::DICompositeType *DI);

void getFieldAccessPath(const llvm::DICompositeType *DI, size_t offsetInByte,
                        llvm::SmallVector<const llvm::DIType *, 8> &result);

// getbasetype, but strip off all the typedef
template <typename DebugInfoType>
inline llvm::DIType *getBaseType(DebugInfoType *T) {
  llvm::DIType *baseType = T->getBaseType();
  return stripTypeDefDI(baseType);
}

std::size_t getDISize(llvm::DIDerivedType *T);
}  // namespace pta

#endif
