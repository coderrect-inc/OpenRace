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
// Created by peiming on 7/23/20.
//

#ifndef PTA_REWRITEMODELEDAPIPASS_H
#define PTA_REWRITEMODELEDAPIPASS_H

#include <llvm/Pass.h>
namespace pta::cpp {

class RewriteModeledAPIPass : public llvm::FunctionPass {
 public:
  static char ID;
  explicit RewriteModeledAPIPass() : llvm::FunctionPass(ID) {}

  bool runOnFunction(llvm::Function &F) override;
};

}  // namespace pta::cpp

#endif
