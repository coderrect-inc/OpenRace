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

Until our first release, the easiest way to run the tool is through the `coderrect/openrace` docker image.

```shell
> docker pull coderrect/openrace
> docker run -it --rm coderrect/openrace
# Now we are inside the docker image
/OpenRace/examples# make
clang-10 -S -emit-llvm -g -fopenmp simplethread.c
openrace simplethread.ll
...
==== Races ====
simplethread.c:8:9 simplethread.c:8:9
          store i32 %inc, i32* @global, align 4, !dbg !53
          %0 = load i32, i32* @global, align 4, !dbg !53
simplethread.c:8:9 simplethread.c:8:9
          store i32 %inc, i32* @global, align 4, !dbg !53
          store i32 %inc, i32* @global, align 4, !dbg !53
Total Races Detected: 2
```

The examples directory contains a few sample files and a Makefile to make running the examples easy.

To run the OpenRace tool on the `simplethread.c` example, just run `make simplethread`. This works for any of the samples in the examples directory.

The `coderrect/openrace` docker image contains all the required tools to build and run the provided examples.

# End-to-End Example

This section steps through the process of building an example source file and scanning it with the OpenRace tool.

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

**Note**: Make sure `clang --version` shows clang 10.0.x

```
> clang -S -emit-llvm -g pthread-simple.c
> ls
pthread-simple.c pthread-simple.ll
```

Then the .ll file can be passed as input directly to the OpenRace tool.

```
> openrace pthread-simple.ll
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
# Create and move to build directory
mkdir build && cd build
# Use conan to install dependencies
conan install ..
# Set build options
cmake -DLLVM_DIR=$LLVM_DIR ..
# Build the project in parallel
cmake --build . --parallel
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
