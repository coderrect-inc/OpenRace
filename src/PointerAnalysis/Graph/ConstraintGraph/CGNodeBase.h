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
#include <llvm/ADT/SparseBitVector.h>
#include <llvm/Demangle/Demangle.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/Metadata.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Transforms/Utils/Local.h>

#include <fstream>
#include <sstream>
#include <string>
#include <vector>

#include "PointerAnalysis/Graph/GraphBase/GraphBase.h"
namespace std {

template <>
struct iterator_traits<typename llvm::SparseBitVector<64>::iterator> {
  typedef forward_iterator_tag iterator_category;
  typedef pta::NodeID value_type;
  typedef ptrdiff_t difference_type;
  typedef const pta::NodeID *pointer;
  typedef const pta::NodeID &reference;
};

}  // namespace std

using namespace llvm;

namespace pta {

template <typename ctx>
class CallGraphNode;

template <typename ctx>
class ConstraintGraph;

template <typename Pts>
struct PTSTrait;

template <typename Model>
struct LangModelTrait;

// must start from 0 and increase by one!
enum class Constraints : std::uint8_t {
  load = 0,
  store = 1,
  copy = 2,
  addr_of = 3,
  offset = 4,
  special = 5,  // user-extended constraints
};

enum class CGNodeKind : uint8_t {
  PtrNode = 0,
  ObjNode = 1,
  SuperNode = 2,
};

template <typename ctx>
class CGNodeBase {
 protected:
  using Self = CGNodeBase<ctx>;
  using super = NodeBase<Constraints, CGNodeBase>;
  using GraphTy = GraphBase<Self, Constraints>;

  const CGNodeKind type;
  const NodeID id;
  GraphTy *graph;

  Self *superNode;  // the super node
  llvm::SparseBitVector<> childNodes;
  // whether the node is immutable (the points-to set should not be updated)
  bool isImmutable;
#define USE_NODE_ID_FOR_CONSTRAINTS
#ifdef USE_NODE_ID_FOR_CONSTRAINTS
  // maybe use ID for the constraints
  using SetTy = llvm::SparseBitVector<64>;
#else
  using SetTy = llvm::DenseSet<Self *>;
#endif
  SetTy succCons[6];  // successor constraints
  SetTy predCons[6];  // predecessor constraints

  inline void setGraph(GraphTy *g) { this->graph = g; }

  // the same function ptr might used multiple times
  // call void %2418(i8* %2910, i8* nonnull %2453, i8* nonnull %2451) #10
  // call void %2418(i8* nonnull %2454, i8* nonnull %2453, i8* nonnull %2451)
  using IndirectNodeSet = std::set<CallGraphNode<ctx> *>;
  IndirectNodeSet indirectNodes;

  inline CGNodeBase(NodeID id, CGNodeKind type)
      : id(id), type(type), superNode(nullptr), childNodes{}, indirectNodes{}, isImmutable(false) {}

 private:
  inline bool insertConstraint(Self *node, Constraints edgeKind) {
    // this --edge-> node
    if (edgeKind != Constraints::special && node->isImmutable) {
      // this --load--> node
      // this --store--> node
      // this --copy--> node
      // this --offset--> node
      // all these constraints will update the points-to set of an immutable node
      return false;
    }
    auto src = this->getSuperNode();
    auto dst = node->getSuperNode();

    // assert(!this->hasSuperNode());
    if (src == dst && edgeKind == Constraints::copy) {
      // self-copy does not have any effect.
      return false;
    }

    auto index = static_cast<std::underlying_type<Constraints>::type>(edgeKind);
    assert(index < 6);  // only 6 kinds of constraints

#ifdef USE_NODE_ID_FOR_CONSTRAINTS
    // successors
    bool r1 = src->succCons[index].test_and_set(dst->getNodeID());  //.second;
    // predecessor
    bool r2 = dst->predCons[index].test_and_set(src->getNodeID());  //.second;
#else
    // successors
    bool r1 = src->succCons[index].insert(dst).second;
    // predecessor
    // TODO: remove useless constraints
    bool r2 = dst->predCons[index].insert(src).second;
#endif
    assert(r1 == r2);
    return r1;
  }

