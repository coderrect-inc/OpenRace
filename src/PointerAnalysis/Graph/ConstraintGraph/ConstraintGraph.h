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

#include <llvm/Support/CommandLine.h>

#include "CGObjNode.h"
#include "CGPtrNode.h"
#include "PointerAnalysis/Graph/GraphBase/GraphBase.h"
#include "llvm/Support/DOTGraphTraits.h"

#define DEBUG_TYPE "pta-cons-graph"

extern llvm::cl::opt<bool> DEBUG_PTA;

namespace pta {

// IMPORTANT!!
// To guarantee the correctness of the SCC detection algorithm,
// 1st, the constraint graph must append newly added super node at the **END**
// of the node vector.
// 2nd, the constraint graph should **NEVER** remove any node from
// the node vector to ensure the same NodeID always corresponding the same node.

template <typename ctx>
class ConstraintGraph : public GraphBase<CGNodeBase<ctx>, Constraints> {
 public:
  using CGNodeTy = CGNodeBase<ctx>;
  struct OnNewConstraintCallBack {
    virtual ~OnNewConstraintCallBack() {}
    virtual void onNewConstraint(CGNodeTy *src, CGNodeTy *dst, Constraints constraint) = 0;
  };

 private:
  OnNewConstraintCallBack *callBack;
  std::vector<CGNodeTy *> objVec;

 public:
  inline void registerCallBack(OnNewConstraintCallBack *cb) { callBack = cb; }

  inline void unregisterCallBack() { callBack = nullptr; }

  //    inline CGNodeTy *operator[](NodeID id) const {
  //        return this->getNode(id);
  //    }

  inline CGNodeTy *getObjectNode(NodeID objID) const {
    assert(objID < objVec.size());
    return objVec[objID];
  }

  inline CGNodeTy *getCGNode(NodeID id) const { return this->getNode(id); }

  inline bool addConstraints(CGNodeTy *src, CGNodeTy *dst, Constraints constraint) {
    if (DEBUG_PTA) {
      std::string type = "";  // copy
      if (constraint == Constraints::copy) {
        type = "copy";
      } else if (constraint == Constraints::load) {
        type = "load";
      } else if (constraint == Constraints::store) {
        type = "store";
      } else if (constraint == Constraints::addr_of) {
        type = "addr_of";
      } else if (constraint == Constraints::offset) {
        type = "offset";
      }

      llvm::outs() << "addConstraints (type-" << type << "): "
                   << "src: " << src->getNodeID() << " -> dst: " << dst->getNodeID() << "\n";
    }

    // should not add edges to nodes that has super node
    assert(src && dst /*&& !src->hasSuperNode() && !dst->hasSuperNode()*/);
    // self-circle copy edges has no effect
    if (src == dst && constraint == Constraints::copy) {
      return false;
    }
    if (constraint == Constraints::addr_of) {
      // addr_of can only be applied between obj --addr_of-> ptr
      assert(src->getType() == CGNodeKind::ObjNode && "taken addr of non-object node is not allowed");

      // This is a trick, so that the copy edge will be visited
      // during solving phase, so that we do not need to handle addr_of
      // constraint explicitly

      // Convention! obj_id + 1 = anonymous node
      // Or we can use a map to store obj->anon, but it is absolutely much
      // faster.

      auto anonNode = this->getCGNode(src->getNodeID() + 1);
      // anonnode should not have incoming edge at all
      assert(!anonNode->hasSuperNode());
      // must be an anon Node.
      assert(anonNode->getType() == CGNodeKind::PtrNode);
      assert(llvm::cast<CGPtrNode<ctx>>(anonNode)->isAnonNode());

      if (anonNode->insertConstraint(dst, Constraints::copy)) {
        if (callBack) {
          // the edge is actually adding to the super node
          callBack->onNewConstraint(anonNode, dst->getSuperNode(), Constraints::copy);
        }
        return true;
      }
      return false;
    } else {
      bool newEdge = src->insertConstraint(dst, constraint);
      if (callBack && newEdge) {
        // the edge is actually adding to the super node
        callBack->onNewConstraint(src->getSuperNode(), dst->getSuperNode(), constraint);
      }
      return newEdge;
    }
  }

