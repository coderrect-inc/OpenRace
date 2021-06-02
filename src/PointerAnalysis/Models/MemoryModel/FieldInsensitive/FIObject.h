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

#include "PointerAnalysis/Program/AllocSite.h"

namespace pta {

template <typename ctx, typename ObjT>
class CGObjNode;
template <typename ctx>
class FIMemModel;

template <typename ctx>
class FIObject {
 private:
  using CT = CtxTrait<ctx>;
  using ObjNode = CGObjNode<ctx, FIObject<ctx>>;

  // the allocation site
  // for field-insentive PTA, each allocation site correponding to one object.
  const AllocSite<ctx> allocSite;
  ObjNode* objNode = nullptr;

  inline void setObjNode(ObjNode* node) {
    assert(objNode == nullptr);
    objNode = node;
  }

 public:
  FIObject(const ctx* c, const llvm::Value* v, const AllocKind t) : allocSite(c, v, t){};
  // can not be moved/copied
  FIObject(const FIObject<ctx>&) = delete;
  FIObject(FIObject<ctx>&&) = delete;
  FIObject<ctx>& operator=(const FIObject<ctx>&) = delete;
  FIObject<ctx>& operator=(FIObject<ctx>&&) = delete;

  [[nodiscard]] inline const AllocSite<ctx>& getAllocSite() const { return this->allocSite; }

  [[nodiscard]] inline const ctx* getContext() const { return this->getAllocSite().getContext(); }

  [[nodiscard]] inline const llvm::Value* getValue() const { return this->getAllocSite().getValue(); }

  [[nodiscard]] inline ObjNode* getObjNode() const { return objNode; }

  [[nodiscard]] inline AllocKind getAllocType() const { return this->getAllocSite().getAllocType(); }

  [[nodiscard]] inline bool isFunction() const { return this->getAllocType() == AllocKind::Functions; }

  [[nodiscard]] inline const llvm::Type* getType() const { return this->allocSite.getValue()->getType(); }

  [[nodiscard]] inline bool isGlobalObj() const { return this->getAllocType() == AllocKind::Globals; }

  [[nodiscard]] inline bool isStackObj() const { return this->getAllocType() == AllocKind::Stack; }

  [[nodiscard]] inline bool isHeapObj() const { return this->getAllocType() == AllocKind::Heap; }

  [[nodiscard]] inline std::string toString(bool detailed = true) const {
    if (detailed) {
      std::string ctxStr = CT::toString(getContext(), detailed);
      llvm::raw_string_ostream os(ctxStr);
      os << "\n" << *getValue();
      return os.str();
    } else {
      if (getValue()->hasName()) {
        return getValue()->getName();
      }
      return "";
    }
  }

  friend FIMemModel<ctx>;
  friend CGObjNode<ctx, FIObject<ctx>>;
};

template <typename ctx>
bool operator==(const FIObject<ctx>& lhs, const FIObject<ctx>& rhs) {
  return lhs.getValue() == rhs.getValue() && lhs.getContext() == rhs.getContext();
}

}  // namespace pta

// for container operation
namespace std {

template <typename ctx>
struct hash<pta::FIObject<ctx>> {
  size_t operator()(const pta::FIObject<ctx>& obj) const {
    llvm::hash_code seed = llvm::hash_value(obj.getContext());
    llvm::hash_code hash = llvm::hash_combine(obj.getValue(), seed);
    return hash_value(hash);
  }
};

}  // namespace std
