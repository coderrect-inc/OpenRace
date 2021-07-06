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

TEST_CASE("OpenMP Integration Tests", "[integration][omp]") {
  std::vector<Oracle> oracles = {
      Oracle("reduction-no.ll", {}), Oracle("master-iteration-counter-no.ll", {}),
      // Oracle("reduction-yes.ll", {/*TODO*/}), // Need to handle openmp master first
      Oracle("reduction-nowait-yes.ll",
             {
                 "reduction-nowait-yes.c:11:27 reduction-nowait-yes.c:16:27",
                 "reduction-nowait-yes.c:11:27 reduction-nowait-yes.c:16:31",
                 "reduction-nowait-yes.c:16:27 reduction-nowait-yes.c:11:27",
                 "reduction-nowait-yes.c:16:27 reduction-nowait-yes.c:11:31",
             }),
      Oracle("master-used-after-yes.ll", {"master-used-after-yes.c:11:9 master-used-after-yes.c:14:22"}),
      Oracle("single-message-printer.ll",
             {
                 "single-message-printer.c:11:14 single-message-printer.c:11:14",
                 "single-message-printer.c:11:14 single-message-printer.c:11:14",
                 "single-message-printer.c:18:15 single-message-printer.c:18:15",
                 "single-message-printer.c:18:15 single-message-printer.c:18:15",
             }),
      Oracle("single-used-after-no.ll", {}), Oracle("thread-sanitizer-falsepos.ll", {}),
      Oracle("sections-simple-no.ll", {}), Oracle("sections-interproc-no.ll", {}),  // handled by adding 1-callsite PTA
      // Oracle("sections-interproc-no-deep.ll", {}),  // We report FP on the called function, PTA K-callsite limit
      Oracle("sections-interproc-yes.ll", {"sections-interproc-yes.c:3:47 sections-interproc-yes.c:3:47",
                                           "sections-interproc-yes.c:3:47 sections-interproc-yes.c:3:47"}),
      Oracle("duplicate-omp-fork.ll", {}),
      // Oracle("ordered-no.ll", {}), // need support for __kmpc_dispatch_init
      // Oracle("ordered-yes.ll", {"ordered-yes.c:15:30 ordered-yes.c:15:30"}), // need support for __kmpc_dispatch_init
  };

  checkOracles(oracles, "integration/openmp/");
}

TEST_CASE("OpenMP Array Index Analysis Integration Tests", "[integration][omp]") {
  std::vector<Oracle> oracles = {
      Oracle("array-index-simple.ll", {"array-index-simple.c:8:10 array-index-simple.c:8:12"}),
      Oracle("array-index-inner-yes.ll", {"array-index-inner-yes.c:10:15 array-index-inner-yes.c:10:17"}),
      Oracle("array-index-outer-yes.ll", {"array-index-outer-yes.c:10:15 array-index-outer-yes.c:10:17"}),
      // Oracle("array-multi-dimen-no.ll", {}), // FP on i?
      Oracle("array-stride-2.ll", {}),
  };

  checkOracles(oracles, "integration/openmp/");
}

TEST_CASE("OpenMP Lock Tests", "[integration][omp]") {
  std::vector<Oracle> oracles = {
      Oracle("lock-set-unset-no.ll", {}),
      Oracle("lock-set-unset-yes.ll",
             {
                 "lock-set-unset-yes.c:11:11 lock-set-unset-yes.c:11:11",
                 "lock-set-unset-yes.c:11:11 lock-set-unset-yes.c:11:11",
             }),

      Oracle("lock-set-unset-yes-2.ll", {"lock-set-unset-yes-2.c:12:19 lock-set-unset-yes-2.c:12:19"})};
  checkOracles(oracles, "integration/openmp/");
}

TEST_CASE("OpenMP get_thread_num", "[integration][omp]") {
  std::vector<Oracle> oracles = {
      Oracle("get-thread-num-no.ll", {}),
      Oracle("get-thread-num-yes.ll", {"get-thread-num-yes.c:12:14 get-thread-num-yes.c:12:14",
                                       "get-thread-num-yes.c:12:14 get-thread-num-yes.c:12:14"}),
      // Oracle("get-thread-num-interproc-no.ll", {}), // cannot handle interproc yet
      Oracle("get-thread-num-loop-no.ll", {}),
      Oracle("get-thread-num-nested-branch-no.ll", {}),

  };
  checkOracles(oracles, "integration/openmp/");
}
