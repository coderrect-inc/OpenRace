---
id: doc-get-started
title: Get Started with Coderrect OpenRace
slug: /
---

## Building the Project
Currently, the only way to get started with Coderrect OpenRace is building the project.

Coderrect requires **LLVM 10.0.x** to build. You can either installed a pre-built LLVM10 or build it on your own.

First make sure you have `git`, `cmake` and `make` installed on your local environment.

The script below builds and installs LLVM 10.0.1:

```bash
git clone --depth 1 -b llvmorg-10.0.1 https://github.com/llvm/llvm-project.git
cd llvm-project && mkdir build && cd build
cmake \
    -DLLVM_TARGETS_TO_BUILD="X86" \
    -DCMAKE_CXX_STANDARD="17" \
    -DLLVM_INCLUDE_EXAMPLES=OFF \
    -DLLVM_INCLUDE_TESTS=OFF \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_APPEND_VC_REV=OFF \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DCMAKE_BUILD_TYPE=Release \
    ../llvm
make -j
```

In order to build Coderrect OpenRace, we need to specify the directory `LLVM_DIR` containing `LLVMConfig.cmake`, which should be `/path/to/llvm-project/build/lib/cmake/llvm/`.

Now for building Coderrect OpenRace, you need to first install `conan` as package manager.

Coderrect OpenRace shoule be able to build with any C++ compiler with C++17 support.
We recommend using a compiler same or newer than **gcc9/clang10**.
The script below builds Coderrect OpenRace:

```bash
git clone https://github.com/coderrect-inc/OpenRace.git
mkdir build && cd build
conan install ..
cmake -DLLVM_DIR=/path/to/llvm-project/build/lib/cmake/llvm/ ..
make -j
```

Now you have successfully built Coderrect OpenRace! Run our tester to check out its current status:
```
./bin/tester
```
