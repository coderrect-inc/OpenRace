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
// Created by peiming on 6/17/20.
//

#pragma once

#include "PointerAnalysis/Graph/NodeID.def"

namespace pta {

// forward declaration
template <typename ctx, typename ObjT>
class CGObjNode;

using ObjID = NodeID;

template <typename ctx, typename SubClass>
class Object {
 protected:
  using ObjNode = CGObjNode<ctx, SubClass>;

  bool isImmutable;
  static ObjID CurID;
  // static std::vector<Object<MemModel>*> ObjVec;

  ObjNode* objNode = nullptr;
  ObjID objID;

  Object() : objID(CurID++), isImmutable(false) {}

  // this can only be called internally
  inline void setObjNode(ObjNode* node) {
    assert(objNode == nullptr);
    objNode = node;
    if (isImmutable) {
      node->setImmutable();
    }
  }

 public:
  [[nodiscard]] inline ObjNode* getObjNodeOrNull() const { return objNode; }

  [[nodiscard]] inline ObjNode* getObjNode() const {
    assert(objNode != nullptr);
    return objNode;
  }

  [[nodiscard]] ObjID getObjectID() const { return objID; }

  inline void setImmutable() {
    this->isImmutable = true;
    if (objNode != nullptr) {
      objNode->setImmutable();
    }
  }

  static void resetObjectID() { CurID = 0; }

  friend CGObjNode<ctx, SubClass>;
};

template <typename ctx, typename SubClass>
ObjID Object<ctx, SubClass>::CurID = 0;

}  // namespace pta
