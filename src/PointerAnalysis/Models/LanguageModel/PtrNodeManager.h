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

#pragma once
#include <unordered_map>

#include "PointerAnalysis/Program/CtxFunction.h"
#include "PointerAnalysis/Program/Pointer.h"
#include "PointerAnalysis/Util/SingleInstanceOwner.h"

namespace pta {

template <typename ctx>
class PtrNodeManager : public SingleInstanceOwner<Pointer<ctx>> {
 private:
  using CT = CtxTrait<ctx>;
  using ConsGraph = ConstraintGraph<ctx>;
  using BaseNode = CGNodeBase<ctx>;
  using PtrNode = CGPtrNode<ctx>;

  ConsGraph *consGraph;

  PtrNode *nullPtrNode;  // special node for null pointer
  PtrNode *uniPtrNode;   // special node that can point to every object.

 protected:
  explicit PtrNodeManager() : consGraph(nullptr), nullPtrNode(nullptr), uniPtrNode(nullptr) {}

  template <typename PT>
  void init(ConsGraph *CG, llvm::LLVMContext &context) {
    this->consGraph = CG;

    // create null ptr node
    const llvm::Value *nullValue = llvm::ConstantPointerNull::get(llvm::Type::getInt8PtrTy(context));
    auto nullPtr = this->create(CT::getGlobalCtx(), nullValue);
    nullPtrNode = consGraph->template addCGNode<PtrNode, PT>(nullPtr);
    const_cast<Pointer<ctx> *>(nullPtr)->setPtrNode(nullPtrNode);

    // create universal ptr node
    const llvm::Value *uniValue = llvm::UndefValue::get(llvm::Type::getInt8PtrTy(context));
    auto uniPtr = this->create(CT::getGlobalCtx(), uniValue);
    uniPtrNode = consGraph->template addCGNode<PtrNode, PT>(uniPtr);
    const_cast<Pointer<ctx> *>(uniPtr)->setPtrNode(uniPtrNode);
  }

 public:
  // return map does not managed by singleinstanceowner as it may conflict
  // with function pointers (when initialCtx and globalCtx are the same)
  std::unordered_map<std::pair<const ctx *, const llvm::Function *>, Pointer<ctx>> retPtrMap;
  //    an anonoymous pointer but can be indexed
  //    std::unordered_map<std::pair<const ctx *, const void *>, PtrNode *>
  //    taggedAnonPtrMap;
  inline PtrNode *getUniPtr() const { return uniPtrNode; }

  inline PtrNode *getNullPtr() const { return nullPtrNode; }

  template <typename PT>
  inline PtrNode *createRetNode(const CtxFunction<ctx> *fun) {
    auto result =
        retPtrMap.emplace(std::piecewise_construct, std::forward_as_tuple(fun->getContext(), fun->getFunction()),
                          std::forward_as_tuple(fun->getContext(), fun->getFunction()));

    assert(result.second);
    auto retPtr = &result.first->second;

    auto ret = consGraph->template addCGNode<PtrNode, PT>(retPtr);
    retPtr->setPtrNode(ret);

    return ret;
  }

  inline PtrNode *getRetNode(const ctx *C, const llvm::Function *F) {
    auto it = retPtrMap.find(std::make_pair(C, F));
    assert(it != retPtrMap.end());
    return it->second.getPtrNode();
  }

  // anonoyous ptr node should never be indexed, just a place holder
  // logically exist, but no corresponding llvm::Value
  template <typename PT>
  inline PtrNode *createAnonPtrNode() {
    auto ret = consGraph->template addCGNode<PtrNode, PT>();
    return ret;
  }

  template <typename PT>
  inline PtrNode *createAnonPtrNode(PtrNodeTag *tag) {
    auto ret = consGraph->template addCGNode<PtrNode, PT>(tag);
    return ret;
  }

  template <typename Canonicalizer>
  inline PtrNode *getPtrNode(const ctx *C, const llvm::Value *V) {
    V = Canonicalizer::canonicalize(V);
    if (LLVM_UNLIKELY(V == uniPtrNode->getPointer()->getValue())) {
      return uniPtrNode;
    }
    if (LLVM_UNLIKELY(V == nullPtrNode->getPointer()->getValue())) {
      return nullPtrNode;
    }
    if (llvm::isa<llvm::GlobalValue>(V)) {
      C = CT::getGlobalCtx();
    }
    // bool isCE = llvm::dyn_cast<llvm::ConstantExpr>(V);
    return this->get(C, V)->getPtrNode();
  }

  template <typename Canonicalizer>
  inline PtrNode *getPtrNodeOrNull(const ctx *C, const llvm::Value *V) {
    V = Canonicalizer::canonicalize(V);
    if (LLVM_UNLIKELY(V == uniPtrNode->getPointer()->getValue())) {
      return uniPtrNode;
    }
    if (LLVM_UNLIKELY(V == nullPtrNode->getPointer()->getValue())) {
      return nullPtrNode;
    }
    if (llvm::isa<llvm::GlobalValue>(V)) {
      C = CT::getGlobalCtx();
    }

    auto result = this->getOrNull(C, V);
    if (result != nullptr) {
      return result->getPtrNode();
    }
    return nullptr;
  }

  template <typename Canonicalizer, typename PT>
  inline PtrNode *getOrCreatePtrNode(const ctx *C, const llvm::Value *V) {
    V = Canonicalizer::canonicalize(V);
    if (LLVM_UNLIKELY(V == uniPtrNode->getPointer()->getValue())) {
      return uniPtrNode;
    }
    if (LLVM_UNLIKELY(V == nullPtrNode->getPointer()->getValue())) {
      return nullPtrNode;
    }
    if (llvm::isa<llvm::GlobalValue>(V)) {
      C = CT::getGlobalCtx();
    }

    std::pair<const Pointer<ctx> *, bool> result = this->getOrCreate(C, V);
    const Pointer<ctx> *ptr = result.first;
    if (result.second) {
      auto ret = consGraph->template addCGNode<PtrNode, PT>(ptr);
      const_cast<Pointer<ctx> *>(ptr)->setPtrNode(ret);
    }
    return ptr->getPtrNode();
  }

  template <typename Canonicalizer, typename PT>
  inline PtrNode *createPtrNode(const ctx *C, const llvm::Value *V) {
    V = Canonicalizer::canonicalize(V);
    if (LLVM_UNLIKELY(V == uniPtrNode->getPointer()->getValue())) {
      return uniPtrNode;
    }
    if (LLVM_UNLIKELY(V == nullPtrNode->getPointer()->getValue())) {
      return nullPtrNode;
    }
    if (llvm::isa<llvm::GlobalValue>(V)) {
      C = CT::getGlobalCtx();
    }

    auto ptr = this->create(C, V);
    auto ret = consGraph->template addCGNode<PtrNode, PT>(ptr);
    const_cast<Pointer<ctx> *>(ptr)->setPtrNode(ret);

    return ret;
  }
};

}  // namespace pta
