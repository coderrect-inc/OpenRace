---
id: doc-openmp-support
title: OpenMP Support
---

## OpenMP Support Summary

Support for OpenMP features is being added and improved over time.

The table below gives a high level overview of the status on some key features, and detailed descriptions on partially and not supported features are given below.

|   Feature    | Support |  Feature | Support |
|--------------|---------|----------|---------|
| **omp for loops**|   full  | **threadprivate** |   full  |
| **barrier**      |   full  | **sections** |   full  |
| **master**       |   full  | **offloading** |   partial  |
| **single**       |   full  | **tasks** |   partial  |
| **reduction**    |   full  | **simd** |   none  |
| **atomic**       |   full  | **ordered**  |   none  |
| **critical**     |   full  | **depend** |   none  |


## Remaining OpenMP Features

These are features that are not fully supported in OpenRace.

### Offloaded OpenMP

OpenRace has partial support for offloaded OpenMP. Offloaded regions are treated mostly the same as regular OpenMP code, whith a few exceptions.

When offloaded to a GPU, some OpenMP synchronization features cannot prevent data races to shared memory. These synchronizations are ignored in offloaded regions. Otherwise, the analysis of offloaded regions is treated the same as normal OpenMP parallel regions.


### OpenMP tasks

Only the simplest use cases of task is supported so far. 
Task creation and task completion either through barriers or taskwait have been modeled.

Complex usage (e.g. using taskwait or barriers to synchronize groups of nested tasks) is not supported yet.

OpenMP tasks also include a number of related features like taskloops, taskgroup, task depend which have yet to be supported in OpenRace.

The tool may report false positives in cases where complex synchronizations with tasks are used, and false negatives when unsupported task related features are used.

### SIMD

The `simd` directive can be used on its own or in combination with some specific OpenMP features (e.g. `parallel for simd`, `taskloop simd`, and more).

Any usage of `simd` is not supported by OpenRace. Any races present in SIMD code will likely be missed.

### Ordered/Depend

The `depend` clause can be copmbined with various OpenMP features to describe a ordering between different tasks.

OpenRace has no support for `depend` and the described orderings will not be modeled by the tool.

This will likely lead to false positives in code that uses the `depend` clause.

### Array Index Analysis

Array Index Analysis is used to determine if any array accesses within a parallel loop may overlap

OpenRace currently uses an intra-procedural array index analysis based on LLVM's Scalar Evolution.

The main limitation of the current implementation is the inability to detect races across function calls.

The classic example of a race in a parallel loop is shown below.

```c
#define N = 100;
int A[N];

#pragma omp parallel for
for (int i = 0; i < N; i++) {
  A[i] = A[i+1];
}
```

The array index analysis used by OpenRace can detect this race, as all array accesses are made directly inside the parallel loop.

However, if same code is rewritten such that the accesses happen within a function call, OpenRace's array index analysis is unable to detect the race.

```c
int read (int *array, int idx)          { return array[idx]; }
int write(int *array, int idx, int val) { return array[idx] = val; }

// ...

#pragma omp parallel for
for (int i = 0; i < N: i++) {
  int val = read(A, i+1);
  write(A, i, val);
}
```