 public:
  // can not be moved and copied
  CGNodeBase(const CGNodeBase<ctx> &) = delete;
  CGNodeBase(CGNodeBase<ctx> &&) = delete;
  CGNodeBase<ctx> &operator=(const CGNodeBase<ctx> &) = delete;
  CGNodeBase<ctx> &operator=(CGNodeBase<ctx> &&) = delete;

  [[nodiscard]] inline bool isSpecialNode() const { return this->getNodeID() < NORMAL_NODE_START_ID; }

  [[nodiscard]] inline bool isNullObj() const { return this->getNodeID() == NULL_OBJ; }

  [[nodiscard]] inline bool isUniObj() const { return this->getNodeID() == UNI_OBJ; }

  [[nodiscard]] inline bool isNullPtr() const { return this->getNodeID() == NULL_PTR; }

  [[nodiscard]] inline bool isUniPtr() const { return this->getNodeID() == UNI_PTR; }

  // after setting the flag, no edges shall be added into the node
  inline void setImmutable() { this->isImmutable = true; }

  inline bool isSuperNode() const { return !childNodes.empty(); }

  inline void setSuperNode(Self *node) { this->superNode = node; }

  inline Self *getSuperNode() {
    Self *node = this;
    while (node->superNode != nullptr) {
      node = node->superNode;
    }
    return node;
  }

  // remove all the edges
  inline void clearConstraints() {
#ifdef USE_NODE_ID_FOR_CONSTRAINTS
#define CLEAR_CONSTRAINT(TYPE)                                                                      \
  {                                                                                                 \
    constexpr auto index = static_cast<std::underlying_type<Constraints>::type>(Constraints::TYPE); \
    for (auto it = this->succ_##TYPE##_begin(), ie = this->succ_##TYPE##_end(); it != ie; it++) {   \
      Self *target = *it;                                                                           \
      /*auto iter =*/target->predCons[index].reset(this->getNodeID());                              \
      /*assert(iter != target->predCons[index].end());*/                                            \
      /*target->predCons[index].erase(iter);*/                                                      \
    }                                                                                               \
    for (auto it = this->pred_##TYPE##_begin(), ie = this->pred_##TYPE##_end(); it != ie; it++) {   \
      Self *target = *it;                                                                           \
      /*auto iter = */ target->succCons[index].reset(this->getNodeID());                            \
      /*assert(iter != target->succCons[index].end());*/                                            \
      /*target->succCons[index].erase(iter);*/                                                      \
    }                                                                                               \
    this->succCons[index].clear();                                                                  \
    this->predCons[index].clear();                                                                  \
  }
#else
#define CLEAR_CONSTRAINT(TYPE)                                                                      \
  {                                                                                                 \
    constexpr auto index = static_cast<std::underlying_type<Constraints>::type>(Constraints::TYPE); \
    for (auto it = this->succ_##TYPE##_begin(), ie = this->succ_##TYPE##_end(); it != ie; it++) {   \
      Self *target = *it;                                                                           \
      auto iter = target->predCons[index].find(this);                                               \
      assert(iter != target->predCons[index].end());                                                \
      target->predCons[index].erase(iter);                                                          \
    }                                                                                               \
    for (auto it = this->pred_##TYPE##_begin(), ie = this->pred_##TYPE##_end(); it != ie; it++) {   \
      Self *target = *it;                                                                           \
      auto iter = target->succCons[index].find(this);                                               \
      assert(iter != target->succCons[index].end());                                                \
      target->succCons[index].erase(iter);                                                          \
    }                                                                                               \
    this->succCons[index].clear();                                                                  \
    this->predCons[index].clear();                                                                  \
  }
#endif
    CLEAR_CONSTRAINT(load)
    CLEAR_CONSTRAINT(store)
    CLEAR_CONSTRAINT(copy)
    CLEAR_CONSTRAINT(addr_of)
    CLEAR_CONSTRAINT(offset)
    CLEAR_CONSTRAINT(special)

#undef CLEAR_CONSTRAINT
  }

  [[nodiscard]] inline CGNodeKind getType() const { return type; }

  [[nodiscard]] inline bool hasSuperNode() const { return superNode != nullptr; }

  inline void setIndirectCallNode(CallGraphNode<ctx> *callNode) {
    // assert(callNode->isIndirectCall() && this->indirectNode == nullptr);
    this->indirectNodes.insert(callNode);
    // this->indirectNode = callNode;
  }

