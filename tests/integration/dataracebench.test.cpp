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

#define TEST_LL(name, file, ...) \
  TEST_CASE(name, "[integration][dataracebench][omp]") { checkTest(file, "integration/dataracebench/", {__VA_ARGS__}); }

#define EXPECTED(...) __VA_ARGS__
#define NORACE

TEST_LL("DRB001", "DRB001-antidep1-orig-yes.ll",
        EXPECTED("DRB001-antidep1-orig-yes.c:58:10 DRB001-antidep1-orig-yes.c:58:12"))
TEST_LL("DRB002", "DRB002-antidep1-var-yes.ll",
        EXPECTED("DRB002-antidep1-var-yes.c:67:9 DRB002-antidep1-var-yes.c:67:10"))
TEST_LL("DRB003", "DRB003-antidep2-orig-yes.ll",
        EXPECTED("DRB003-antidep2-orig-yes.c:67:15 DRB003-antidep2-orig-yes.c:67:18"))
TEST_LL("DRB004", "DRB004-antidep2-var-yes.ll",
        EXPECTED("DRB004-antidep2-var-yes.c:70:15 DRB004-antidep2-var-yes.c:70:18"))

// 5-8 are indirect array access: conservatively report the races
TEST_LL("DRB005", "DRB005-indirectaccess1-orig-yes.ll",
        EXPECTED("DRB005-indirectaccess1-orig-yes.c:128:13 DRB005-indirectaccess1-orig-yes.c:129:13",
                 "DRB005-indirectaccess1-orig-yes.c:128:13 DRB005-indirectaccess1-orig-yes.c:129:13",
                 "DRB005-indirectaccess1-orig-yes.c:129:13 DRB005-indirectaccess1-orig-yes.c:128:13",
                 "DRB005-indirectaccess1-orig-yes.c:129:13 DRB005-indirectaccess1-orig-yes.c:128:13"))
TEST_LL("DRB006", "DRB006-indirectaccess2-orig-yes.ll",
        EXPECTED("DRB006-indirectaccess2-orig-yes.c:128:13 DRB006-indirectaccess2-orig-yes.c:129:13",
                 "DRB006-indirectaccess2-orig-yes.c:128:13 DRB006-indirectaccess2-orig-yes.c:129:13",
                 "DRB006-indirectaccess2-orig-yes.c:129:13 DRB006-indirectaccess2-orig-yes.c:128:13",
                 "DRB006-indirectaccess2-orig-yes.c:129:13 DRB006-indirectaccess2-orig-yes.c:128:13"))
TEST_LL("DRB007", "DRB007-indirectaccess3-orig-yes.ll",
        EXPECTED("DRB007-indirectaccess3-orig-yes.c:128:13 DRB007-indirectaccess3-orig-yes.c:129:13",
                 "DRB007-indirectaccess3-orig-yes.c:128:13 DRB007-indirectaccess3-orig-yes.c:129:13",
                 "DRB007-indirectaccess3-orig-yes.c:129:13 DRB007-indirectaccess3-orig-yes.c:128:13",
                 "DRB007-indirectaccess3-orig-yes.c:129:13 DRB007-indirectaccess3-orig-yes.c:128:13"))
TEST_LL("DRB008", "DRB008-indirectaccess4-orig-yes.ll",
        EXPECTED("DRB008-indirectaccess4-orig-yes.c:128:13 DRB008-indirectaccess4-orig-yes.c:129:13",
                 "DRB008-indirectaccess4-orig-yes.c:128:13 DRB008-indirectaccess4-orig-yes.c:129:13",
                 "DRB008-indirectaccess4-orig-yes.c:129:13 DRB008-indirectaccess4-orig-yes.c:128:13",
                 "DRB008-indirectaccess4-orig-yes.c:129:13 DRB008-indirectaccess4-orig-yes.c:128:13"))

