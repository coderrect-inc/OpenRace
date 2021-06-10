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

// pta cmd options: set to default value
IndirectResolveOption pta::INDIRECT_OPTION = IndirectResolveOption::WITH_LIMIT;
unsigned int pta::Max_Indirect_Target = 999;
