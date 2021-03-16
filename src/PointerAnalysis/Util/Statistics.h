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
// Created by peiming on 3/30/20.
//

#ifndef PTA_STATISTICS_H
#define PTA_STATISTICS_H

#include <llvm/ADT/Statistic.h>

#define LOCAL_STATISTIC(VARNAME, DESC) \
  llvm::Statistic VARNAME { DEBUG_TYPE, #VARNAME, DESC }

#endif
