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

#include <PointerAnalysis/Models/LanguageModel/ConsGraphBuilder.h>
#include <llvm/Support/CommandLine.h>

using namespace llvm;
using namespace pta;

// llvm cmd options
cl::opt<bool> ConfigPrintConstraintGraph("consgraph", cl::desc("Dump Constraint Graph to dot file"));
cl::opt<bool> ConfigPrintCallGraph("callgraph", cl::desc("Dump SHB graph to dot file"));
cl::opt<bool> ConfigDumpPointsToSet("dump-pts", cl::desc("Dump the Points-to Set of every pointer"));
cl::opt<bool> USE_MEMLAYOUT_FILTERING(
    "Xmemlayout-filtering", cl::desc("Use memory layout to filter out incompatible types in field-sensitive PTA"));
cl::opt<bool> CONFIG_VTABLE_MODE("Xenable-vtable", cl::desc("model vtable specially"), cl::init(false));
cl::opt<bool> CONFIG_USE_FI_MODE("Xuse-fi-model", cl::desc("use field insensitive analyse"), cl::init(false));

// pta cmd options: set to default values
cl::opt<bool> DEBUG_PTA("DEBUG_PTA", cl::desc("debug pointer analysis"), cl::init(false));
cl::opt<pta::IndirectResolveOption> INDIRECT_OPTION(
    "INDIRECT_OPTION", cl::desc("How to resolve indirect function calls"),
    cl::values(
        clEnumValN(pta::IndirectResolveOption::SKIP, "SKIP", "do not add the resolved function to the callgraph"),
        clEnumValN(pta::IndirectResolveOption::WITH_LIMIT, "WITH_LIMIT",
                   "only add the resolved function to the callgraph iff the indirect call limit is not exceeded"),
        clEnumValN(pta::IndirectResolveOption::CRITICAL, "CRITICAL",
                   "make sure all the functions are inserted to callgraph")),
    cl::init(IndirectResolveOption::WITH_LIMIT));
cl::opt<unsigned> Max_Indirect_Target("Max_Indirect_Target",
                                      cl::desc("Only for WITH_LIMIT: the max size of indirect targets"), cl::init(999));
cl::opt<unsigned> ANON_REC_LIMIT(
    "ANON_REC_LIMIT",
    cl::desc("The upperbound of the total size of recursively-created anonymous objects in a program"), cl::init(999));
cl::opt<unsigned> ANON_REC_DEPTH_LIMIT(
    "ANON_REC_DEPTH_LIMIT",
    cl::desc("the upperbound of the depth of types considered for a recursively-created anonymous object in a program"),
    cl::init(10));