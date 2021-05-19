---
id: doc-setup-dev-env
title: Setting Up Dev Environment
---

## Setting Up Dependencies

It is **highly** recommended that the development be done on Linux.

We test all of our builds using Ubuntu 20.04 and most of our core team is using Manjaro, though any recent linux based OS should work.

This guide will give instructions based on Ubuntu 20.04.

To follow this guide on setting up a dev environment you will need:
 - A modern C++ compiler (gcc/clang)
 - [Ninja Build](https://ninja-build.org/)
 - [Conan](https://conan.io/downloads.html)
 - LLVM 10.0.X

### Install Compiler

Most systems should already have gcc installed, but just in case, these commands can be used to install gcc. 

```shell
# Update packages 
apt-get update
# Install gcc and ninja
apt-get install -y build-essential ninja-build
# Check that gcc is installed
gcc --version
```

### Install Conan

Conan is used to automatically manage OpenRace's dependencies (except for LLVM).

If you already have python and pip installed, the easiest way to install Conan is by running either of the following:

```shell
# Python2
pip install conan
# Python3
pip3 install conan
```

On Ubuntu, the binary can also be directly downloaded and installed.
``` shell
# Download
curl -L -O https://github.com/conan-io/conan/releases/latest/download/conan-ubuntu-64.deb
# Install
dpkg -i conan-ubuntu-64.deb 
```

For more information or examples on installing [Conan](https://conan.io/downloads.html), see their [installation instructions](https://docs.conan.io/en/latest/installation.html).


### Install LLVM 10.0.x

There are two ways to get LLVM:
 - From package manager (Ubuntu 20.04 only)
 - Build from source

The easy/quick way is to install from package manager, though it may not work on all systems. In most cases LLVM will likely need to be built from source.

In either case, LLVM will include a file named `LLVMConfig.cmake`. You will need to save the directory containing this file in order to build OpenRace.

In this guide we save it into the `LLVM_DIR` environment variable.

#### Package Manager

```shell
# Install LLVM 10
apt-get update
apt install -y llvm-10
# Save location of LLVMConfig.cmake
export LLVM_DIR=/usr/lib/llvm-10/lib/cmake/llvm/
```

#### From Source

```shell
# Get the source code
git clone --depth 1 -b llvmorg-10.0.1 https://github.com/llvm/llvm-project.git
mkdir -p llvm-project/build && cd llvm-project/build
# Configure the build with CMake
cmake
    -DLLVM_TARGETS_TO_BUILD="X86" \
    -DCMAKE_CXX_STANDARD="17" \
    -DLLVM_INCLUDE_EXAMPLES=OFF \
    -DLLVM_INCLUDE_TESTS=OFF \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_APPEND_VC_REV=OFF \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -G Ninja \
    ../llvm
# Build and Install
cmake --build . --parallel
cmake --build . --target install
# Save location of LLVMConfig.cmake
export LLVM_DIR=$(pwd)/
```

There are a lot of CMake options to customize the LLVM build. See [LLVM's page on CMake](https://www.llvm.org/docs/CMake.html) for more options.

The important ones used above are:
- `LLVM_TARGETS_TO_BUILD="X86"`  
We only build for the X86 platform to save time
- `CMAKE_CXX_STANDARD="17"`  
OpenRace is also using C++17
- `CMAKE_BUILD_TYPE=Debug`  
Builds LLVM in Debug mode to make debugging easier
- `-G Ninja`  
Building using Ninja Build

The rest are just some options set to save time/space when building.


## Building OpenRace

The recommended method of building the project for development is

```shell
# Get the source code
git clone https://github.com/coderrect-inc/OpenRace.git
mkdir build && cd build
# Let conan build dependencies
conan install ..
# Configure build with cmake
cmake \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_DIR=$LLVM_DIR \
    -G Ninja \
    ..
# Build OpenRace
cmake --build . --parallel
# Check that OpenRace was built
./bin/openrace --help
```

The cmake options do the following:
 - `CMAKE_EXPORT_COMPILE_COMMANDS=ON`  
 produces a `compile_commands.json` file in the build directory. Most IDEs can be set up to use this file for neat IDE features.
 - `CMAKE_BUILD_TYPE=Debug`  
 Builds the project in debug mode. This makes it is easier to debug if/when issues occur.
 - `LLVM_DIR=$LLVM_DIR`  
 Should point to a directory containing `LLVMConfig.cmake`. See the "Install LLVM 10.0.X" section above.

## Running Tests

From the build directory, run `ctest`. This should automatically handle running tests from the correct directory. 

```shell
OpenRace/build> ctest
...
100% tests passed, 0 tests failed out of 25
Total Test time (real) =  29.24 sec
```

Tests can also be executed manually using the`bin/tester` executable. 

Many of the tests read IR files and are expected to be run from the `/tests/data` directory. Keep this in mind if running tests manually. 

```shell
OpenRace/tests/data> ../../build/bin/tester
...
100% tests passed, 0 tests failed out of 25
Total Test time (real) =  29.24 sec
```

We use [Catch2](https://github.com/catchorg/Catch2) for testing. See their documentation for more options on running their tests.

It is expected that all tests will always pass in the main branch of the project.

<!-- ## Adding Tests

**NOTE** this probably belongs in a different section about doing development.

Tests are split into two types, unit and integration.

Unit tests are for testing individual components. For example, there are tests for each type of llvm instruction parse by the `Builder` class in the `IR` directory. These tests are mostly located under `tests/unit/IR`.

Integrations tests check the end-to-end functionality. These tests read in some program's IR, run race detection, and check that the resulting report is correct.

Any time code is added, tests should also likely be added to cover the new code. In most cases it is likely that both unit and integration tests should be added.

For example, when adding support for `pthread_create`, a unit test should be added to check that the llvm IR call to `pthread_create` is correctly recognized, and an integration test for a simple program using `pthread_create` should be added. -->


## Using clang-format

All code should be formatted according to the `.clang-format` file at the project root.

Coderrect OpenRace adopts [Google's C++ Style Guide](https://google.github.io/styleguide/cppguide.html) with some small customizations.

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