TEST_LL("DRB009", "DRB009-lastprivatemissing-orig-yes.ll",
        EXPECTED("DRB009-lastprivatemissing-orig-yes.c:59:6 DRB009-lastprivatemissing-orig-yes.c:59:6"))
TEST_LL("DRB010", "DRB010-lastprivatemissing-var-yes.ll",
        EXPECTED("DRB010-lastprivatemissing-var-yes.c:63:6 DRB010-lastprivatemissing-var-yes.c:63:6"))
TEST_LL("DRB011", "DRB011-minusminus-orig-yes.ll",
        EXPECTED("DRB011-minusminus-orig-yes.c:74:16 DRB011-minusminus-orig-yes.c:74:16",
                 "DRB011-minusminus-orig-yes.c:74:16 DRB011-minusminus-orig-yes.c:74:16"))
TEST_LL("DRB012", "DRB012-minusminus-var-yes.ll",
        EXPECTED("DRB012-minusminus-var-yes.c:74:16 DRB012-minusminus-var-yes.c:74:16",
                 "DRB012-minusminus-var-yes.c:74:16 DRB012-minusminus-var-yes.c:74:16"))
TEST_LL("DRB013", "DRB013-nowait-orig-yes.ll",
        EXPECTED("DRB013-nowait-orig-yes.c:72:12 DRB013-nowait-orig-yes.c:75:13"))
TEST_LL("DRB014", "DRB014-outofbounds-orig-yes.ll",
        EXPECTED("DRB014-outofbounds-orig-yes.c:75:14 DRB014-outofbounds-orig-yes.c:75:15"))
TEST_LL("DRB015", "DRB015-outofbounds-var-yes.ll",
        EXPECTED("DRB015-outofbounds-var-yes.c:80:14 DRB015-outofbounds-var-yes.c:80:15"))
TEST_LL("DRB016", "DRB016-outputdep-orig-yes.ll",
        EXPECTED("DRB016-outputdep-orig-yes.c:74:6 DRB016-outputdep-orig-yes.c:73:12",
                 "DRB016-outputdep-orig-yes.c:74:6 DRB016-outputdep-orig-yes.c:74:6"))
TEST_LL("DRB017", "DRB017-outputdep-var-yes.ll",
        EXPECTED("DRB017-outputdep-var-yes.c:72:6 DRB017-outputdep-var-yes.c:71:12",
                 "DRB017-outputdep-var-yes.c:72:6 DRB017-outputdep-var-yes.c:72:6"))

// DRB 18 and 19 array index
TEST_LL("DRB018", "DRB018-plusplus-orig-yes.ll",
        EXPECTED("DRB018-plusplus-orig-yes.c:72:18 DRB018-plusplus-orig-yes.c:72:18",
                 "DRB018-plusplus-orig-yes.c:72:18 DRB018-plusplus-orig-yes.c:72:18",
                 "DRB018-plusplus-orig-yes.c:72:22 DRB018-plusplus-orig-yes.c:72:22"))  // the race on output
TEST_LL("DRB019", "DRB019-plusplus-var-yes.ll",
        EXPECTED("DRB019-plusplus-var-yes.c:72:18 DRB019-plusplus-var-yes.c:72:18",
                 "DRB019-plusplus-var-yes.c:72:18 DRB019-plusplus-var-yes.c:72:18",
                 "DRB019-plusplus-var-yes.c:72:22 DRB019-plusplus-var-yes.c:72:22"))  // the race on output

// 20 the racy object is opted out by SROA
// TEST_LL("DRB020", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB021", "DRB021-reductionmissing-orig-yes.ll",
        EXPECTED("DRB021-reductionmissing-orig-yes.c:70:11 DRB021-reductionmissing-orig-yes.c:70:11",
                 "DRB021-reductionmissing-orig-yes.c:70:11 DRB021-reductionmissing-orig-yes.c:70:13"))
TEST_LL("DRB022", "DRB022-reductionmissing-var-yes.ll",
        EXPECTED("DRB022-reductionmissing-var-yes.c:72:11 DRB022-reductionmissing-var-yes.c:72:11",
                 "DRB022-reductionmissing-var-yes.c:72:11 DRB022-reductionmissing-var-yes.c:72:13"))
