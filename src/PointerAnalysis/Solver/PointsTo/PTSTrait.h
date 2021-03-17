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
// Created by peiming on 10/22/19.
//
#ifndef PTA_PTSTRAIT_H
#define PTA_PTSTRAIT_H

#include "PointerAnalysis/Graph/NodeID.def"

namespace pta {

template <typename Pts>
struct PTSTrait {
  using TargetID = NodeID;

  // thing that need to be provided
  using PtsTy = typename Pts::UnknownTypeError;
  // iterator type
  using iterator = typename Pts::UnknownTypeError;

  static inline void clearAll() { return Pts::unKnownMethodError; }

  static inline void onNewNodeCreation(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline const PtsTy& getPointsTo(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline bool unionWith(NodeID src, NodeID dst) { return Pts::unKnownMethodError(src, dst); }

  static inline bool intersectWith(NodeID src, NodeID dst) { return Pts::unKnownMethodError(src, dst); }

  static inline bool intersectWithNoSpecialNode(NodeID src, NodeID dst) { return Pts::unKnownMethodError(src, dst); }

  static inline bool insert(NodeID src, TargetID idx) { return Pts::unKnownMethodError(src, idx); }

  static inline bool has(NodeID src, TargetID idx) { return Pts::unKnownMethodError(src, idx); }

  static inline bool contains(NodeID src, NodeID dst) { return Pts::unKnownMethodError(src, dst); }

  static inline bool isEmpty(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline iterator begin(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline iterator end(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline void clear(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline size_t count(NodeID id) { return Pts::unKnownMethodError(id); }
  // return the set of nodes that the id is pointed by.
  static inline const PtsTy& getPointedBy(NodeID id) { return Pts::unKnownMethodError(id); }

  static inline constexpr bool supportPointedBy() { return Pts::unknownBool; }
};

}  // namespace pta

#define DEFINE_PTS_TRAIT(IMPL)                                                                         \
  template <>                                                                                          \
  struct pta::PTSTrait<IMPL> {                                                                         \
    using TargetID = NodeID;                                                                           \
                                                                                                       \
    using PtsTy = typename IMPL::PtsTy;                                                                \
    using iterator = typename IMPL::iterator;                                                          \
                                                                                                       \
    static inline void clearAll() { return IMPL::clearAll(); }                                         \
    static inline void setPTSSizeLimit(uint32_t limit) { IMPL::setPTSSizeLimit(limit); }               \
    static inline void onNewNodeCreation(NodeID id) { return IMPL::onNewNodeCreation(id); }            \
                                                                                                       \
    static inline const PtsTy& getPointsTo(NodeID id) { return IMPL::getPointsTo(id); }                \
                                                                                                       \
    static inline bool unionWith(NodeID src, NodeID dst) { return IMPL::unionWith(src, dst); }         \
                                                                                                       \
    static inline bool intersectWith(NodeID src, NodeID dst) { return IMPL::intersectWith(src, dst); } \
                                                                                                       \
    static inline bool intersectWithNoSpecialNode(NodeID src, NodeID dst) {                            \
      return IMPL::intersectWithNoSpecialNode(src, dst);                                               \
    }                                                                                                  \
                                                                                                       \
    static inline bool insert(NodeID src, TargetID idx) { return IMPL::insert(src, idx); }             \
                                                                                                       \
    static inline bool has(NodeID src, TargetID idx) { return IMPL::has(src, idx); }                   \
                                                                                                       \
    static inline bool contains(NodeID src, NodeID dst) { return IMPL::contains(src, dst); }           \
                                                                                                       \
    static inline bool isEmpty(NodeID id) { return IMPL::isEmpty(id); }                                \
                                                                                                       \
    static inline iterator begin(NodeID id) { return IMPL::begin(id); }                                \
                                                                                                       \
    static inline iterator end(NodeID id) { return IMPL::end(id); }                                    \
                                                                                                       \
    static inline void clear(NodeID id) { return IMPL::clear(id); }                                    \
                                                                                                       \
    static inline size_t count(NodeID id) { return IMPL::count(id); }                                  \
                                                                                                       \
    static inline constexpr bool supportPointedBy() { return IMPL::supportPointedBy(); }               \
                                                                                                       \
    static inline bool equal(NodeID src, NodeID dst) { return IMPL::equal(src, dst); }                 \
                                                                                                       \
    static inline const PtsTy& getPointedBy(NodeID id) {                                               \
      if (IMPL::supportPointedBy())                                                                    \
        return IMPL::getPointedBy(id);                                                                 \
      else                                                                                             \
        llvm_unreachable(                                                                              \
            "not supported by BitVectorPTS, use PointedByPts "                                         \
            "instead ");                                                                               \
    }                                                                                                  \
  };

#endif