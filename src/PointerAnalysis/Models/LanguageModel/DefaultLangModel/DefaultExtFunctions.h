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

#include <llvm/IR/Function.h>

#include <set>

namespace pta {

// TODO: think about this!

class DefaultExtFunctions {
 private:
  const static std::set<llvm::StringRef> THREAD_CREATIONS;

 public:
  inline static bool isThreadCreation(const llvm::Function *fun) {
    return THREAD_CREATIONS.find(fun->getName()) != THREAD_CREATIONS.end();
  }
};

}  // namespace pta
