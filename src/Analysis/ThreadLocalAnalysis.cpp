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

#include "Analysis/ThreadLocalAnalysis.h"

using namespace race;

bool ThreadLocalAnalysis::isThreadLocalAccess(const MemAccessEvent *write, const MemAccessEvent *other) {
  // Get the intersection of the pts to set and
  // check that each obj in the intersection is a thread local value

  // This handles cases where given to accesses with pts to sets like
  // write: { O1, O2 }
  // other: { O1, O3 }
  // where O1 is the only thread local object

  // We should not report a race because the only possible
  // shared object is thread local.

  auto writePtsTo = write->getAccessedMemory();
  auto otherPtsTo = other->getAccessedMemory();

  // Must be sorted to do set_intersection
  // this is sorted by pointer value, not by anything to do with the actual memory accesses itself
  // this oddity is perfectly fine for our purposes since we do not care about order of evaluation, just that we can do
  // set intersection consistently based on *some* order
  std::sort(writePtsTo.begin(), writePtsTo.end());
  std::sort(otherPtsTo.begin(), otherPtsTo.end());

  // this is set intersection, but we can fail fast unlike the stl implementation
  // this allows us to have superior speeds in cases that definitely don't involve globals faster since it will just
  // return false earlier
  auto wptIter = writePtsTo.begin();
  auto optIter = otherPtsTo.begin();
  while (wptIter != writePtsTo.end() && optIter != otherPtsTo.end()) {
    if (optIter == otherPtsTo.end() || *wptIter < *optIter) {
      wptIter++;
    } else if (wptIter == writePtsTo.end() || *wptIter > *optIter) {
      optIter++;
    } else {
      auto const val = (*wptIter)->getValue();

      auto const global = llvm::dyn_cast_or_null<llvm::GlobalVariable>(val);
      if (!global || !global->isThreadLocal()) {
        return false;
      }
      wptIter++;
      optIter++;
    }
  }

  // they were all threadlocal -- or none were shared, so in a sense they were thread local :)
  return true;
}
