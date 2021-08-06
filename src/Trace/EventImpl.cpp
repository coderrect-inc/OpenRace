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

#include "Trace/EventImpl.h"

using namespace race;

const std::multiset<const pta::ObjTy *> &ReadEventImpl::getAccessedMemory() const { return accessedMemory; }

const std::multiset<const pta::ObjTy *> &WriteEventImpl::getAccessedMemory() const { return accessedMemory; }

std::vector<const pta::CallGraphNodeTy *> ForkEventImpl::getThreadEntry() const {
  auto entryVal = fork->getThreadEntry();
  if (auto entryFunc = llvm::dyn_cast<llvm::Function>(entryVal)) {
    auto const newContext = pta::CT::contextEvolve(info->context, fork->getInst());
    auto const entryNode = info->thread->program.pta.getDirectNodeOrNull(newContext, entryFunc);
    return {entryNode};
  }

  // the entry is indirect and we need to figure out where the real function is
  auto callsite = info->thread->program.pta.getInDirectCallSite(info->context, fork->getInst());
  auto const &nodes = callsite->getResolvedNode();
  return std::vector<const pta::CallGraphNodeTy *>(nodes.begin(), nodes.end());
}
