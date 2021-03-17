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

//
// Created by peiming on 8/14/19.
//
//#include "PointerAnalysis/Context/Context.h"
//#include "PointerAnalysis/Context/CtxTrait.h"
//#include "PointerAnalysis/Program/Program.h"
//
// llvm::cl::opt<uint32_t> K_Limiting("k", llvm::cl::init(3),
// llvm::cl::desc("k-limiting for k-CFA"));
//
// namespace pta {
//
////bool operator<(const K_CallSite &lhs, const K_CallSite &rhs) {
////    // 1st, order by depth
////    if (lhs.getDepth() == rhs.getDepth()) {
////        // 2nd, simply order by the pointer value stored in the vector
////        for (auto iter1 = lhs.cbegin(), iter2 = rhs.cbegin(); iter1 !=
/// lhs.cend(); iter1 ++, iter2++) { /            const llvm::Instruction *
/// const pp1 = *iter1; /            const llvm::Instruction * const pp2 =
/// *iter2;
////
////            if (pp1 == pp2) {
////                //same value, compare next
////                continue;
////            }
////            return pp1 < pp2;
////        }
////        //every element is equal, consider as equal context
////        return false;
////    }
////    return lhs.getDepth() < rhs.getDepth();
////}
//
//}