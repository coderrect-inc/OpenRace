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

namespace pta {

// forward declaration
template <typename PtrT, uint32_t N>
class PtrRingBuffer;

template <typename PtrT, uint32_t N>
class RingBufferIterator {
  const PtrRingBuffer<PtrT, N> *buffer;
  uint32_t index;

 public:
  RingBufferIterator(const PtrRingBuffer<PtrT, N> *buffer, uint32_t index) : buffer(buffer), index(index){};

  RingBufferIterator<PtrT, N> &operator++() {
    if ((index + 1) % N == buffer->last) {
      this->index = N;
    } else {
      this->index = (this->index + 1) % N;
    }
    return *this;
  }

  RingBufferIterator<PtrT, N> operator++(int) {
    uint32_t i;
    if ((index + 1) % N == buffer->last) {
      i = N;
    } else {
      i = (this->index + 1) % N;
    }
    this->index = i;
    return RingBufferIterator(this->buffer, i);
  }

  PtrT *operator*() const { return (*buffer)[index]; }

  bool operator==(RingBufferIterator<PtrT, N> &rhs) { return this->index == rhs.index && this->buffer == rhs.buffer; }

  bool operator!=(RingBufferIterator<PtrT, N> &rhs) { return !this->operator==(rhs); }
};

// ring buffer that stores pointers with fixed N size
template <typename PtrT, uint32_t N>
class PtrRingBuffer {
 private:
  std::array<PtrT *, N> buffer;
  uint32_t last;

  PtrT *operator[](uint32_t n) const noexcept { return buffer[n]; }

 public:
  using iterator = RingBufferIterator<PtrT, N>;

  PtrRingBuffer() noexcept : buffer(), last(0) { buffer.fill(nullptr); }
  PtrRingBuffer(const PtrRingBuffer &r) : buffer(r.buffer), last(r.last) {}
  PtrRingBuffer &operator=(const PtrRingBuffer &r) {
    if (this == &r) {
      return *this;
    }

    this->buffer = r.buffer;
    this->last = r.last;
    return *this;
  };

  // return poped item
  PtrT *push(PtrT *value) {
    PtrT *poped = buffer[last];
    buffer[last] = value;
    last = (last + 1) % N;

    return poped;
  }

  iterator begin() const { return RingBufferIterator<PtrT, N>(this, last); }

  iterator end() const { return RingBufferIterator<PtrT, N>(this, N); }

  PtrRingBuffer(PtrRingBuffer &&) = delete;
  PtrRingBuffer &operator=(PtrRingBuffer &&) = delete;

  friend iterator;
};

}  // namespace pta
