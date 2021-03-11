#include <catch2/catch.hpp>

#include "RaceDetect/RaceDetect.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

bool reportContains(const race::Report &report, const race::Race r) {
  return std::find(report.begin(), report.end(), r) != report.end();
}

TEST_CASE("Pthreadrace", "[integration][pthread]") {
  llvm::LLVMContext context;
  llvm::SMDiagnostic err;

  auto module = llvm::parseIRFile("integration/pthreadrace/pthreadsimple.ll", err, context);
  if (!module) {
    err.print("pthreadsimple", llvm::errs());
  }
  REQUIRE(module.get() != nullptr);

  auto report = race::detectRaces(module.get());

  llvm::errs() << "races\n";
  for (auto const &race : report) {
    llvm::errs() << race.first << " " << race.second << "\n";
  }

  race::Race race = {{"pthreadsimple.c", 8, 9}, {"pthreadsimple.c", 8, 9}};
  CHECK(reportContains(report, race));
}