TEST_LL("DRB023", "DRB023-sections1-orig-yes.ll",
        EXPECTED("DRB023-sections1-orig-yes.c:58:7 DRB023-sections1-orig-yes.c:60:7",
                 "DRB023-sections1-orig-yes.c:60:7 DRB023-sections1-orig-yes.c:58:7"))

// DRB 24 and 25 are simd
// TEST_LL("DRB024", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB025", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB026", "DRB026-targetparallelfor-orig-yes.ll",
        EXPECTED("DRB026-targetparallelfor-orig-yes.c:64:9 DRB026-targetparallelfor-orig-yes.c:64:10"))

TEST_LL("DRB027", "DRB027-taskdependmissing-orig-yes.ll",
        EXPECTED("DRB027-taskdependmissing-orig-yes.c:61:7 DRB027-taskdependmissing-orig-yes.c:63:7"))

// DRB 28 the racy object is opted out by SROA
// TEST_LL("DRB028", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB029", "DRB029-truedep1-orig-yes.ll",
        EXPECTED("DRB029-truedep1-orig-yes.c:64:11 DRB029-truedep1-orig-yes.c:64:12"))
TEST_LL("DRB030", "DRB030-truedep1-var-yes.ll",
        EXPECTED("DRB030-truedep1-var-yes.c:68:11 DRB030-truedep1-var-yes.c:68:12"))
TEST_LL("DRB031", "DRB031-truedepfirstdimension-orig-yes.ll",
        EXPECTED("DRB031-truedepfirstdimension-orig-yes.c:66:14 DRB031-truedepfirstdimension-orig-yes.c:66:15"))
TEST_LL("DRB032", "DRB032-truedepfirstdimension-var-yes.ll",
        EXPECTED("DRB032-truedepfirstdimension-var-yes.c:69:14 DRB032-truedepfirstdimension-var-yes.c:69:15"))
TEST_LL("DRB033", "DRB033-truedeplinear-orig-yes.ll",
        EXPECTED("DRB033-truedeplinear-orig-yes.c:64:13 DRB033-truedeplinear-orig-yes.c:64:14"))
TEST_LL("DRB034", "DRB034-truedeplinear-var-yes.ll",
        EXPECTED("DRB034-truedeplinear-var-yes.c:66:13 DRB034-truedeplinear-var-yes.c:66:14"))
TEST_LL("DRB035", "DRB035-truedepscalar-orig-yes.ll",
        EXPECTED("DRB035-truedepscalar-orig-yes.c:67:9 DRB035-truedepscalar-orig-yes.c:66:12",
                 "DRB035-truedepscalar-orig-yes.c:67:9 DRB035-truedepscalar-orig-yes.c:67:9"))
TEST_LL("DRB036", "DRB036-truedepscalar-var-yes.ll",
        EXPECTED("DRB036-truedepscalar-var-yes.c:67:9 DRB036-truedepscalar-var-yes.c:66:12",
                 "DRB036-truedepscalar-var-yes.c:67:9 DRB036-truedepscalar-var-yes.c:67:9"))
TEST_LL("DRB037", "DRB037-truedepseconddimension-orig-yes.ll",
        EXPECTED("DRB037-truedepseconddimension-orig-yes.c:63:14 DRB037-truedepseconddimension-orig-yes.c:63:15"))
TEST_LL("DRB038", "DRB038-truedepseconddimension-var-yes.ll",
        EXPECTED("DRB038-truedepseconddimension-var-yes.c:65:14 DRB038-truedepseconddimension-var-yes.c:65:15"))
TEST_LL("DRB039", "DRB039-truedepsingleelement-orig-yes.ll",
        EXPECTED("DRB039-truedepsingleelement-orig-yes.c:62:9 DRB039-truedepsingleelement-orig-yes.c:62:15"))
