#pragma once

#include <map>

#include "LanguageModel/RaceModel.h"
#include "Trace/ProgramTrace.h"

namespace race {

struct SharedMemory {
  using ObjID = size_t;
  std::map<const pta::ObjTy *, ObjID> objIDs;

  struct Accesses {
    std::vector<const ReadEvent *> reads;
    std::vector<const WriteEvent *> writes;
  };

  std::map<ObjID, std::map<ThreadID, Accesses>> objAccesses;

  std::map<ObjID, std::map<ThreadID, std::vector<const ReadEvent *>>> objReads;
  std::map<ObjID, std::map<ThreadID, std::vector<const WriteEvent *>>> objWrites;

  [[nodiscard]] size_t numThreadsWrite(ObjID id) const;
  [[nodiscard]] size_t numThreadsRead(ObjID id) const;

 public:
  explicit SharedMemory(const ProgramTrace &);

  [[nodiscard]] std::vector<const pta::ObjTy *> getSharedObjects() const;

  // TODO: wrap this in option?? Make a copy?? Iterator??
  [[nodiscard]] std::map<ThreadID, std::vector<const ReadEvent *>> getThreadedReads(const pta::ObjTy *obj) const;
  [[nodiscard]] std::map<ThreadID, std::vector<const WriteEvent *>> getThreadedWrites(const pta::ObjTy *obj) const;
};
}  // namespace race