  inline const IndirectNodeSet &getIndirectNodes() const { return indirectNodes; }

  inline auto indirect_begin() const -> decltype(this->indirectNodes.begin()) { return this->indirectNodes.begin(); }

  inline auto indirect_end() const -> decltype(this->indirectNodes.end()) { return this->indirectNodes.end(); }

  [[nodiscard]] inline bool isFunctionPtr() { return !this->indirectNodes.empty(); }

  [[nodiscard]] inline ConstraintGraph<ctx> *getGraph() { return static_cast<ConstraintGraph<ctx> *>(this->graph); }

  [[nodiscard]] inline NodeID getNodeID() const { return id; }

  [[nodiscard]] virtual std::string toString() const = 0;
  virtual ~CGNodeBase() = default;

#ifdef USE_NODE_ID_FOR_CONSTRAINTS
  using cg_iterator = NodeIDWrapperIterator<typename SetTy::iterator, GraphTy>;

#define __CONS_ITER__(DIRECTION, KIND, TYPE)                                                        \
  [[nodiscard]] inline cg_iterator DIRECTION##_##KIND##_##TYPE() {                                  \
    constexpr auto index = static_cast<std::underlying_type<Constraints>::type>(Constraints::KIND); \
    static_assert(index < 6, "");                                                                   \
    return cg_iterator(this->graph, DIRECTION##Cons[index].TYPE());                                 \
  }
#else
  using cg_iterator = typename SetTy::iterator;

#define __CONS_ITER__(DIRECTION, KIND, TYPE)                                                        \
  [[nodiscard]] inline cg_iterator DIRECTION##_##KIND##_##TYPE() {                                  \
    constexpr auto index = static_cast<std::underlying_type<Constraints>::type>(Constraints::KIND); \
    static_assert(index < 6, "");                                                                   \
    return DIRECTION##Cons[index].TYPE();                                                           \
  }
#endif

#define __BI_CONS_ITER__(KIND, TYPE) \
  __CONS_ITER__(succ, KIND, TYPE)    \
  __CONS_ITER__(pred, KIND, TYPE)

#define DEFINE_CONS_ITER(KIND)  \
  __BI_CONS_ITER__(KIND, begin) \
  __BI_CONS_ITER__(KIND, end)

  // succ_load_begin, succ_load_end, pred_load_begin, pred_load_end
  DEFINE_CONS_ITER(load)
  DEFINE_CONS_ITER(store)
  DEFINE_CONS_ITER(copy)
  DEFINE_CONS_ITER(addr_of)
  DEFINE_CONS_ITER(offset)
  DEFINE_CONS_ITER(special)

#undef DEFINE_CONS_ITER
#undef __BI_CONS_ITER__
#undef __CONS_ITER__

#ifdef USE_NODE_ID_FOR_CONSTRAINTS
  // TODO: use LLVM built-in concat interator, they have better implementation
  using id_iterator = ConcatIterator<typename SetTy::iterator, 6, NodeID>;
  using const_id_iterator = ConcatIterator<typename SetTy::iterator, 6, NodeID>;

  using id_edge_iterator = ConcatIteratorWithTag<typename SetTy::iterator, 6, Constraints, NodeID>;
  using const_id_edge_iterator = ConcatIteratorWithTag<typename SetTy::iterator, 6, Constraints, NodeID>;
#else
  using id_iterator = ConcatIterator<typename SetTy::iterator, 5>;
  using const_id_iterator = ConcatIterator<typename SetTy::const_iterator, 5>;