  // NOTE: THIS FUNCTION DOES NOT TAKE CARE OF POINT-TO SET
  // collapse the scc to the given super node
  void collapseSCCTo(const std::vector<CGNodeTy *> &scc, CGNodeTy *superNode) {
    // collapse the node in the scc
    using edgeTy = std::pair<Constraints, CGNodeTy *>;

    for (CGNodeTy *node : scc) {
      assert(!node->hasSuperNode());
    }

    for (CGNodeTy *node : scc) {
      if (node == superNode) {
        continue;
      }

      auto pred_it = node->pred_edge_begin();
      auto pred_ie = node->pred_edge_end();
      for (; pred_ie != pred_it; pred_it++) {
        edgeTy edge = *pred_it;

        // merge all the incoming edge
        edge.second->insertConstraint(superNode, edge.first);
      }

      auto succ_it = node->succ_edge_begin();
      auto succ_ie = node->succ_edge_end();
      for (; succ_ie != succ_it; succ_it++) {
        edgeTy edge = *succ_it;

        // merge all the outgoing edge
        superNode->insertConstraint(edge.second, edge.first);
      }

      superNode->childNodes |= node->childNodes;
      superNode->indirectNodes.insert(node->indirectNodes.begin(), node->indirectNodes.end());

      node->indirectNodes.clear();
      node->childNodes.clear();  // release the memory
      node->clearConstraints();

      node->setSuperNode(superNode);  // set the supernode
    }
  }

  // IMPORTANT: does not guaranttee that the same node will not be added twice
  // caller should enforce it
  template <typename Node, typename PT, typename... Args>
  inline Node *addCGNode(Args &&...args) {
    auto node = this->template addNewNode<Node>(std::forward<Args>(args)...);
    PT::onNewNodeCreation(node->getNodeID());

    if (node->getType() == CGNodeKind::ObjNode) {
      // create an anon node which take the address of the node
      // Convention! objnode_id + 1 = anonomyous node
      CGPtrNode<ctx> *anonNode = addCGNode<CGPtrNode<ctx>, PT>();
      node->insertConstraint(anonNode, Constraints::addr_of);
      // Anonmyous Node can points to the object
      // PT::insert(anonNode->getNodeID(), node->getNodeID());
      if constexpr (!std::is_same<Node, CGPtrNode<ctx>>::value) {
        // this is an object node
        PT::insert(anonNode->getNodeID(), node->getObjectID());
        assert(objVec.size() == node->getObjectID());
        objVec.push_back(node);
      }
    }
    return node;
  }

  ConstraintGraph() : GraphBase<CGNodeBase<ctx>, Constraints>(), callBack(nullptr), objVec(){};
};

}  // namespace pta

namespace llvm {

template <typename ctx>
struct GraphTraits<const pta::ConstraintGraph<ctx>>
    : public GraphTraits<const pta::GraphBase<pta::CGNodeBase<ctx>, pta::Constraints>> {};

template <typename ctx>
struct GraphTraits<pta::ConstraintGraph<ctx>>
    : public GraphTraits<pta::GraphBase<pta::CGNodeBase<ctx>, pta::Constraints>> {};

// for callgraph visualization
template <typename ctx>
struct DOTGraphTraits<const pta::ConstraintGraph<ctx>> : public DefaultDOTGraphTraits {
  using GraphTy = pta::ConstraintGraph<ctx>;
  using NodeTy = pta::CGNodeBase<ctx>;

  explicit DOTGraphTraits(bool simple = false) : DefaultDOTGraphTraits(simple) {}

  static std::string getGraphName(const GraphTy &) { return "constraint_graph"; }

  /// Return function name;
  static std::string getNodeLabel(const NodeTy *node, const GraphTy & /* graph */) {
    std::string str;
    raw_string_ostream os(str);

    os << node->toString() << "\n";
    return os.str();
  }

  static std::string getNodeAttributes(const NodeTy * /* node */, const GraphTy & /* graph */) {
    //        if (isa<CGPtrNode<ctx>>(node)) {
    //            return "";
    //        } else if (isa<CGSuperNode<ctx, PtsTy>>(node)) {
    //            return "color=red";
    //        } else {
    //            return "color=green";
    //        }
    return "";
  }

  template <typename EdgeIter>
  static std::string getEdgeAttributes(const NodeTy * /* node */, EdgeIter EI, const GraphTy & /* graph */) {
    pta::Constraints edgeTy = (*EI).first;
    switch (edgeTy) {
      case pta::Constraints::load:
        return "color=red";
      case pta::Constraints::store:
        return "color=blue";
      case pta::Constraints::copy:
        break;
      case pta::Constraints::addr_of:
        return "color=green";
      case pta::Constraints::offset:
        return "color=purple";
      case pta::Constraints::special:
        return "color=olive";
    }
    return "";
  }
};

}  // namespace llvm

#undef DEBUG_TYPE
