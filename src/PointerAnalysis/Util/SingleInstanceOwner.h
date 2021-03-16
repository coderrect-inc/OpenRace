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
// Created by peiming on 8/29/19.
//
#ifndef PTA_SINGLEINSTANCEOWNER_H
#define PTA_SINGLEINSTANCEOWNER_H

#include <unordered_set>

namespace pta {

template <typename T>
class SingleInstanceOwner {
 protected:
  std::unordered_set<T> innerSet;  // TODO: maybe other container is faster?
  using iterator = typename std::unordered_set<T>::iterator;

  // create if does not exist
  // get if already exists
  template <typename... Args>
  inline std::pair<const T *, bool> getOrCreate(Args &&...args) {
    auto r = innerSet.emplace(std::forward<Args>(args)...);
    return std::make_pair(&*r.first, r.second);
  }

  // create or abort
  template <typename... Args>
  inline const T *create(Args &&...args) {
    auto r = innerSet.emplace(std::forward<Args>(args)...);
    if (LLVM_UNLIKELY(!r.second)) {
      llvm_unreachable("Trying to re-create a existing item");
    }
    return &*r.first;
  }

 public:
  // get or abort
  template <typename... Args>
  inline const T *get(Args &&...args) const {
    auto r = innerSet.find(T(std::forward<Args>(args)...));
    if (LLVM_UNLIKELY(r == innerSet.end())) {
      llvm_unreachable("Trying to get a non-exist item!");
    }
    return &*r;
  }

  // get or abort
  template <typename... Args>
  inline const T *getOrNull(Args &&...args) const {
    auto r = innerSet.find(T(std::forward<Args>(args)...));
    if (LLVM_UNLIKELY(r == innerSet.end())) {
      return nullptr;
    }
    return &*r;
  }

  // get or abort
  inline const T *getOrNull(const T &t) const {
    auto r = innerSet.find(t);
    if (LLVM_UNLIKELY(r == innerSet.end())) {
      return nullptr;
    }
    return &*r;
  }

  // get or abort
  inline const T *get(const T &t) const {
    auto r = innerSet.find(t);
    if (LLVM_UNLIKELY(r == innerSet.end())) {
      llvm_unreachable("Trying to get a non-exist item!");
    }
    return &*r;
  }
};

}  // namespace pta

#endif