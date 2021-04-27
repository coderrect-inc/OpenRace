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

See our guide on [setting up a development environment](https://coderrect-inc.github.io/OpenRace/doc-setup-dev-env) for OpenRace.

# Coderrect Scanner Reports

The goal of OpenRace is to eventually replace the closed source [Coderrect Scanner](https://coderrect.com/download/) in functionality.

For reference, links to automatically generated Coderrect Scanner reports are shown below.

Please note the reports:
 - are automatically generated
 - have not been reviewed by us
 - have not been reviewed by the project maintainers unless otherwise noted
 - may contain false positives
 - may miss real races
 - are intended only for evaluating the closed source scanner.

[Bitcoin](https://github.com/bitcoin/bitcoin/releases/tag/v0.21.0) ([v0.2.1](https://github.com/bitcoin/bitcoin/releases/tag/v0.21.0))

[Redis](http://cloud.coderrect.com/79449cbe5ed9498f89ee92fcf03ac135/redis-server/redis-server.html) ([6.2.2](https://github.com/redis/redis/releases/tag/6.2.2))

[CovidSim](http://cloud.coderrect.com/9e491bba57ba4c16acfa35c05d2485d7/CovidSim/CovidSim.html) ([v0.15.0](https://github.com/mrc-ide/covid-sim/releases/tag/v0.15.0))

[LevelDB](http://cloud.coderrect.com/107afdad94a6403e8091f4019bbf9fb5/db_test/db_test.html) ([1.23](https://github.com/google/leveldb/releases/tag/1.23))

See more Coderrect Scanner reports and confirmed bugs at [coderrect.com/openscan/](https://coderrect.com/openscan/)

# Additional Information

- [OpenRace Documentation](https://coderrect-inc.github.io/OpenRace/)
- [Contribution Guide](https://github.com/coderrect-inc/OpenRace/blob/develop/CONTRIBUTING.md)
- [Coderrect's Homepage](https://coderrect.com/)
- [Closed Source Coderrect Scanner](https://coderrect.com/overview/)
