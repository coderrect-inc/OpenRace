#include "IR/Info.h"

#include <llvm/IR/InstrTypes.h>

using namespace race;

namespace {
llvm::StringRef getValNameHelper(const llvm::Value *val, llvm::StringRef defaultLabel = "UnknownVal") {
  return (val && val->hasName()) ? val->getName() : defaultLabel;
}
}  // namespace

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const StmtInfo &stmt) {
  stmt.print(os);
  return os;
}

llvm::raw_ostream &race::operator<<(llvm::raw_ostream &os, const StmtInfo::Type &type) {
  switch (type) {
    case StmtInfo::Type::Read:
      os << "READ";
      break;
    case StmtInfo::Type::Write:
      os << "WRIT";
      break;
    case StmtInfo::Type::Fork:
      os << "FORK";
      break;
    case StmtInfo::Type::Lock:
      os << "LOCK";
      break;
    case StmtInfo::Type::Unlock:
      os << "UNLK";
      break;
    case StmtInfo::Type::Join:
      os << "JOIN";
      break;
    case StmtInfo::Type::Call:
      os << "CALL";
      break;
  }
  return os;
}

void ReadInfo::print(llvm::raw_ostream &os) const {
  auto val = getAccessedValue();
  auto valName = getValNameHelper(val);
  os << "Info " << type << " - " << valName << " - " << getInst() << "\n";
}

void WriteInfo::print(llvm::raw_ostream &os) const {
  auto val = getAccessedValue();
  auto valName = getValNameHelper(val);
  os << "Info " << type << " - " << valName << " - " << getInst() << "\n";
}

void ForkInfo::print(llvm::raw_ostream &os) const {
  auto entryFunc = getThreadEntry();
  auto funcName = getValNameHelper(entryFunc, "UnknownFunc");

  auto handle = getThreadHandle();
  auto handleName = getValNameHelper(handle, "UnknownHandle");
  os << "Info " << type << " - " << funcName << " - " << handleName << "\n";
}

void JoinInfo::print(llvm::raw_ostream &os) const {
  auto handle = getThreadHandle();
  auto handleName = getValNameHelper(handle, "UnknownHandle");
  os << "Info " << type << " - " << handleName << "\n";
}

void CallInfo::print(llvm::raw_ostream &os) const {
  auto func = llvm::cast<llvm::CallBase>(getInst())->getFunction();
  auto funcName = getValNameHelper(func, "UnknownFunc");
  os << "Info " << type << " - " << funcName << "\n";
}
void LockInfo::print(llvm::raw_ostream &os) const {
  auto lockName = getValNameHelper(getLockValue());
  os << "Info " << type << " - " << lockName << "\n";
}

void UnlockInfo::print(llvm::raw_ostream &os) const {
  auto lockName = getValNameHelper(getLockValue());
  os << "Info " << type << " - " << lockName << "\n";
}

llvm::StringRef StmtInfo::toString() const {
  std::string s;
  llvm::raw_string_ostream os(s);
  print(os);
  os.str();
  return llvm::StringRef(s);
}
