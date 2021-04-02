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

Until our first release, the easiest way to run the tool is through the `coderrect/openrace` docker image:

```
> docker pull coderrect/openrace
> docker run -i --rm coderrect/openrace openrace < simplepthread.ll
==== Races ====
pthreadsimple.c:8:9 pthreadsimple.c:8:9
          store i32 %inc, i32* @global, align 4, !dbg !53
          %0 = load i32, i32* @global, align 4, !dbg !53
pthreadsimple.c:8:9 pthreadsimple.c:8:9
          store i32 %inc, i32* @global, align 4, !dbg !53
          store i32 %inc, i32* @global, align 4, !dbg !53
Total Races Detected: 2
```

The tool takes an LLVM IR file as input. The IR must be generated using clang 10.0.1.

To generate LLVM IR for a single file, run

```
> clang -S -emit-llvm -g file.cpp
```

Something like [WLLVM](https://github.com/travitch/whole-program-llvm) can be used to produce an [LLVM IR](https://llvm.org/docs/LangRef.html#abstract) file for a project with multiple files. 

Generating LLVM IR for large projects is outside the scope of this tool (for now).

# End-to-End Example

```
// pthread-simple.c
#include <pthread.h>

int global;
pthread_mutex_t mutex;
int global_locked;

void *foo(void *a) {
  global++;
  pthread_mutex_lock(&mutex);
  global_locked++;
  pthread_mutex_unlock(&mutex);
  return 0;
}

int main() {
  pthread_t t1, t2;
  pthread_mutex_t mutex;

  pthread_create(&t1, 0, foo, 0);
  pthread_create(&t2, 0, foo, 0);
  pthread_join(t1, 0);
  pthread_join(t2, 0);
}
```
The OpenRace tool takes LLVM IR as input. Generate the LLVM IR for pthread-simple.c with the following command.

**Note**: Make sure `clang --version` shows clang 10.0.1

```
> clang -S -emit-llvm -g pthread-simple.c
> ls
pthread-simple.c pthread-simple.ll
```

OpenRace can be run either by building the tool, or using our pre-built docker image.

```
> docker pull coderrect/openrace
> docker run -i --rm coderrect/openrace openrace < pthread-simple.ll
==== Races ====
pthreadsimple.c:8:9 pthreadsimple.c:8:9
          store i32 %inc, i32* @global, align 4, !dbg !53
          %0 = load i32, i32* @global, align 4, !dbg !53
pthreadsimple.c:8:9 pthreadsimple.c:8:9
          store i32 %inc, i32* @global, align 4, !dbg !53
          store i32 %inc, i32* @global, align 4, !dbg !53
Total Races Detected: 2
```

# Benefits of Static Analysis

OpenRace is a static analysis tool for detecting data races while the majority of the alternative data race detection tools are based on dynamic analysis.

Dynamic tools have a low rate of false positives, but are unlikely to find all of the real races in a program. Static analysis tools have a higher rate of false positives, but are more likely to find more of the real races.

Dynamic analysis works by observing execution. This means that a dynamic tool can only analyze a single code path per run. Imagine there is a bug in the code below

```cpp
if (input < 1000) {
    // do normal stuff
} else {
    // uh oh a bug!
}
```

The only way a dynamic tool can catch this bug is if the program is tested with an input of size >= 1000 and the buggy branch is executed.

This is particularly problematic for serious bugs, as they often occur in corner cases that may not have great test coverage. For dynamic analysis to catch all bugs, the program needs to be tested with inputs that cover all possible paths, which is not reasonable in most cases.

Static analysis looks at the source code directly and can reason about all possible code paths without the need to execute the program, and can generally do so much faster than running a dynamic tool multiple times for increased coverage.

# Building

Using [conan](https://conan.io) to manage dependencies. Instructions to install conan can be found [here](https://conan.io/downloads.html).

To build, run the following:

```
mkdir build && cd build
conan install ..
cmake -DLLVM_DIR=$LLVM_DIR ..
make -j
```

Feel free to adjust cmake options as you see fit.

The only required option is `LLVM_DIR` which should point to the directory containing `LLVMConfig.cmake` for LLVM version 10.0.1. LLVM 10.0.1 can be acquired either by downloading a prebuilt version, or building from source.

To downloadLLVM 10.0.1, go to LLVM's [download page](https://releases.llvm.org/download.html) and select the correct version for your system. After downloading, `LLVMConfig.cmake` will be located at `<INSTALL_PREFIX>/lib/cmake/llvm/LLVMConfig.cmake` where `<INSTALL_PREFIX>` is the install prefix of the downloaded version of LLVM. 

To build LLVM 10.0.1 from source check our [documentation page](https://coderrect-inc.github.io/OpenRace/#building-the-project). After building LLVM 10.0.1, `LLVMConfig.cmake` will be located at `<LLVM_BUILD_ROOT>/lib/cmake/llvm/LLVMConfig.cmake` where `<LLVM_BUILD_ROOT>` is the root of the LLVM build tree. For more information, optoins, and detail on building LLVM, see their [documentation](https://www.llvm.org/docs/CMake.html).

# Additional Information

- [OpenRace Documentation](https://coderrect-inc.github.io/OpenRace/)
- [Contribution Guide](https://github.com/coderrect-inc/OpenRace/blob/develop/CONTRIBUTING.md)
- [Coderrect's Homepage](https://coderrect.com/)
- [Closed Source Coderrect Scanner](https://coderrect.com/overview/)