  using id_edge_iterator = ConcatIteratorWithTag<typename SetTy::iterator, 5, Constraints>;
  using const_id_edge_iterator = ConcatIteratorWithTag<typename SetTy::const_iterator, 5, Constraints>;
#endif

#ifdef USE_NODE_ID_FOR_CONSTRAINTS
  using iterator = NodeIDWrapperIterator<id_iterator, GraphTy>;
  using const_iterator = NodeIDWrapperIterator<const_id_iterator, const GraphTy>;
  using edge_iterator = NodeIDWrapperEdgeIterator<id_edge_iterator, GraphTy>;
  using const_edge_iterator = NodeIDWrapperEdgeIterator<const_id_edge_iterator, const GraphTy>;
#else
  using iterator = id_iterator;
  using const_iterator = const_id_iterator;
  using edge_iterator = id_edge_iterator;
  using const_edge_iterator = const_id_edge_iterator;
#endif

#define INIT_ITERATOR(CONTAINER, BEGIN, END)                                                                 \
  (CONTAINER[5].BEGIN(), CONTAINER[5].END(), CONTAINER[4].BEGIN(), CONTAINER[4].END(), CONTAINER[3].BEGIN(), \
   CONTAINER[3].END(), CONTAINER[2].BEGIN(), CONTAINER[2].END(), CONTAINER[1].BEGIN(), CONTAINER[1].END(),   \
   CONTAINER[0].BEGIN(), CONTAINER[0].END())

#ifdef USE_NODE_ID_FOR_CONSTRAINTS
#define NODE_ITERATOR(CONTAINER, BEGIN, END) iterator(this->graph, id_iterator INIT_ITERATOR(CONTAINER, BEGIN, END))

#define CONST_NODE_ITERATOR(CONTAINER, BEGIN, END) \
  const_iterator(this->graph, const_id_iterator INIT_ITERATOR(CONTAINER, BEGIN, END))

#define EDGE_ITERATOR(CONTAINER, BEGIN, END) \
  edge_iterator(this->graph, id_edge_iterator INIT_ITERATOR(CONTAINER, BEGIN, END))

#define CONST_EDGE_ITERATOR(CONTAINER, BEGIN, END) \
  const_edge_iterator(this->graph, const_id_edge_iterator INIT_ITERATOR(CONTAINER, BEGIN, END))

#else
#define NODE_ITERATOR(CONTAINER, BEGIN, END) id_iterator INIT_ITERATOR(CONTAINER, BEGIN, END)

#define CONST_NODE_ITERATOR(CONTAINER, BEGIN, END) const_id_iterator INIT_ITERATOR(CONTAINER, BEGIN, END)

#define EDGE_ITERATOR(CONTAINER, BEGIN, END) id_edge_iterator INIT_ITERATOR(CONTAINER, BEGIN, END)

#define CONST_EDGE_ITERATOR(CONTAINER, BEGIN, END) const_id_edge_iterator INIT_ITERATOR(CONTAINER, BEGIN, END)

#endif

  inline iterator succ_begin() { return NODE_ITERATOR(succCons, begin, end); }
  inline iterator succ_end() { return NODE_ITERATOR(succCons, end, end); }
  inline const_iterator succ_begin() const { return CONST_NODE_ITERATOR(succCons, begin, end); }
  inline const_iterator succ_end() const { return CONST_NODE_ITERATOR(succCons, end, end); }

  inline iterator pred_begin() { return NODE_ITERATOR(predCons, begin, end); }
  inline iterator pred_end() { return NODE_ITERATOR(predCons, end, end); }
  inline const_iterator pred_begin() const { return CONST_NODE_ITERATOR(predCons, begin, end); }
  inline const_iterator pred_end() const { return CONST_NODE_ITERATOR(predCons, end, end); }

  inline edge_iterator succ_edge_begin() { return EDGE_ITERATOR(succCons, begin, end); }
  inline edge_iterator succ_edge_end() { return EDGE_ITERATOR(succCons, end, end); }
  inline const_edge_iterator succ_edge_begin() const { return CONST_EDGE_ITERATOR(succCons, begin, end); }
  inline const_edge_iterator succ_edge_end() const { return CONST_EDGE_ITERATOR(succCons, end, end); }

  inline edge_iterator pred_edge_begin() { return EDGE_ITERATOR(predCons, begin, end); }
  inline edge_iterator pred_edge_end() { return EDGE_ITERATOR(predCons, end, end); }
  inline const_edge_iterator pred_edge_begin() const { return CONST_EDGE_ITERATOR(predCons, begin, end); }
  inline const_edge_iterator pred_edge_end() const { return CONST_EDGE_ITERATOR(predCons, end, end); }

  // needed by GraphTrait
  inline edge_iterator edge_begin() { return succ_edge_begin(); }
  inline edge_iterator edge_end() { return succ_edge_end(); }
  inline const_edge_iterator edge_begin() const { return succ_edge_begin(); }
  inline const_edge_iterator edge_end() const { return succ_edge_end(); }

#undef INIT_ITERATOR

  friend class GraphBase<Self, Constraints>;
  friend class ConstraintGraph<ctx>;
};

}  // namespace pta
