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

#pragma once

// TODO: actually impement logs
#define LOG_INTERNAL(level, ...)

#define LOG_TRACE(...) LOG_INTERNAL(spdlog::level::trace, __VA_ARGS__)
#define LOG_DEBUG(...) LOG_INTERNAL(spdlog::level::debug, __VA_ARGS__)
#define LOG_INFO(...) LOG_INTERNAL(spdlog::level::info, __VA_ARGS__)
#define LOG_WARN(...) LOG_INTERNAL(spdlog::level::warn, __VA_ARGS__)
#define LOG_ERROR(...) LOG_INTERNAL(spdlog::level::err, __VA_ARGS__)