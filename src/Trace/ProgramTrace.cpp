#include "ProgramTrace.h"

#include "Trace/Event.h"

using namespace race;

ProgramTrace::ProgramTrace(const pta::PTA &pta) : pta(pta) {
  auto mainEntry = pta::GT::getEntryNode(pta.getCallGraph());
  // construct main thread
  threads.push_back(std::make_unique<ThreadTrace>(*this, mainEntry));

  std::vector<const ForkEvent *> worklist;
  // Add events spawned by main thread to worklist to be traversed
  auto const mainThreadForks = threads.back()->getForkEvents();
  worklist.insert(worklist.end(), mainThreadForks.begin(), mainThreadForks.end());

  while (!worklist.empty()) {
    auto forkEvent = worklist.back();
    worklist.pop_back();

    // Heuristic: just choose first entry if there are more than one
    auto entries = forkEvent->getThreadEntry();
    assert(!entries.empty());
    auto entry = entries.front();
    // TODO: log if entries contained more than one possible entry

    // Build events for this thread entry
    threads.push_back(std::make_unique<ThreadTrace>(threads.size(), forkEvent, entry));

    // Add any newly forked threads
    for (auto const newFork : threads.back()->getForkEvents()) {
      worklist.push_back(newFork);
    }
  }
}
