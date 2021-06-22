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

#include "Analysis/SharedMemory.h"
using namespace race;

SharedMemory::SharedMemory(const ProgramTrace &program) {
  auto const getObjId = [&](const pta::ObjTy *obj) {
    if (auto it = objIDs.find(obj); it != objIDs.end()) {
      return it->second;
    }

    auto id = objIDs.size();
    objIDs[obj] = id;
    return id;
  };

  if (DEBUG_PTA) {
    llvm::outs() << "** SharedMemory **"
                 << "\n";
  }
  for (auto const &thread : program.getThreads()) {
    auto const tid = thread->id;
    if (DEBUG_PTA) {
      llvm::outs() << "------- tid: " << tid << "\n";
    }

    for (auto const &event : thread->getEvents()) {
      switch (event->type) {
        case Event::Type::Read: {
          auto readEvent = llvm::cast<ReadEvent>(event.get());
          auto const ptsTo = readEvent->getAccessedMemory();
          if (DEBUG_PTA) {
            if (ptsTo.empty()) {
              llvm::outs() << "Read: ID " << readEvent->getID();
              readEvent->getIRInst()->getInst()->print(llvm::outs());
              llvm::outs() << ", empty pts, "
                           << "\n";
              break;
            } else {
              llvm::outs() << "Read: ID " << readEvent->getID();
              readEvent->getIRInst()->getInst()->print(llvm::outs());
              llvm::outs() << ", pts: ";
            }
          }
          // TODO: filter?
          for (auto obj : ptsTo) {
            auto &reads = objReads[getObjId(obj)][tid];
            reads.push_back(readEvent);
            if (DEBUG_PTA) {
              llvm::outs() << obj->getValue() << " " << obj->getObjectID() << " " << getObjId(obj) << ", ";
            }
          }
          if (DEBUG_PTA) {
            llvm::outs() << "\n";
          }
          break;
        }
        case Event::Type::Write: {
          auto writeEvent = llvm::cast<WriteEvent>(event.get());
          auto const ptsTo = writeEvent->getAccessedMemory();
          if (DEBUG_PTA) {
            if (ptsTo.empty()) {
              llvm::outs() << "Write: ID " << writeEvent->getID();
              writeEvent->getIRInst()->getInst()->print(llvm::outs());
              llvm::outs() << ", empty pts, "
                           << "\n";
              break;
            } else {
              llvm::outs() << "Write: ID " << writeEvent->getID();
              writeEvent->getIRInst()->getInst()->print(llvm::outs());
              llvm::outs() << ", pts: ";
            }
          }
          // TODO: filter?
          for (auto obj : ptsTo) {
            auto &writes = objWrites[getObjId(obj)][tid];
            writes.push_back(writeEvent);
            if (DEBUG_PTA) {
              llvm::outs() << obj->getValue() << " " << obj->getObjectID() << " " << getObjId(obj) << ", ";
            }
          }
          if (DEBUG_PTA) {
            llvm::outs() << "\n";
          }
          break;
        }
        default:
          // Do Nothing
          break;
      }
    }
  }
}
std::vector<const pta::ObjTy *> SharedMemory::getSharedObjects() const {
  std::vector<const pta::ObjTy *> sharedObjects;
  for (auto const &[obj, objID] : objIDs) {
    auto const nWriters = numThreadsWrite(objID);
    auto const nReaders = numThreadsRead(objID);

    // Common case: If > 1 writer or 1 writer and 2 reader, guaranteed shared across threads
    if (nWriters > 1 || (nWriters == 1 && nReaders > 1)) {
      sharedObjects.push_back(obj);
    }
    // When 1 writer and 1 reader, obj is shared if they are not the same thread
    else if (nWriters == 1 && nReaders == 1 &&
             objWrites.at(objID).begin()->first != objReads.at(objID).begin()->first) {
      sharedObjects.push_back(obj);
    }
  }
  return sharedObjects;
}
size_t SharedMemory::numThreadsWrite(ObjID id) const {
  auto it = objWrites.find(id);
  if (it == objWrites.end()) return 0;
  return it->second.size();
}
size_t SharedMemory::numThreadsRead(SharedMemory::ObjID id) const {
  auto it = objReads.find(id);
  if (it == objReads.end()) return 0;
  return it->second.size();
}
std::map<ThreadID, std::vector<const ReadEvent *>> SharedMemory::getThreadedReads(const pta::ObjTy *obj) const {
  auto id = objIDs.find(obj);
  if (id == objIDs.end()) return {};

  if (auto it = objReads.find(id->second); it != objReads.end()) {
    return it->second;
  }

  return {};
}
std::map<ThreadID, std::vector<const WriteEvent *>> SharedMemory::getThreadedWrites(const pta::ObjTy *obj) const {
  auto id = objIDs.find(obj);
  if (id == objIDs.end()) return {};

  if (auto it = objWrites.find(id->second); it != objWrites.end()) {
    return it->second;
  }

  return {};
}
