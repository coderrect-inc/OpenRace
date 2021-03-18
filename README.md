<div align="center">
<img src="https://coderrect.com/wp-content/uploads/2018/12/Coderrect-Horizontal-Logo-Large-3.png" alt="Coderrect Logo" width="300"/>
</div>


# OpenRace

OpenRace is an in development C/C++ data race detection tool.

This project aims to have a clean and extensible design to facilitate community contributions.

OpenRace is an open source implementation of the [Coderrect Scanner][CS] which is a C/C++/Fortran data race detection tool. The open source tool is currently behind the original scanner in terms of feature support, but we are actively developing and expect OpenRace to eventually replace the closed source implementation of [Coderrect Scanner][CS].

[CS]: https://coderrect.com/overview/

[![build-and-test](https://github.com/coderrect-inc/OpenRace/actions/workflows/test.yaml/badge.svg?branch=develop)](https://github.com/coderrect-inc/OpenRace/actions/workflows/test.yaml)

# Running

Please note, the tool is still in the early stages of development and does not support many features yet.

First either download the tool from the GitHub releases page or build the latest version from source and run:

```
> openrace tests/data/integration/pthreadrace/pthreadsimple.ll
==== Races ====
pthreadsimple.c:8:9 pthreadsimple.c:8:9
Total Races Detected: 1
```

The tool takes an LLVM IR file as input. The IR must be generated using clang 10.0.1.

To generate LLVM IR for a single file, run

```
> clang -S -emit-llvm -g file.cpp
```

Something like [WLLVM](https://github.com/travitch/whole-program-llvm) can be used to produce a LLVM IR file for a project with multiple files. 

Generating LLVM IR for large projects is outside the scope if this tool (for now). 

# Building

Using conan to manage dependencies. Instructions to install conan can be found [here](https://conan.io/downloads.html).

To build, run the following:

```
mkdir build && cd build
conan install ..
cmake -DLLVM_DIR=$LLVM_DIR ..
make -j
```

Feel free to adjust cmake options as you see fit.

The only required option is `LLVM_DIR` which should point to the directory containing `LLVMConfig.cmake` for LLVM version 10.0.0 .

# Developing
- Project layout based on [Pitchfork Layout](https://api.csswg.org/bikeshed/?force=1&url=https://raw.githubusercontent.com/vector-of-bool/pitchfork/develop/data/spec.bs)

- CMake guidelines based off of [Effective Modern CMake](https://gist.github.com/mbinna/c61dbb39bca0e4fb7d1f73b0d66a4fd1)

- Conan usage based on Conan's [CMake Docs](https://docs.conan.io/en/latest/integrations/build_system/cmake/cmake_generator.html)

- [Documentation](https://coderrect-inc.github.io/OpenRace/)
