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
// Created by peiming on 11/2/19.
//
#pragma once

// TODO: maybe merge SCC later?

#include "CGObjNode.h"
#include "CGPtrNode.h"

namespace pta {
// nodes represent collapsed SCC
template <typename ctx>
class CGSuperNode : public CGNodeBase<ctx> {
 private:
  using super = CGNodeBase<ctx>;
  using NodeList = llvm::SparseBitVector<>;

  NodeList scc;
  NodeList callNodes;

  CGSuperNode(const vector<super *> &scc, NodeID id) : super(id, CGNodeKind::SuperNode) {
    for (super *node : scc) {
      if (node->isFunctionPtr()) {
        callNodes.set(node->getNodeID());
      }
      if (auto superNode = llvm::dyn_cast<CGSuperNode<ctx>>(node)) {
        // merge a super node
        this->scc |= superNode->scc;
        this->callNodes |= superNode->callNodes;
      }
      this->scc.set(node->getNodeID());
    }
  };

 public:
  inline void copyOutgoingEdges(super *node) {
    for (auto it = node->pred_edge_begin(), ie = node->pred_edge_end(); it != ie; it++) {
      auto pred = (*it).second;
      auto edgeKind = (*it).first;
      // FIXME: is this correct?
      pred->insertConstraint(this, edgeKind);
    }

    node->setSuperNode(this->getNodeID());
  }

  void clearAndMergeIncomingEdges() {
    for (NodeID nodeId : scc) {
      auto node = this->graph->getNode(nodeId);
      // merge the incoming edges
      for (auto it = node->edge_begin(), ie = node->edge_end(); it != ie; it++) {
        this->insertConstraint((*it).second, (*it).first);
      }
    }

    for (NodeID nodeId : scc) {
      auto node = this->graph->getNode(nodeId);
      node->clearConstraints();
    }

    this->removeConstraint(this, Constraints::copy);
  }

  static inline bool classof(const super *node) { return node->getType() == CGNodeKind::SuperNode; }

  virtual std::string toString() const { return "SuperNode"; }

  friend class GraphBase<super, Constraints>;
  friend class ConstraintGraph<ctx>;
};

}  // namespace pta
