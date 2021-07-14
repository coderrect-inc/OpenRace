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

#include <string>

#include "CtxTrait.h"

// forward declaration
namespace llvm {
class Instruction;
}

namespace pta {

// for context insensitive PTA
using NoCtx = std::nullptr_t;

template <>
struct CtxTrait<NoCtx> {
  // No runtime overhead when
  constexpr static const NoCtx* contextEvolve(const NoCtx*, const llvm::Instruction*) { return nullptr; }
  constexpr static const NoCtx* getInitialCtx() { return nullptr; }
  constexpr static const NoCtx* getGlobalCtx() { return nullptr; }

  inline static std::string toString(const NoCtx*, bool /* detailed */ = false) { return "<Empty>"; }
  inline static void release(){};
};

}  // namespace pta
