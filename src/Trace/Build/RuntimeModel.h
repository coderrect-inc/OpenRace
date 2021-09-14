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

#include <assert.h>

#include <memory>
#include <variant>

#include "IR/IRImpls.h"
#include "Trace/Build/TraceBuilder.h"
#include "Trace/Event.h"

namespace race {

class Runtime {
 public:
  // called before the IR is traversed by trace builder. Return true if this ir should be skipped
  virtual bool preVisit(const std::shared_ptr<const IR> &ir, ThreadBuildState &state) { return false; }

  // called after a fork event is created, but just before the thread trace is built
  virtual void preFork(const std::shared_ptr<const ForkIR> &forkIr, const ForkEvent *forkEvent) {}
  // called just after the forked thread trace has been built
  virtual void postFork(const std::shared_ptr<const ForkIR> &forkIr, const ForkEvent *forkEvent) {}
};

}  // namespace race