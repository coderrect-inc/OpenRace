# Developers Guide

## Building

The recommended method of building the project for development is

```
mkdir build && cd build
conan install ..
cmake \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_DIR=$LLVM_DIR \
    ..
```

The cmake options do the following:
 - `CMAKE_EXPORT_COMPILE_COMMANDS=ON`  
 produces a `compile_commands.json` file in the build directory. Most IDEs can be set up to use this file for neat IDE features.
 - `CMAKE_BUILD_TYPE=Debug`  
 Builds the project in debug mode. This makes it is easier to debug if/when issues occur.
 - `LLVM_DIR=$LLVM_DIR`  
 Should point to a directory containing `LLVMConfig.cmake`. Make sure to use LLVM 10.0.0. You can either use a prebuilt version of LLVM, or build the correct version of LLVM directly.

## Running Tests

From the build directory, run `ctest`. This should automatically handle running tests from the correct directory. 

Tests can also be executed manually using the`bin/tester` executable. Many of the tests read IR files and expect to be run from the `/tests/data` directory. Keep this in mind if running tests manually. We use [Catch2](https://github.com/catchorg/Catch2) for testing. See their documentation for more options on running their tests.

It is expected that all tests will always pass in the main branch of the project.

## Adding Tests

Tests are split into two types, unit and integration.

Unit tests are for testing individual components. For example, there are tests for each type of llvm instruction parse by the `Builder` class in the `IR` directory. These tests are mostly located under `tests/unit/IR`.

Integrations tests check the end-to-end functionality. These tests read in some program's IR, run race detection, and check that the resulting report is correct.

Any time code is added, tests should also likely be added to cover the new code. In most cases is likely that both unit and integration tests should be added.

For example, when adding support for `pthread_create`, a unit test should be added to check that the llvm IR call to `pthread_create` is correctly recognized, and an integration test for a simple program using `pthread_create` should be added.


## Running clang-format

All code should be formatted according to the `.clang-format` file at the project root.

Most IDEs can be set to run clang-format automatically. Check the settings for your IDE on how to set this up.

Worst case, clang format can be run manually on an individual file

```
clang-format -i -style=file file.cpp
```

Or on the entire project directory (careful to run this from within this project's directory as it will recursively overwrite all files ending in .h or .cpp in this directory and all subdirectories).

```
cd OpenRace/
find . -iname *.h -o -iname *.cpp | xargs clang-format -i -style=file
```