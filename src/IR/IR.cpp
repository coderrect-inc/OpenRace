#include "IR/IR.h"

#include <llvm/IR/InstrTypes.h>

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
    case IR::Type::Lock:
      os << "LOCK";
      break;
    case IR::Type::Unlock:
      os << "UNLK";
      break;
    case IR::Type::Join:
      os << "JOIN";
      break;
    case IR::Type::Call:
      os << "CALL";
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

llvm::StringRef IR::toString() const {
  std::string s;
  llvm::raw_string_ostream os(s);
  print(os);
  os.str();
  return llvm::StringRef(s);
}
