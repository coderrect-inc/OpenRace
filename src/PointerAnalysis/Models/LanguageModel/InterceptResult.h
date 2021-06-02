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
// Created by peiming on 7/21/20.
//

#pragma once

// forward declaration
namespace llvm {
class Value;
}

namespace pta {

struct InterceptResult {
  enum class Option {
    EXPAND_BODY,    // analyze and expand the body of the function
    ONLY_CALLSITE,  // do not analyze into the function body, but keep the
                    // callsite (so that there is a callnode in the callgraph)
    IGNORE_FUN,     // ignore the function completely (no callnode in the
                    // callgraph).
  };

  const llvm::Value *redirectTo;
  Option option;

  InterceptResult(const llvm::Value *target, Option opt) : redirectTo(target), option(opt) {}
};

}  // namespace pta
