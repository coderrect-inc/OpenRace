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
// Created by peiming on 1/3/20.
//

#ifndef PTA_ARRAYLAYOUT_H
#define PTA_ARRAYLAYOUT_H

#include <cassert>
#include <limits>
#include <map>

namespace pta {

class MemLayout;
class MemLayoutManager;

class ArrayLayout {
  size_t elementNum;
  size_t elementSize;

  // the number of bytes in memory layout
  size_t layoutSize = 0;
  // the key of the map is the *physical* offset of the subarray
  std::map<size_t, ArrayLayout *> subArrays;

  ArrayLayout(size_t elementNum, size_t elementSize) : elementNum(elementNum), elementSize(elementSize) {}

  void mergeSubArrays(const std::map<size_t, ArrayLayout *> &arrays, size_t offset) {
    for (auto subArray : arrays) {
      subArrays.insert(std::make_pair(subArray.first + offset, subArray.second));
    }
  }

  inline void setLayoutSize(size_t size) {
    assert(this->layoutSize == 0);
    this->layoutSize = size;
  }

 public:
  [[nodiscard]] inline size_t getArraySize() const {
    if (elementNum == std::numeric_limits<size_t>::max()) {
      return std::numeric_limits<size_t>::max();
    }
    return elementNum * elementSize;
  }

  [[nodiscard]] inline size_t getElementSize() const { return elementSize; }

  [[nodiscard]] inline size_t getElementNum() const { return elementNum; }

  [[nodiscard]] inline size_t getLayoutSize() const {
    assert(layoutSize != 0);
    return layoutSize;
  }

  [[nodiscard]] inline bool hasSubArrays() const { return !subArrays.empty(); }

  inline const std::map<size_t, ArrayLayout *> &getSubArrayMap() const { return this->subArrays; }

  size_t indexPhysicalOffset(size_t &pOffset) const;

  friend MemLayout;
  friend MemLayoutManager;
};

}  // namespace pta

#endif
