---
id: doc-contributing
title: How to Contribute?
---

# Support for new feature

There are two cases to consider when adding support for a new feature.

If the "logical operation" performed by the features is already implemented, adding support is easy. If not, adding support is slightly more complex.

The list of implemented operations can be seen from `StmtInfo::Type` in `IR/IR.h`. These are the logical operations currently implented. As an examnple, `Fork` spawns a new thread and `Lock` acquires a standard pthread style lock.

If the new feature behaves the same as an existing `StmtInfo::Type`, you only need to add a new recognizer at the IR level.

If you need to add a new operation to `StmtInfo::Type`, you need to write a recognizer and update Trace generation and each of the Analyses.

## Adding an IRRecognizer

In `IR/Builder.cpp` the `generateRaceFunction` traverses LLVM IR and produces a `RaceFunction` containing only the loigcal operations we care about for race detection.

Two things need to be done to add a new recognizer:
 1. Add a new Impl class to `IR/IRImpls.h`
 2. Add a new recognizer branch to `generateRaceFunction` to construct the new Impl class

For example, say we want to add `pthread_create` as a new Fork operation.

### Defining the Impl class

First, we define a new Impl class in `IR/IRImpls.h` that implements the `ForkInfo` interface defined in `IR/IR.h`.

```
class PthreadCreateInfo : public ForkInfo {
    constexpr static unsigned int threadHandleOffset = 0;
    constexpr static unsigned int threadEntryOffset = 2;
    const llvm::CallBase *inst;

public:
    explicit PthreadCreateInfo(const llvm::CallBase *inst) : inst(inst) {}

    [[nodiscard]] inline const llvm::CallBase *getInst() const override { return inst; }

    [[nodiscard]] const llvm::Value *getThreadHandle() const override {
        return inst->getArgOperand(threadHandleOffset)->stripPointerCasts();
    }

    [[nodiscard]] const llvm::Value *getThreadEntry() const override {
        return inst->getArgOperand(threadEntryOffset)->stripPointerCasts();
    }
};
```

### Adding a branch to `generateRaceFunction`

Second, we add a branch to `generateRaceFunction` that recognizes a call to `pthread_create`, constructs the new impl class, and adds the constructed object to the list of instructions.

```
if (isPthreadCreate(funcName)) {
    instructions.push_back(std::make_shared<PthreadCreateInfo>(callInst));
```

# Testing

Anytime anything new is added, you should add a new test case where appropriate.

## Writing Tests

Tests are written using Catch2.

All tests and test related data are stored under the `tests/` folder.

All test files are named like `<topic>.test.cpp` where topic is the thing being tested.

The tests themselves are then split into categories by subfolder. There are two main categories: unit and integration. The data folder contains input files that are consued by some of the tests.

Unit tests cover the functionality of a specific component, such as PointerAnalysis or Trace construction. Because unit tests correspond directly to components in the code, the structure of the unit test folder closely matches the structure of the src folder.

Integration tests are testing the tool as a whole. Most of the integration tests read in some benchmark file, generate a race report, and then check that the race report matches what is expected.

If you need to read some data from a file ina  test, assume the working directory to be `tests/data`. This is the working directory used when CMake runs the test binary.


## Running Tests

The easiest way to run the tests is to run `ctest` in the build directory after building the project.

The test binary is `build/bin/tester`. If running the binary directly, the working directory should be set to `tests/data` so that test can find their input files.

This configuration has been set up already and can be done automatically by running `ctest` directly.




