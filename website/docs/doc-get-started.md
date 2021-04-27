---
id: doc-get-started
title: Get Started with Coderrect OpenRace
slug: /
---

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

Something like [WLLVM](https://github.com/travitch/whole-program-llvm) can be used to produce an [LLVM IR](https://llvm.org/docs/LangRef.html#abstract) file for a project with multiple files. 

Generating LLVM IR for large projects is outside the scope of this tool (for now).


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