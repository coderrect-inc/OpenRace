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
  TEST_CASE(name, "[integration][pthread]") { checkTest(file, "integration/pthreadrace/", {__VA_ARGS__}); }

#define EXPECTED(...) __VA_ARGS__
#define NORACE

// NOTE: add new test input/output pair here.
// If the test case has no race, set the ouput as empty string.

TEST_LL("pthread-account-no", "pthread-account-no.ll", NORACE)
// TEST_LL("pthread-spinlock-no", "pthread-spinlock-no.ll", NORACE)
// TEST_LL("pthread-spinlock-yes", "pthread-spinlock-yes.ll", NORACE) // spinlock unimplemented
// TEST_LL("pthread-array-no", "pthread-array-no.ll", NORACE), // We cannot handle array index outside of OpenMP
TEST_LL("pthread-simple-yes", "pthread-simple-yes.ll", 
      EXPECTED("pthread-simple-yes.c:8:9 pthread-simple-yes.c:8:9",
               "pthread-simple-yes.c:8:9 pthread-simple-yes.c:8:9"))
