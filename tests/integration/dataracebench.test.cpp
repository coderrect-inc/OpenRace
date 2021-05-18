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

#include <catch2/catch.hpp>

#include "helpers/ReportChecking.h"

TEST_CASE("dataracebench", "[integration][dataracebench][omp]") {
  std::vector<Oracle> oracles = {
      Oracle("DRB001-antidep1-orig-yes.ll", {"DRB001-antidep1-orig-yes.c:58:10 DRB001-antidep1-orig-yes.c:58:12"}),
      Oracle("DRB002-antidep1-var-yes.ll", {"DRB002-antidep1-var-yes.c:67:9 DRB002-antidep1-var-yes.c:67:10"}),
      Oracle("DRB003-antidep2-orig-yes.ll", {"DRB003-antidep2-orig-yes.c:67:15 DRB003-antidep2-orig-yes.c:67:18"}),
      Oracle("DRB004-antidep2-var-yes.ll", {"DRB004-antidep2-var-yes.c:70:15 DRB004-antidep2-var-yes.c:70:18"}),
      // DRB 5-8 are indirect array access
      Oracle("DRB009-lastprivatemissing-orig-yes.ll",
             {"DRB009-lastprivatemissing-orig-yes.c:59:6 DRB009-lastprivatemissing-orig-yes.c:59:6"}),
      Oracle("DRB010-lastprivatemissing-var-yes.ll",
             {"DRB010-lastprivatemissing-var-yes.c:63:6 DRB010-lastprivatemissing-var-yes.c:63:6"}),
      Oracle("DRB011-minusminus-orig-yes.ll",
             {
                 "DRB011-minusminus-orig-yes.c:74:16 DRB011-minusminus-orig-yes.c:74:16",  // read-write
                 "DRB011-minusminus-orig-yes.c:74:16 DRB011-minusminus-orig-yes.c:74:16"   // write-write
             }),
      Oracle("DRB012-minusminus-var-yes.ll",
             {
                 "DRB012-minusminus-var-yes.c:74:16 DRB012-minusminus-var-yes.c:74:16",  // read-write
                 "DRB012-minusminus-var-yes.c:74:16 DRB012-minusminus-var-yes.c:74:16"   // write-write
             }),
      Oracle("DRB013-nowait-orig-yes.ll", {"DRB013-nowait-orig-yes.c:72:12 DRB013-nowait-orig-yes.c:75:13"}),
      Oracle("DRB014-outofbounds-orig-yes.ll",
             {"DRB014-outofbounds-orig-yes.c:75:14 DRB014-outofbounds-orig-yes.c:75:15"}),
      Oracle("DRB015-outofbounds-var-yes.ll",
             {"DRB015-outofbounds-var-yes.c:80:14 DRB015-outofbounds-var-yes.c:80:15"}),
      Oracle("DRB016-outputdep-orig-yes.ll", {"DRB016-outputdep-orig-yes.c:74:6 DRB016-outputdep-orig-yes.c:73:12",
                                              "DRB016-outputdep-orig-yes.c:74:6 DRB016-outputdep-orig-yes.c:74:6"}),
      Oracle("DRB017-outputdep-var-yes.ll", {"DRB017-outputdep-var-yes.c:72:6 DRB017-outputdep-var-yes.c:71:12",
                                             "DRB017-outputdep-var-yes.c:72:6 DRB017-outputdep-var-yes.c:72:6"}),
      // DRB 18 and 19 array index fails // misses the race on output
      Oracle("DRB020-privatemissing-var-yes.ll",
             {"DRB020-privatemissing-var-yes.c:65:9 DRB020-privatemissing-var-yes.c:65:9",
              "DRB020-privatemissing-var-yes.c:66:10 DRB020-privatemissing-var-yes.c:65:10"}),
      Oracle("DRB021-reductionmissing-orig-yes.ll",
             {"DRB021-reductionmissing-orig-yes.c:70:11 DRB021-reductionmissing-orig-yes.c:70:11",    // write-write
              "DRB021-reductionmissing-orig-yes.c:70:11 DRB021-reductionmissing-orig-yes.c:70:13"}),  // read-write
      Oracle("DRB022-reductionmissing-var-yes.ll",
             {"DRB022-reductionmissing-var-yes.c:72:11 DRB022-reductionmissing-var-yes.c:72:11",
              "DRB022-reductionmissing-var-yes.c:72:11 DRB022-reductionmissing-var-yes.c:72:13"}),
      // DRB 23 is sections
      // DRB 24 and 25 are simd
      // DRB 26 is target
      // DRB 27 is task
      Oracle("DRB028-privatemissing-orig-yes.ll",
             {"DRB028-privatemissing-orig-yes.c:65:9 DRB028-privatemissing-orig-yes.c:65:9",
              "DRB028-privatemissing-orig-yes.c:66:10 DRB028-privatemissing-orig-yes.c:65:10"}),
      Oracle("DRB029-truedep1-orig-yes.ll", {"DRB029-truedep1-orig-yes.c:64:11 DRB029-truedep1-orig-yes.c:64:12"}),
      Oracle("DRB030-truedep1-var-yes.ll", {"DRB030-truedep1-var-yes.c:68:11 DRB030-truedep1-var-yes.c:68:12"}),
      Oracle("DRB031-truedepfirstdimension-orig-yes.ll",
             {"DRB031-truedepfirstdimension-orig-yes.c:66:14 DRB031-truedepfirstdimension-orig-yes.c:66:15"}),
      Oracle("DRB032-truedepfirstdimension-var-yes.ll",
             {"DRB032-truedepfirstdimension-var-yes.c:69:14 DRB032-truedepfirstdimension-var-yes.c:69:15"}),
      // DRB 033 and 034 complex array index function
      // DRB 35 and 36 FP on write to a[i] ??
      Oracle("DRB037-truedepseconddimension-orig-yes.ll",
             {"DRB037-truedepseconddimension-orig-yes.c:63:14 DRB037-truedepseconddimension-orig-yes.c:63:15"}),
      Oracle("DRB038-truedepseconddimension-var-yes.ll",
             {"DRB038-truedepseconddimension-var-yes.c:65:14 DRB038-truedepseconddimension-var-yes.c:65:15"}),
      Oracle("DRB039-truedepsingleelement-orig-yes.ll",
             {"DRB039-truedepsingleelement-orig-yes.c:62:9 DRB039-truedepsingleelement-orig-yes.c:62:15"}),
      Oracle("DRB040-truedepsingleelement-var-yes.ll",
             {"DRB040-truedepsingleelement-var-yes.c:63:9 DRB040-truedepsingleelement-var-yes.c:63:15"}),
      // 41-44 are really complex array accesses
      Oracle("DRB045-doall1-orig-no.ll", {}),
      // 46 multi-dimen array
      Oracle("DRB047-doallchar-orig-no.ll", {}), Oracle("DRB048-firstprivate-orig-no.ll", {}),
      Oracle("DRB049-fprintf-orig-no.ll", {}), Oracle("DRB050-functionparameter-orig-no.ll", {}),
      // 51 path based on get_thread_num
      // 52 indirect array
      // Oracle("DRB053-inneronly1-orig-no.ll", {}), // FP multi-dimen array
      // Oracle("DRB054-inneronly2-orig-no.ll", {}), // FP multi-dimen array
      // 55-58 complex array access
      // 59 FP caused by last private??
      Oracle("DRB060-matrixmultiply-orig-no.ll", {}), Oracle("DRB061-matrixvector1-orig-no.ll", {}),
      // 62 reduction
      // 63-64 FP by multi-dimen array
      Oracle("DRB065-pireduction-orig-no.ll", {}), Oracle("DRB066-pointernoaliasing-orig-no.ll", {}),
      Oracle("DRB067-restrictpointer1-orig-no.ll", {}), Oracle("DRB068-restrictpointer2-orig-no.ll", {}),
      // 69 section and locks
      // 70 simd
      // 71 target
      // 72 task
      // 73 Broken Debug Info
      // 74 critical and flush
      // 75 path based on get_thread_num
      Oracle("DRB076-flush-orig-no.ll", {}), Oracle("DRB077-single-orig-no.ll", {}),
      // 78-79 task
      Oracle("DRB080-func-arg-orig-yes.ll",
             {"DRB080-func-arg-orig-yes.c:59:6 DRB080-func-arg-orig-yes.c:59:6",    // read-write
              "DRB080-func-arg-orig-yes.c:59:6 DRB080-func-arg-orig-yes.c:59:6"}),  // write-write
      Oracle("DRB081-func-arg-orig-no.ll", {}),
      Oracle("DRB082-declared-in-func-orig-yes.ll",
             {"DRB082-declared-in-func-orig-yes.c:57:5 DRB082-declared-in-func-orig-yes.c:57:5",    // read-write
              "DRB082-declared-in-func-orig-yes.c:57:5 DRB082-declared-in-func-orig-yes.c:57:5"}),  // write-write
      Oracle("DRB083-declared-in-func-orig-no.ll", {}),
      // 84 omp critical
      // 85 threadprivate + copyin + critical
      // 86-87 threadprivate
      // 88-89 PTA Fails ??
      // 90 missed read-write race
      // 91 threadprivate + critical + copyin
      // 92 critical
      Oracle("DRB093-doall2-collapse-orig-no.ll", {}),
      // 94 ordered + depend sink
      // 95 taskloop
      // 96 collapse + taskloop + multi-dimen
      // 97 target
      // 98 simd + collpase
      // 99 target
      // 100-101 task
      // 102 threadprivate + copyprivate
      // 103 master
      Oracle("DRB104-nowait-barrier-orig-no.ll", {}),
      // 105-107 task
      Oracle("DRB108-atomic-orig-no.ll", {}),
      // 109-110 ordered
      Oracle("DRB111-linearmissing-orig-yes.ll",
             {
                 "DRB111-linearmissing-orig-yes.c:68:6 DRB111-linearmissing-orig-yes.c:67:7",  // read-write
                 "DRB111-linearmissing-orig-yes.c:68:6 DRB111-linearmissing-orig-yes.c:68:6",  // read-write
                 "DRB111-linearmissing-orig-yes.c:68:6 DRB111-linearmissing-orig-yes.c:68:6"   // write-write
             }),
      // 112 linear
      Oracle("DRB113-default-orig-no.ll", {}),
      // 114 omp if
      // 115 simd
      // 116 target
      // 117 task
      // 118-119 nest lock
      Oracle("DRB120-barrier-orig-no.ll", {}), Oracle("DRB121-reduction-orig-no.ll", {}),
      // 122-123 task
      // 124 master
      Oracle("DRB125-single-orig-no.ll", {}),
      // 125-26 section
      // 127-136 task
      // 137-138 simd
      // 139 section + critical
      // 140-141 master
      // 142-143 critical
      // 144-164 target
      // 165-168 cannot be built
      // 169 multi-dimen array // Missed TP
      Oracle("DRB170-nestedloops-orig-no.ll", {}),
      // 171 threadprivate + tid path
      // 172 critical
  };

  checkOracles(oracles, "integration/dataracebench/");
}