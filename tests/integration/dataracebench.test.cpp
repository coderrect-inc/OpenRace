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
      // DRB 3 and 4 are multi-dimen array
      // DRB 5-8 are indirect array access
      Oracle("DRB009-lastprivatemissing-orig-yes.ll", {"DRB009-lastprivatemissing-orig-yes.c:59:6 DRB009-lastprivatemissing-orig-yes.c:59:6"}),
      Oracle("DRB010-lastprivatemissing-var-yes.ll", {"DRB010-lastprivatemissing-var-yes.c:63:6 DRB010-lastprivatemissing-var-yes.c:63:6"}),
      Oracle("DRB011-minusminus-orig-yes.ll", {
        "DRB011-minusminus-orig-yes.c:74:16 DRB011-minusminus-orig-yes.c:74:16", // read-write
        "DRB011-minusminus-orig-yes.c:74:16 DRB011-minusminus-orig-yes.c:74:16" // write-write
      }),
      Oracle("DRB012-minusminus-var-yes.ll", {
        "DRB012-minusminus-var-yes.c:74:16 DRB012-minusminus-var-yes.c:74:16", // read-write
        "DRB012-minusminus-var-yes.c:74:16 DRB012-minusminus-var-yes.c:74:16" // write-write
      }),
      Oracle("DRB013-nowait-orig-yes.ll", {"DRB013-nowait-orig-yes.c:72:12 DRB013-nowait-orig-yes.c:75:13"}),
      // DRB 14 and 15 are multi-dimen array
      Oracle("DRB016-outputdep-orig-yes.ll", {
        "DRB016-outputdep-orig-yes.c:74:6 DRB016-outputdep-orig-yes.c:73:12",
        "DRB016-outputdep-orig-yes.c:74:6 DRB016-outputdep-orig-yes.c:74:6"
      }),
      Oracle("DRB017-outputdep-var-yes.ll", {
        "DRB017-outputdep-var-yes.c:72:6 DRB017-outputdep-var-yes.c:71:12",
        "DRB017-outputdep-var-yes.c:72:6 DRB017-outputdep-var-yes.c:72:6"
      }),
      // DRB 18 and 19 array index fails
      Oracle("DRB020-privatemissing-var-yes.ll", {
        "DRB020-privatemissing-var-yes.c:65:9 DRB020-privatemissing-var-yes.c:65:9",
        "DRB020-privatemissing-var-yes.c:66:10 DRB020-privatemissing-var-yes.c:65:10"
      }),
      // DRB 21 and 22 are multi-dimen array
      // DRB 23 is sections
      // DRB 24 and 25 are simd
      // DRB 26 is target
      // DRB 27 is task
      Oracle("DRB028-privatemissing-orig-yes.ll", {
        "DRB028-privatemissing-orig-yes.c:65:9 DRB028-privatemissing-orig-yes.c:65:9",
        "DRB028-privatemissing-orig-yes.c:66:10 DRB028-privatemissing-orig-yes.c:65:10"
      }),
      Oracle("DRB029-truedep1-orig-yes.ll", {"DRB029-truedep1-orig-yes.c:64:11 DRB029-truedep1-orig-yes.c:64:12"}),
      Oracle("DRB030-truedep1-var-yes.ll", {"DRB030-truedep1-var-yes.c:68:11 DRB030-truedep1-var-yes.c:68:12"}),
      // DRB 031 032 multi-dimen
      // DRB 033 and 034 complex array index function
      // DRB 35 and 36 FP on write to a[i] ??
      // 37 and 38 multi-dimen
      Oracle("DRB039-truedepsingleelement-orig-yes.ll", {"DRB039-truedepsingleelement-orig-yes.c:62:9 DRB039-truedepsingleelement-orig-yes.c:62:15"}),
      Oracle("DRB040-truedepsingleelement-var-yes.ll", {"DRB040-truedepsingleelement-var-yes.c:63:9 DRB040-truedepsingleelement-var-yes.c:63:15"}),
  };

  checkOracles(oracles, "integration/dataracebench/ll/");
}