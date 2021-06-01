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

#include "CGNodeBase.h"

namespace pta {

template <typename MemModel>
struct MemModelTrait;

template <typename ctx>
class ConstraintGraph;

// nodes represent objects
template <typename ctx, typename ObjT>
class CGObjNode : public CGNodeBase<ctx> {
 private:
  using Self = CGObjNode<ctx, ObjT>;
  // context
  using super = CGNodeBase<ctx>;

  const ObjT *obj;

  CGObjNode(const ObjT *obj, NodeID id) : super(id, CGNodeKind::ObjNode), obj(obj){};

 public:
  static inline bool classof(const super *node) { return node->getType() == CGNodeKind::ObjNode; }

  inline CGNodeBase<ctx> *getAddrTakenNode() {
    CGNodeBase<ctx> *addrTakeNode = this->graph->getNode(this->getNodeID() + 1);
    assert(addrTakeNode->getType() == CGNodeKind::PtrNode);

    return addrTakeNode;
  }

  inline const ObjT *getObject() const { return obj; }

  inline NodeID getObjectID() const { return getObject()->getObjectID(); }

  inline constexpr bool isFIObject() const { return obj->isFIObject(); }

  friend class ConstraintGraph<ctx>;

  [[nodiscard]] std::string toString() const {
    std::string str;
    llvm::raw_string_ostream os(str);
    if (this->isSuperNode()) {
      os << "SuperNode: \n";
      llvm::dump(this->childNodes, os);
    } else {
      os << super::getNodeID() << "\n";
      os << obj->toString() << "\n";
    }
    return os.str();
  }

  friend class GraphBase<super, Constraints>;
  friend class ConstraintGraph<ctx>;
};

}  // namespace pta