TEST_LL("DRB040", "DRB040-truedepsingleelement-var-yes.ll",
        EXPECTED("DRB040-truedepsingleelement-var-yes.c:63:9 DRB040-truedepsingleelement-var-yes.c:63:15"))
TEST_LL("DRB041", "DRB041-3mm-parallel-no.ll", NORACE)
TEST_LL("DRB042", "DRB042-3mm-tile-no.ll", NORACE)
TEST_LL("DRB043", "DRB043-adi-parallel-no.ll", NORACE)
TEST_LL("DRB044", "DRB044-adi-tile-no.ll", NORACE)
TEST_LL("DRB045", "DRB045-doall1-orig-no.ll", NORACE)
TEST_LL("DRB046", "DRB046-doall2-orig-no.ll", NORACE)
TEST_LL("DRB047", "DRB047-doallchar-orig-no.ll", NORACE)
TEST_LL("DRB048", "DRB048-firstprivate-orig-no.ll", NORACE)
TEST_LL("DRB049", "DRB049-fprintf-orig-no.ll", NORACE)
TEST_LL("DRB050", "DRB050-functionparameter-orig-no.ll", NORACE)
TEST_LL("DRB051", "DRB051-getthreadnum-orig-no.ll", NORACE)

// 52 indirect array: this is impossible to identify without reading the data of int indexSet[N]
// and the distance of 12, and more importantly compute the index value for each iteration.
// Will conservatively report the races here as FPs
// TEST_LL("DRB052", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB053", "DRB053-inneronly1-orig-no.ll", NORACE)
TEST_LL("DRB054", "DRB054-inneronly2-orig-no.ll", NORACE)
TEST_LL("DRB055", "DRB055-jacobi2d-parallel-no.ll", NORACE)
TEST_LL("DRB056", "DRB056-jacobi2d-tile-no.ll", NORACE)
TEST_LL("DRB057", "DRB057-jacobiinitialize-orig-no.ll", NORACE)
TEST_LL("DRB058", "DRB058-jacobikernel-orig-no.ll", NORACE)
TEST_LL("DRB059", "DRB059-lastprivate-orig-no.ll", NORACE)
TEST_LL("DRB060", "DRB060-matrixmultiply-orig-no.ll", NORACE)
TEST_LL("DRB061", "DRB061-matrixvector1-orig-no.ll", NORACE)
TEST_LL("DRB062", "DRB062-matrixvector2-orig-no.ll", NORACE)
TEST_LL("DRB063", "DRB063-outeronly1-orig-no.ll", NORACE)
TEST_LL("DRB064", "DRB064-outeronly2-orig-no.ll", NORACE)
TEST_LL("DRB065", "DRB065-pireduction-orig-no.ll", NORACE)
TEST_LL("DRB066", "DRB066-pointernoaliasing-orig-no.ll", NORACE)
TEST_LL("DRB067", "DRB067-restrictpointer1-orig-no.ll", NORACE)
TEST_LL("DRB068", "DRB068-restrictpointer2-orig-no.ll", NORACE)
TEST_LL("DRB069", "DRB069-sectionslock1-orig-no.ll", NORACE)

// 70 simd
// TEST_LL("DRB070", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB071", "DRB071-targetparallelfor-orig-no.ll", NORACE)

// 72 task dep
// TEST_LL("DRB072", /*TODO*/, EXPECTED(/*TODO*/))

