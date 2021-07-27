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
  TEST_CASE(name, "[integration][omp]") { checkTest(file, "integration/openmp/", {__VA_ARGS__}); }

#define EXPECTED(...) __VA_ARGS__
#define NORACE

// OpenMP Integration
TEST_LL("reduction-no", "reduction-no.ll", NORACE)
TEST_LL("master-iteration-counter-no", "master-iteration-counter-no.ll", NORACE)
// Need to handle openmp master first
// TEST_LL("reduction-yes", "reduction-yes.ll", EXPECTED(...))
TEST_LL("reduction-nowait-yes", "reduction-nowait-yes.ll",
        EXPECTED("reduction-nowait-yes.c:11:27 reduction-nowait-yes.c:16:27",
                 "reduction-nowait-yes.c:11:27 reduction-nowait-yes.c:16:31",
                 "reduction-nowait-yes.c:16:27 reduction-nowait-yes.c:11:27",
                 "reduction-nowait-yes.c:16:27 reduction-nowait-yes.c:11:31"))
TEST_LL("master-used-after-yes", "master-used-after-yes.ll",
        EXPECTED("master-used-after-yes.c:11:9 master-used-after-yes.c:14:22"))
TEST_LL("single-message-printer", "single-message-printer.ll",
        EXPECTED("single-message-printer.c:11:14 single-message-printer.c:11:14",
                 "single-message-printer.c:11:14 single-message-printer.c:11:14",
                 "single-message-printer.c:18:15 single-message-printer.c:18:15",
                 "single-message-printer.c:18:15 single-message-printer.c:18:15"))
TEST_LL("single-used-after-no", "single-used-after-no.ll", NORACE)
TEST_LL("thread-sanitizer-falsepos", "thread-sanitizer-falsepos.ll", NORACE)
TEST_LL("sections-simple-no", "sections-simple-no.ll", NORACE)
TEST_LL("sections-interproc-no", "sections-interproc-no.ll", NORACE)
// We report FP on the called function, PTA K-callsite limit
// TEST_LL("sections-interproc-no-deep", "sections-interproc-no-deep.ll", NORACE)
TEST_LL("sections-interproc-yes", "sections-interproc-yes.ll",
        EXPECTED("sections-interproc-yes.c:3:47 sections-interproc-yes.c:3:47",
                 "sections-interproc-yes.c:3:47 sections-interproc-yes.c:3:47"))
TEST_LL("duplicate-omp-fork", "duplicate-omp-fork.ll", NORACE)
// need support for __kmpc_dispatch_init
// TEST_LL("ordered-no", "ordered-no.ll", NORACE)
// TEST_LL("ordered-yes", "ordered-yes.ll", EXPECTED("ordered-yes.c:15:30 ordered-yes.c:15:30"))

// Array Index tests
TEST_LL("array-index-simple", "array-index-simple.ll", EXPECTED("array-index-simple.c:8:10 array-index-simple.c:8:12"))
TEST_LL("array-index-inner-yes", "array-index-inner-yes.ll",
        EXPECTED("array-index-inner-yes.c:10:15 array-index-inner-yes.c:10:17"))
TEST_LL("array-index-outer-yes", "array-index-outer-yes.ll",
        EXPECTED("array-index-outer-yes.c:10:15 array-index-outer-yes.c:10:17"))
// TEST_LL("array-multi-dimen-no", "array-multi-dimen-no.ll", NORACE)
TEST_LL("array-stride-2", "array-stride-2.ll", NORACE)

// Lock Tests
TEST_LL("lock-set-unset-no", "lock-set-unset-no.ll", NORACE)
TEST_LL("lock-set-unset-yes", "lock-set-unset-yes.ll",
        EXPECTED("lock-set-unset-yes.c:11:11 lock-set-unset-yes.c:11:11",
                 "lock-set-unset-yes.c:11:11 lock-set-unset-yes.c:11:11"))
TEST_LL("lock-set-unset-yes-2", "lock-set-unset-yes-2.ll",
        EXPECTED("lock-set-unset-yes-2.c:12:19 lock-set-unset-yes-2.c:12:19"))

// get_thread_num
TEST_LL("get-thread-num-no", "get-thread-num-no.ll", NORACE)
TEST_LL("get-thread-num-yes", "get-thread-num-yes.ll",
        EXPECTED("get-thread-num-yes.c:12:14 get-thread-num-yes.c:12:14",
                 "get-thread-num-yes.c:12:14 get-thread-num-yes.c:12:14"))
// TEST_LL("get-thread-num-interproc-no", "get-thread-num-interproc-no.ll", NORACE) cannot handle interproc yet
TEST_LL("get-thread-num-loop-no", "get-thread-num-loop-no.ll", NORACE)
TEST_LL("get-thread-num-nested-branch-no", "get-thread-num-nested-branch-no.ll", NORACE)
TEST_LL("get-thread-num-double-no", "get-thread-num-double-no.ll", NORACE)

// lastprivate
TEST_LL("lastprivate-before-yes", "lastprivate-before-yes.ll",
        EXPECTED("lastprivate-before-yes.c:13:14 lastprivate-before-yes.c:15:29",
                 "lastprivate-before-yes.c:15:29 lastprivate-before-yes.c:13:14"))
// TEST_LL("lastprivate-yes", "lastprivate-yes.ll", EXPECTED(TODO)) Cannot pass because there is no race in clang
TEST_LL("lastprivate-no", "lastprivate-no.ll", NORACE)
TEST_LL("lastprivate-loop-split-no", "lastprivate-loop-split-no.ll", NORACE)

// task
TEST_LL("task-master-no", "task-master-no.ll", NORACE)
TEST_LL("task-single-call", "task-single-call.ll", NORACE)
TEST_LL("task-single-no", "task-single-no.ll", NORACE)
TEST_LL("task-single-yes", "task-single-yes.ll", EXPECTED("task-single-yes.c:15:17 task-single-yes.c:21:17"))
TEST_LL("task-master-single-yes", "task-master-single-yes.ll",
        EXPECTED("task-master-single-yes.c:18:14 task-master-single-yes.c:14:16",
                 "task-master-single-yes.c:14:16 task-master-single-yes.c:18:14"))
TEST_LL("task-tid-no", "task-tid-no.ll", EXPECTED("task-tid-no.c:15:16 task-tid-no.c:15:16"))
TEST_LL("task-yes", "task-yes.ll", EXPECTED("task-yes.c:13:14 task-yes.c:13:14"))

// threadlocal
TEST_LL("threadlocal-no", "threadlocal-no.ll", NORACE)
