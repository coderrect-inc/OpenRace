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

#include "IR/IR.h"

#include <llvm/IR/GlobalAlias.h>
#include <llvm/IR/Operator.h>

using namespace race;

namespace {
llvm::StringRef getValNameHelper(const llvm::Value *val, llvm::StringRef defaultLabel = "UnknownVal") {
  return (val && val->hasName()) ? val->getName() : defaultLabel;
}
}  // namespace

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const IR &stmt) {
  stmt.print(os);
  return os;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const IR::Type &type) {
  switch (type) {
    case IR::Type::Read:
      os << "READ";
      break;
    case IR::Type::Write:
      os << "WRIT";
      break;
    case IR::Type::Fork:
      os << "FORK";
      break;
    case IR::Type::Join:
      os << "JOIN";
      break;
    case IR::Type::Lock:
      os << "LOCK";
      break;
    case IR::Type::Unlock:
      os << "UNLK";
      break;
    case IR::Type::Barrier:
      os << "BARR";
      break;
    case IR::Type::Call:
      os << "CALL";
      break;
    default:
      break;
  }
  return os;
}

void ReadIR::print(llvm::raw_ostream &os) const {
  auto val = getAccessedValue();
  auto valName = getValNameHelper(val);
  os << "IR " << type << " - " << valName << " - " << getInst() << "\n";
}

void WriteIR::print(llvm::raw_ostream &os) const {
  auto val = getAccessedValue();
  auto valName = getValNameHelper(val);
  os << "IR " << type << " - " << valName << " - " << getInst() << "\n";
}

void ForkIR::print(llvm::raw_ostream &os) const {
  auto entryFunc = getThreadEntry();
  auto funcName = getValNameHelper(entryFunc, "UnknownFunc");

  auto handle = getThreadHandle();
  auto handleName = getValNameHelper(handle, "UnknownHandle");
  os << "IR " << type << " - " << funcName << " - " << handleName << "\n";
}

void JoinIR::print(llvm::raw_ostream &os) const {
  auto handle = getThreadHandle();
  auto handleName = getValNameHelper(handle, "UnknownHandle");
  os << "IR " << type << " - " << handleName << "\n";
}

void CallIR::print(llvm::raw_ostream &os) const {
  auto func = llvm::cast<llvm::CallBase>(getInst())->getFunction();
  auto funcName = getValNameHelper(func, "UnknownFunc");
  os << "IR " << type << " - " << funcName << "\n";
}

void LockIR::print(llvm::raw_ostream &os) const {
  auto lockName = getValNameHelper(getLockValue());
  os << "IR " << type << " - " << lockName << "\n";
}

void UnlockIR::print(llvm::raw_ostream &os) const {
  auto lockName = getValNameHelper(getLockValue());
  os << "IR " << type << " - " << lockName << "\n";
}

void BarrierIR::print(llvm::raw_ostream &os) const { os << "IR " << type << "\n"; }

llvm::StringRef IR::toString() const {
  std::string s;
  llvm::raw_string_ostream os(s);
  print(os);
  os.str();
  return llvm::StringRef(s);
}

llvm::Function *CallIR::resolveTargetFunction(const llvm::CallBase *callInst) {
  auto calledFunc = callInst->getCalledFunction();
  if (calledFunc) {
    if (!calledFunc->hasName()) {
      llvm::errs() << "could not find called func without name: " << *callInst << "\n";
      return nullptr;
    }
    return calledFunc;
  }

  // callInst might call a function with alias/cast, the same as pta::CallSite::resolveTargetFunction but no const
  // e.g., @_ZN6DomainD1Ev = dso_local unnamed_addr alias void (%class.Domain*), void (%class.Domain*)* @_ZN6DomainD2Ev
  // refer to https://llvm.org/docs/LangRef.html#aliases
  llvm::Value *calledValue = callInst->getCalledOperand();
  if (auto bitcast = llvm::dyn_cast<llvm::BitCastOperator>(calledValue)) {
    if (auto function = llvm::dyn_cast<llvm::Function>(bitcast->getOperand(0))) {
      return function;
    }
    llvm::errs() << "resolveTargetFunction matched bitcast but symbol was not Function: " << *callInst << "\n";
  }

  if (auto globalAlias = llvm::dyn_cast<llvm::GlobalAlias>(calledValue)) {
    auto globalSymbol = globalAlias->getIndirectSymbol()->stripPointerCasts();
    if (auto function = llvm::dyn_cast<llvm::Function>(globalSymbol)) {
      return function;
    }
    llvm::errs() << "resolveTargetFunction matched globalAlias but symbol was not Function: " << *callInst << "\n";
  }

  if (llvm::isa<llvm::UndefValue>(calledValue)) {
    llvm::errs() << "resolveTargetFunction encounter undefvalue: " << *callInst << "\n";
    return nullptr;
  }

  llvm::errs() << "Unable to resolveTargetFunction from calledValue: " << *callInst << "\n";
  return nullptr;
}