// 73 broken debug info:
// TEST_LL("DRB073", "DRB073-doall2-orig-yes.ll",
//        EXPECTED("DRB073-doall2-orig-yes.c:61:0 DRB073-doall2-orig-yes.c:61:0",  // races on array index
//                 "DRB073-doall2-orig-yes.c:61:0 DRB073-doall2-orig-yes.c:61:0",
//                 "DRB073-doall2-orig-yes.c:61:0 DRB073-doall2-orig-yes.c:61:21",
//                 "DRB073-doall2-orig-yes.c:61:0 DRB073-doall2-orig-yes.c:61:0",
//                 "DRB073-doall2-orig-yes.c:61:0 DRB073-doall2-orig-yes.c:61:0",
//                 "DRB073-doall2-orig-yes.c:61:0 DRB073-doall2-orig-yes.c:61:21",
//                 "DRB073-doall2-orig-yes.c:62:14 DRB073-doall2-orig-yes.c:62:14",  // races on array elements
//                 "DRB073-doall2-orig-yes.c:62:14 DRB073-doall2-orig-yes.c:62:15"))

// 74 critical and flush
// TEST_LL("DRB074", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB075", "DRB075-getthreadnum-orig-yes.ll",
        EXPECTED("DRB075-getthreadnum-orig-yes.c:60:18 DRB075-getthreadnum-orig-yes.c:64:33"))
TEST_LL("DRB076", "DRB076-flush-orig-no.ll", NORACE)
TEST_LL("DRB077", "DRB077-single-orig-no.ll", NORACE)

// 78 and 79 task dep
// TEST_LL("DRB078", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB079", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB080", "DRB080-func-arg-orig-yes.ll",
        EXPECTED("DRB080-func-arg-orig-yes.c:59:6 DRB080-func-arg-orig-yes.c:59:6",
                 "DRB080-func-arg-orig-yes.c:59:6 DRB080-func-arg-orig-yes.c:59:6"))
TEST_LL("DRB081", "DRB081-func-arg-orig-no.ll", NORACE)
TEST_LL("DRB082", "DRB082-declared-in-func-orig-yes.ll",
        EXPECTED("DRB082-declared-in-func-orig-yes.c:57:5 DRB082-declared-in-func-orig-yes.c:57:5",
                 "DRB082-declared-in-func-orig-yes.c:57:5 DRB082-declared-in-func-orig-yes.c:57:5"))
TEST_LL("DRB083", "DRB083-declared-in-func-orig-no.ll", NORACE)
TEST_LL("DRB084", "DRB084-threadprivatemissing-orig-yes.ll",
        EXPECTED("DRB084-threadprivatemissing-orig-yes.c:61:7 DRB084-threadprivatemissing-orig-yes.c:61:7",
                 "DRB084-threadprivatemissing-orig-yes.c:61:7 DRB084-threadprivatemissing-orig-yes.c:61:8"))
TEST_LL("DRB085", "DRB085-threadprivate-orig-no.ll", NORACE)
TEST_LL("DRB086", "DRB086-static-data-member-orig-yes.ll",
        EXPECTED("DRB086-static-data-member-orig-yes.cpp:72:13 DRB086-static-data-member-orig-yes.cpp:72:13",
                 "DRB086-static-data-member-orig-yes.cpp:72:13 DRB086-static-data-member-orig-yes.cpp:72:13"))
TEST_LL("DRB087", "DRB087-static-data-member2-orig-yes.ll",
        EXPECTED("DRB087-static-data-member2-orig-yes.cpp:74:13 DRB087-static-data-member2-orig-yes.cpp:74:13",
                 "DRB087-static-data-member2-orig-yes.cpp:74:13 DRB087-static-data-member2-orig-yes.cpp:74:13"))
TEST_LL("DRB088", "DRB088-dynamic-storage-orig-yes.ll",
        EXPECTED("DRB088-dynamic-storage-orig-yes.c:63:14 DRB088-dynamic-storage-orig-yes.c:63:14",
                 "DRB088-dynamic-storage-orig-yes.c:63:14 DRB088-dynamic-storage-orig-yes.c:63:14"))
TEST_LL("DRB089", "DRB089-dynamic-storage2-orig-yes.ll",
        EXPECTED("DRB089-dynamic-storage2-orig-yes.c:73:15 DRB089-dynamic-storage2-orig-yes.c:73:15",
                 "DRB089-dynamic-storage2-orig-yes.c:73:15 DRB089-dynamic-storage2-orig-yes.c:73:15"))

