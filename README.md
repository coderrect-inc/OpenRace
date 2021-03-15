# OpenRace

[![build-and-test](https://github.com/coderrect-inc/OpenRace/actions/workflows/test.yaml/badge.svg?branch=develop)](https://github.com/coderrect-inc/OpenRace/actions/workflows/test.yaml)

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
