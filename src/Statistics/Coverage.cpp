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

#include <llvm/ADT/StringRef.h>

#include "Trace/ProgramTrace.h"

using namespace race;

namespace {

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
  std::string sig = getSignature(fn);
  auto exist = map.find(sig);
  if (exist == map.end()) {
    map.insert(std::make_pair(sig, fn));
    llvm::outs() << "+" << fn->getName() << "\n";
  }
}

}  // namespace

Coverage::Coverage(const ProgramTrace &program) : program(program), module(program.getModule()) { summarize(); }

void Coverage::summarize() {
  if (!data.analyzed.empty() || !data.total.empty()) return;  // already computed

  // collect fns in module
  llvm::outs() << "From module: \n";
  for (auto const &func : module.getFunctionList()) {
    auto name = func.getName();
    if (name.startswith("llvm.")) continue;  // e.g., llvm.dbg.declare, llvm.lifetime.start.p0i8
    auto fn = module.getFunction(name);
    recordFn(data.total, fn);
  }

  // collect fns in program
  llvm::outs() << "\nFrom program : \n";
  for (auto const &thread : program.getThreads()) {
    for (auto const &event : thread->getEvents()) {
      auto eventFn = event->getFunction();
      recordFn(data.analyzed, eventFn);

      switch (event->type) {
        case Event::Type::Lock: {
          auto lock = llvm::cast<LockEvent>(event.get());
          auto fn = lock->getFunction();
          if (fn) {
            recordFn(data.analyzed, fn);
          }
          break;
        }
        case Event::Type::Unlock: {
          auto unlock = llvm::cast<UnlockEvent>(event.get());
          auto fn = unlock->getFunction();
          if (fn) {
            recordFn(data.analyzed, fn);
          }
          break;
        }
        case Event::Type::Call: {
          auto call = llvm::cast<EnterCallEvent>(event.get());
          auto fn = call->getCalledFunction();
          recordFn(data.analyzed, fn);
          break;
        }
        case Event::Type::ExternCall: {
          auto exCall = llvm::cast<ExternCallEvent>(event.get());
          auto exFn = exCall->getCalledFunction();
          recordFn(data.analyzed, exFn);
          break;
        }
        case Event::Type::Fork: {
          auto fork = llvm::cast<ForkEvent>(event.get());
          auto forkCall = llvm::cast<llvm::CallBase>(fork->getInst());
          recordFn(data.analyzed, forkCall->getCalledFunction());
          break;
        }
        case Event::Type::Join: {
          auto join = llvm::cast<JoinEvent>(event.get());
          auto joinCall = llvm::cast<llvm::CallBase>(join->getInst());
          if (joinCall) {
            recordFn(data.analyzed, joinCall->getCalledFunction());
          }
          break;
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
      data.unAnalyzed.insert(data.unAnalyzed.begin(), sig);
    }
  }
}

void Coverage::computeMemAccessCoverage() {}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const Coverage &cvg) {
  auto data = cvg.data;
  os << "==== Coverage ====\n-> OpenRace Analyzed "
     << (static_cast<float>(data.analyzed.size()) / static_cast<float>(data.total.size())) * 100 << "% functions."
     << "\n#Fn (from .ll/.bc file): " << data.total.size() << "\n#Fn (openrace visited): " << data.analyzed.size();

  if (!data.unAnalyzed.empty()) {
    os << "\nUnvisited Functions:\n";
    for (auto unVisit : data.unAnalyzed) {
      os << "\t" << unVisit << "\n";
    }
  }

  os << "\nVisited Functions:\n";
  for (auto visit : data.analyzed) {
    os << "\t" << visit.first << "\n";
  }

  return os;
}
