# Examples

To try out the examples quickly, start our docker image and just run make:

```
docker run -it --rm coderrect/openrace
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

For more details on running the tool, see our main [README](https://github.com/coderrect-inc/OpenRace#readme).

This directory contains sample files to scan for races and a Makefile for building the samples and running our tool. 

The Makefile can be configured by editing the variables at the top of the file, but by default it assumes you have clang-10, clang++-10, and openrace installed and on your PATH.

Running `make` by default builds and runs a simple example.

Running `make simplethread.ll` will look for a file name `simplethread.c` or `simplethread.cpp` and create a `simplethread.ll` IR file.

Running `make simplethread` will automatically generate IR and run openrace on a file named `simplethread.c`.