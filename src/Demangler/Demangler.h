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

#include <llvm/ADT/StringRef.h>
#include <llvm/Demangle/Demangle.h>

#include "PointerAnalysis/Util/Util.h"

namespace pta {

struct Demangler : public llvm::ItaniumPartialDemangler {
 private:
  std::string curStr;

 public:
  /// strip the number post fix before demangling to avoid potential errors
  /// \return true on error, false otherwise
  bool partialDemangle(llvm::StringRef MangledName) {
    llvm::StringRef stripedName = stripNumberPostFix(MangledName);
    // ensure the lifetime is as long as the demangler so that the pointer is
    // valid during the whole mangling process
    curStr = stripedName.str();
    return ItaniumPartialDemangler::partialDemangle(curStr.c_str());
  }

  bool isCtor() const {
    if (this->isCtorOrDtor()) {
      llvm::StringRef baseName = this->getFunctionBaseName(nullptr, nullptr);
      if (!baseName.startswith("~")) {
        return true;
      }
    }
    return false;
  }

  bool isDtor() const {
    if (this->isCtorOrDtor()) {
      llvm::StringRef baseName = this->getFunctionBaseName(nullptr, nullptr);
      if (baseName.startswith("~")) {
        return true;
      }
    }
    return false;
  }
};

}  // namespace pta