// 90 missed read-write race: the racy object is opted out by SROA
// TEST_LL("DRB090", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB091", "DRB091-threadprivate2-orig-no.ll", NORACE)
TEST_LL("DRB092", "DRB092-threadprivatemissing2-orig-yes.ll",
        EXPECTED("DRB092-threadprivatemissing2-orig-yes.c:68:11 DRB092-threadprivatemissing2-orig-yes.c:68:11",
                 "DRB092-threadprivatemissing2-orig-yes.c:68:11 DRB092-threadprivatemissing2-orig-yes.c:68:12"))
TEST_LL("DRB093", "DRB093-doall2-collapse-orig-no.ll", NORACE)

// 94 ordered + depend sink
// TEST_LL("DRB094", /*TODO*/, EXPECTED(/*TODO*/))

// 95 taskloop
// TEST_LL("DRB095", /*TODO*/, EXPECTED(/*TODO*/))

// 96 collapse + taskloop + multi-dimen
// TEST_LL("DRB096", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB097", "DRB097-target-teams-distribute-orig-no.ll", NORACE)

// 98 simd + collpase
// TEST_LL("DRB098", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB099", "DRB099-targetparallelfor2-orig-no.ll", NORACE)
TEST_LL("DRB100", "DRB100-task-reference-orig-no.ll", NORACE)
TEST_LL("DRB101", "DRB101-task-value-orig-no.ll", NORACE)

TEST_LL("DRB102", "DRB102-copyprivate-orig-no.ll", NORACE)
TEST_LL("DRB103", "DRB103-master-orig-no.ll", NORACE)
TEST_LL("DRB104", "DRB104-nowait-barrier-orig-no.ll", NORACE)
TEST_LL("DRB105", "DRB105-taskwait-orig-no.ll", NORACE)
TEST_LL("DRB106", "DRB106-taskwaitmissing-orig-yes.ll",
        EXPECTED("DRB106-taskwaitmissing-orig-yes.c:61:6 DRB106-taskwaitmissing-orig-yes.c:65:14",
                 "DRB106-taskwaitmissing-orig-yes.c:63:6 DRB106-taskwaitmissing-orig-yes.c:65:16"))
// taskgroup
// TEST_LL("DRB107", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB108", "DRB108-atomic-orig-no.ll", NORACE)
TEST_LL("DRB109", "DRB109-orderedmissing-orig-yes.ll",
        EXPECTED("DRB109-orderedmissing-orig-yes.c:56:6 DRB109-orderedmissing-orig-yes.c:56:6",
                 "DRB109-orderedmissing-orig-yes.c:56:6 DRB109-orderedmissing-orig-yes.c:56:6"))
TEST_LL("DRB110", "DRB110-ordered-orig-no.ll", NORACE)
TEST_LL("DRB111", "DRB111-linearmissing-orig-yes.ll",
        EXPECTED("DRB111-linearmissing-orig-yes.c:67:9 DRB111-linearmissing-orig-yes.c:67:9",
                 "DRB111-linearmissing-orig-yes.c:67:9 DRB111-linearmissing-orig-yes.c:67:9",
                 "DRB111-linearmissing-orig-yes.c:68:6 DRB111-linearmissing-orig-yes.c:67:7",
                 "DRB111-linearmissing-orig-yes.c:68:6 DRB111-linearmissing-orig-yes.c:68:6",
                 "DRB111-linearmissing-orig-yes.c:68:6 DRB111-linearmissing-orig-yes.c:68:6"))

// 112 linear
TEST_LL("DRB112", "DRB112-linear-orig-no.ll", NORACE)

TEST_LL("DRB113", "DRB113-default-orig-no.ll", NORACE)

// 114 omp if
// TEST_LL("DRB114", /*TODO*/, EXPECTED(/*TODO*/))

// 115 simd
// TEST_LL("DRB115", /*TODO*/, EXPECTED(/*TODO*/))

