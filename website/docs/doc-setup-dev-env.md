---
id: doc-setup-dev-env
title: Setting Up Dev Environment
---

## Setting Up Dependencies

It is **highly** recommended that the development be done on Linux.

We test all of our builds using Ubuntu 20.04, though any recent linux based OS should work.

This guide will give instructions based on Ubuntu 20.04.

To follow this guide on setting up a dev environment you will need:
 - A modern C++ compiler (gcc/clang)
 - [Ninja Build](https://ninja-build.org/)
 - [Conan](https://conan.io/downloads.html)
 - LLVM 10.0.1

### Install Compiler

Most systems should already have gcc installed, but just in case, these commands can be used to install gcc. 

```shell
# Update packages 
sudo apt update
# Install gcc and ninja
sudo apt install -y build-essential ninja-build
# Check that gcc is installed
gcc --version
```

### Install Conan

Conan is used to automatically manage OpenRace's dependencies (except for LLVM). Here are two ways to install Conan. 


The easiest way is through python and pip if you already have them installed:
```shell
# Python2
pip install conan
# Python3
pip3 install conan
```

Alternatively, you can also obtain the package binary and install Conan from there:
``` shell
# Download
curl -L -O https://github.com/conan-io/conan/releases/latest/download/conan-ubuntu-64.deb
# Install
dpkg -i conan-ubuntu-64.deb 
```

For more information or examples on installing [Conan](https://conan.io/downloads.html), see their [installation instructions](https://docs.conan.io/en/latest/installation.html).


### Install LLVM 10.0.1

LLVM will need to be built from source. 

```shell
# Get the source code
git clone --depth 1 -b llvmorg-10.0.1 https://github.com/llvm/llvm-project.git
mkdir -p llvm-project/build && cd llvm-project/build
# Configure the build with CMake
cmake \
    -DLLVM_TARGETS_TO_BUILD="X86" \
    -DCMAKE_CXX_STANDARD="17" \
    -DLLVM_INCLUDE_EXAMPLES=OFF \
    -DLLVM_INCLUDE_TESTS=OFF \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_APPEND_VC_REV=OFF \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=install \
    -G Ninja \
    ../llvm
# Build and Install
cmake --build . --parallel
cmake --build . --target install
# Save directory LLVM 10.0.1 was installed to
export LLVM_INSTALL=$(pwd)/install/
# if using a custom install prefix, set LLVM_INSTALL to ${prefix}/
```

There are a lot of CMake options to customize the LLVM build. See [LLVM's page on CMake](https://www.llvm.org/docs/CMake.html) for more options.

The important ones used above are:
- `LLVM_TARGETS_TO_BUILD="X86"`  
We only build for the X86 platform to save time
- `CMAKE_CXX_STANDARD="17"`  
OpenRace is also using C++17
- `CMAKE_BUILD_TYPE=Release`  
Builds LLVM in Release mode; use Debug instead to make debugging easier
- `-G Ninja`  
Building using Ninja Build

The rest are just some options set to save time/space when building.

The location LLVM 10.0.1 was installed to will be needed to build OpenRace.
In this guide we saved the install location to an environment variable named `LLVM_INSTALL`.

## Building OpenRace

As a backup, you may also build from the shell using the following:

```shell
# Get the source code
git clone https://github.com/coderrect-inc/OpenRace.git
mkdir OpenRace/build && cd OpenRace/build
# Configure build with cmake
cmake \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_INSTALL=$LLVM_INSTALL \
    -DENABLE_WARNING=ON \
    -G Ninja \
    ..
# Build OpenRace
cmake --build . --parallel
# Check that OpenRace was built
./bin/openrace --help
```

The cmake options do the following:
 - `CMAKE_EXPORT_COMPILE_COMMANDS=ON`  
 Produces a `compile_commands.json` file in the build directory. Most IDEs can be set up to use this file for neat IDE features.
 - `CMAKE_BUILD_TYPE=Debug`  
 Builds the project in debug mode. This makes it is easier to debug if/when issues occur.
 - `LLVM_INSTALL=$LLVM_INSTALL`  
 Should point to a directory that LLVM was installed to. See the "Install LLVM 10.0.1" section above.
 - `ENABLE_WARNING=ON`  
 Enable compiler warnings while building the project. The enabled warnings can be found [here](https://github.com/coderrect-inc/OpenRace/blob/b340620db611d606275abf9aed1904ce0c50b87a/cmake/CompilerWarnings.cmake).

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
