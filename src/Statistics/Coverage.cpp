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

#include "Coverage.h"

#include <llvm/Support/FormatVariadic.h>

#include "Trace/ProgramTrace.h"

using namespace race;

namespace {

// return true if the function is “external”
bool isExternal(const llvm::Function *fn) { return fn->isDeclaration() || fn->isIntrinsic(); }

// a function signature = return val type (param type(s)) function name
// cannot find a better way to compute signature of fn without transferring between std::string and llvm::StringRef
std::string getSignature(const Function *fn) {
  llvm::FunctionType *typ = fn->getFunctionType();
  std::string s;
  llvm::raw_string_ostream os(s);
  typ->print(os);
  os << " " << fn->getName();
  os.str();

  return s;
}

void recordFn(std::map<std::string, const llvm::Function *> &map, const llvm::Function *fn) {
  if (fn == nullptr || isExternal(fn)) return;
  std::string sig = getSignature(fn);
  auto exist = map.find(sig);
  if (exist == map.end()) {
    map.insert(std::make_pair(sig, fn));
  }
}

}  // namespace

Coverage::Coverage(const ProgramTrace &program) : program(program), module(program.getModule()) {
  summarize();
  computeFnCoverage();
}

void Coverage::summarize() {
  if (!data.analyzed.empty() || !data.total.empty()) return;  // already computed

  // collect fns in module
  for (auto const &func : module.getFunctionList()) {
    auto name = func.getName();
    auto fn = module.getFunction(name);
    recordFn(data.total, fn);
  }

  // collect fns in program
  for (auto const &thread : program.getThreads()) {
    if (thread->getEvents().empty()) {  // a thread with an empty trace, e.g., atomic
      auto entry = thread->spawnSite.value()->getIRInst()->getThreadEntry();
      if (auto fn = llvm::dyn_cast<llvm::Function>(entry)) recordFn(data.analyzed, fn);
      continue;
    }

    auto _1stEvent = thread->getEvents().front().get();
    recordFn(data.analyzed, _1stEvent->getFunction());

    for (auto const &event : thread->getEvents()) {
      switch (event->type) {
        case Event::Type::Call: {
          auto call = llvm::cast<EnterCallEvent>(event.get());
          auto fn = call->getCalledFunction();
          recordFn(data.analyzed, fn);
          break;
        }
        case Event::Type::Fork: {
          auto fork = llvm::cast<ForkEvent>(event.get());
          auto call = llvm::cast<llvm::CallBase>(fork->getInst());
          if (OpenMPModel::isFork(call)) {
            data.numOpenMPRegions++;
          }
        }
        default:
          break;
      }
    }
  }
}

void Coverage::computeFnCoverage() {
  for (auto it = data.total.begin(); it != data.total.end(); it++) {
    auto sig = it->first;
    auto found = data.analyzed.find(sig);
    if (found == data.analyzed.end()) {  // not analyzed by openrace
      data.unAnalyzed.insert(sig);
    }
  }
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const Coverage &cvg) {
  auto data = cvg.data;

  auto asPctStr = [](size_t x, size_t total) -> std::string {
    auto const pct = static_cast<float>(x) / static_cast<float>(total);
    return llvm::formatv("{0:P}", pct);
  };

  os << "==== Coverage ====\n-> OpenRace Analyzed " << data.analyzed.size() << " out of " << data.total.size()
     << " functions (" << asPctStr(data.analyzed.size(), data.total.size()) << " after excluding external functions)."
     << "\n#func (openrace visited): " << data.analyzed.size()
     << "\n#func (openrace unvisited): " << data.unAnalyzed.size()
     << "\n#func (total from .ll/.bc file): " << data.total.size()
     << "\n#visited openmp parallel regions: " << data.numOpenMPRegions / 2 << "\n";

  if (data.unAnalyzed.empty()) return os;

  os << "Unvisited Functions include:\n";
  for (auto unVisit : data.unAnalyzed) {
    os << "\t" << unVisit << "\n";
  }

  return os;
}