// 116 target teams
// TEST_LL("DRB116", /*TODO*/, EXPECTED(/*TODO*/))

// 117 task
// TEST_LL("DRB117", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB118", "DRB118-nestlock-orig-no.ll", NORACE)
TEST_LL("DRB119", "DRB119-nestlock-orig-yes.ll",
        EXPECTED("DRB119-nestlock-orig-yes.c:32:8 DRB119-nestlock-orig-yes.c:32:8",
                 "DRB119-nestlock-orig-yes.c:32:8 DRB119-nestlock-orig-yes.c:32:8"))
TEST_LL("DRB120", "DRB120-barrier-orig-no.ll", NORACE)
TEST_LL("DRB121", "DRB121-reduction-orig-no.ll", NORACE)

// 122 task __kmpc_omp_task_begin_if0
// TEST_LL("DRB122", /*TODO*/, EXPECTED(/*TODO*/))

// 123 looks to fail because we report FP in sections
// TEST_LL("DRB123", /*TODO*/, EXPECTED(/*TODO*/))

// 124 master // wont-fix, variable expunged by optimisation
// TEST_LL("DRB124", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB125", "DRB125-single-orig-no.ll", NORACE)
TEST_LL("DRB126", "DRB126-firstprivatesections-orig-no.ll", NORACE)

// 127 need to model sync for task outside of parallel region
// TEST_LL("DRB127", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB128", "DRB128-tasking-threadprivate2-orig-no.ll", NORACE)
// TEST_LL("DRB129", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB130", /*TODO*/, EXPECTED(/*TODO*/))

// 131-136 task dep
// TEST_LL("DRB131", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB132", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB133", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB134", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB135", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB136", /*TODO*/, EXPECTED(/*TODO*/))

// 137-138 simd
// TEST_LL("DRB137", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB138", /*TODO*/, EXPECTED(/*TODO*/))

// 139 // nested parallel
// TEST_LL("DRB139", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB140", "DRB140-reduction-barrier-orig-yes.ll",
        EXPECTED("DRB140-reduction-barrier-orig-yes.c:25:7 DRB140-reduction-barrier-orig-yes.c:27:31",
                 "DRB140-reduction-barrier-orig-yes.c:25:7 DRB140-reduction-barrier-orig-yes.c:27:33"))
TEST_LL("DRB141", "DRB141-reduction-barrier-orig-no.ll", NORACE)

// 142-143 atomic details
// TEST_LL("DRB142", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB143", /*TODO*/, EXPECTED(/*TODO*/))

// 144-154 target teams distribute
TEST_LL(
    "DRB144", "DRB144-critical-missingreduction-orig-gpu-yes.ll",
    EXPECTED(
        "DRB144-critical-missingreduction-orig-gpu-yes.c:26:8 DRB144-critical-missingreduction-orig-gpu-yes.c:26:8",
        "DRB144-critical-missingreduction-orig-gpu-yes.c:26:8 DRB144-critical-missingreduction-orig-gpu-yes.c:26:8"))
TEST_LL("DRB145", "DRB145-atomiccritical-orig-gpu-no.ll", NORACE)
TEST_LL("DRB146", "DRB146-atomicupdate-orig-gpu-no.ll", NORACE)
TEST_LL("DRB147", "DRB147-critical1-orig-gpu-no.ll", NORACE)
TEST_LL("DRB148", "DRB148-critical1-orig-gpu-yes.ll",
        EXPECTED("DRB148-critical1-orig-gpu-yes.c:31:8 DRB148-critical1-orig-gpu-yes.c:31:8",
                 "DRB148-critical1-orig-gpu-yes.c:31:8 DRB148-critical1-orig-gpu-yes.c:31:8",
                 "DRB148-critical1-orig-gpu-yes.c:31:8 DRB148-critical1-orig-gpu-yes.c:34:9",
                 "DRB148-critical1-orig-gpu-yes.c:31:8 DRB148-critical1-orig-gpu-yes.c:34:9",
                 "DRB148-critical1-orig-gpu-yes.c:34:9 DRB148-critical1-orig-gpu-yes.c:31:8",
                 "DRB148-critical1-orig-gpu-yes.c:34:9 DRB148-critical1-orig-gpu-yes.c:31:8",
                 "DRB148-critical1-orig-gpu-yes.c:34:9 DRB148-critical1-orig-gpu-yes.c:34:9",
                 "DRB148-critical1-orig-gpu-yes.c:34:9 DRB148-critical1-orig-gpu-yes.c:34:9"))
