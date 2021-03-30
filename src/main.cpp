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

#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/InitLLVM.h>

#include "RaceDetect.h"

static llvm::cl::opt<std::string> InputFilename(llvm::cl::Positional, llvm::cl::desc("<input bitcode file>"),
                                                llvm::cl::init("-"), llvm::cl::value_desc("filename"));

int main(int argc, char** argv) {
  llvm::InitLLVM X(argc, argv);
  llvm::cl::ParseCommandLineOptions(argc, argv);

  llvm::LLVMContext context;
  context.setDiscardValueNames(false);
  llvm::SMDiagnostic err;

  std::unique_ptr<llvm::Module> module = parseIRFile(InputFilename, err, context);

  if (!module) {
    err.print(argv[1], llvm::errs());
    return 1;
  }

  if (llvm::verifyModule(*module, &llvm::errs())) {
    llvm::errs() << argv[1] << ": " << InputFilename << ": error: input module is broken!\n";
    return 1;
  }

  auto report = race::detectRaces(module.get());
  if (report.empty()) {
    llvm::outs() << "No races detected.\n";
    return 0;
  }

  // TODO: should output to json or something and let something else handle displaying results
  llvm::outs() << "==== Races ====\n";
  for (auto const& race : report) {
    llvm::outs() << race << "\n";
  }
  llvm::outs() << "Total Races Detected: " << report.size() << "\n";
  llvm::outs() << "JSON Report generated at ./races.json";

  return 0;
}