TEST_LL("DRB149", "DRB149-missingdata1-orig-gpu-no.ll", NORACE)
TEST_LL("DRB150", "DRB150-missinglock1-orig-gpu-yes.ll",
        EXPECTED("DRB150-missinglock1-orig-gpu-yes.c:30:8 DRB150-missinglock1-orig-gpu-yes.c:30:8",
                 "DRB150-missinglock1-orig-gpu-yes.c:30:8 DRB150-missinglock1-orig-gpu-yes.c:30:8"))
TEST_LL("DRB151", "DRB151-missinglock3-orig-gpu-yes.ll",
        EXPECTED("DRB151-missinglock3-orig-gpu-yes.c:26:8 DRB151-missinglock3-orig-gpu-yes.c:26:8",
                 "DRB151-missinglock3-orig-gpu-yes.c:26:8 DRB151-missinglock3-orig-gpu-yes.c:26:8"))

// fail due to teams local lock object (lockset problem)
// TEST_LL("DRB152", "DRB152-missinglock2-orig-gpu-no.ll", NORACE)

TEST_LL("DRB153", "DRB153-missinglock2-orig-gpu-yes.ll",
        EXPECTED("DRB153-missinglock2-orig-gpu-yes.c:28:8 DRB153-missinglock2-orig-gpu-yes.c:28:8",
                 "DRB153-missinglock2-orig-gpu-yes.c:28:8 DRB153-missinglock2-orig-gpu-yes.c:28:8"))
TEST_LL("DRB154", "DRB154-missinglock3-orig-gpu-no.ll", NORACE)
TEST_LL("DRB155", "DRB155-missingordered-orig-gpu-no.ll", NORACE)
TEST_LL("DRB156", "DRB156-missingordered-orig-gpu-yes.ll",
        EXPECTED("DRB156-missingordered-orig-gpu-yes.c:28:11 DRB156-missingordered-orig-gpu-yes.c:28:12",
                 "DRB156-missingordered-orig-gpu-yes.c:28:11 DRB156-missingordered-orig-gpu-yes.c:28:11"))

// 157 target teams distribute + SIMD
// TEST_LL("DRB157", /*TODO*/, EXPECTED(/*TODO*/))

// 158 target task+depend
// TEST_LL("DRB158", /*TODO*/, EXPECTED(/*TODO*/))

TEST_LL("DRB159", "DRB159-nobarrier-orig-gpu-no.ll", NORACE)

// 160-164 target teams distribute + SIMD
// TEST_LL("DRB160", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB161", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB162", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB163", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB164", /*TODO*/, EXPECTED(/*TODO*/))

// 165-168 cannot be built
// TEST_LL("DRB165", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB166", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB167", /*TODO*/, EXPECTED(/*TODO*/))
// TEST_LL("DRB168", /*TODO*/, EXPECTED(/*TODO*/))

// 169 multi-dimen array
TEST_LL("DRB169", "DRB169-missingsyncwrite-orig-yes.ll",
        EXPECTED("DRB169-missingsyncwrite-orig-yes.c:38:15 DRB169-missingsyncwrite-orig-yes.c:38:15"))

TEST_LL("DRB170", "DRB170-nestedloops-orig-no.ll", NORACE)
TEST_LL("DRB171", "DRB171-threadprivate3-orig-no.ll", NORACE)
TEST_LL("DRB172", "DRB172-critical2-orig-no.ll", NORACE)
