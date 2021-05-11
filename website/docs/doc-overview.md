---
id: doc-overview
title: Design Overview
---

The description of this program is split into two parts.

The [Flow of Execution](#flow-of-execution) describes how the input is processed step by step to produce an output, following the logical flow of the program.


The [Project Layout](#project-layout) describes the project by its physical layout, through short summaries for each subdirectory in the `src` folder. 

## Flow of Execution

The logical entry point for the race detection functionality is in `src/RaceDetect/RaceDetect.h`. This function takes an LLVM IR module as input, and produces a race report as output.

The intermediate steps to produce the race report are:
1. Construct a static program trace
    - Preprocessing
    - Pointer Analysis
    - Race IR
2. Run analyses
3. Combine analyses to do race detection
4. Generate report

### Program Trace

First a `ProgramTrace` is constructed from the input IR. This trace represents a simulated execution of the program.

During the construction of the program trace, a number of things happen.
 - [PreProcessing](#preprocessing) transformations are run to make analyses easier
 - a whole program [PointerAnalysis](#pointeranalysis) is run on the llvm module
 - the LLVM IR is converted to a higher level [IR](#ir) for easier analysis

See the [Trace](#trace) section for more detail on how the `ProgramTrace` is built.

### Analysis

Next a number of analyses are run. Each takes the program trace as input and can then be queried for some property in the program trace.

The core analyses are:
- **SharedMemory** analysis finds events that could potentially access the same location in memory.
- **HappensBefore** analysis determines if two events could potentially happen in parallel.
- **LockSet** tracks what locks are held by an event during execution, and can be used to find if two events share a common lock.

See the [Analysis](#analysis) section for more details.

 ### Race Detection

 After constructing the program trace and analyses, the `detectRaces` function combines everything to detect any races.

 A simple race detection algorithm could combine the core analyses like so:

```cpp
ProgramTrace program;

SharedMemory sharedmem(program);
HappensBeforeGraph happensbefore(program);
LockSet lockset(program);

for (auto sharedAccessPair : sharedmem) {
  if (happensbefore.areParallel(sharedAccessPair) 
    && !lockset.shareLock(sharedAccessPair)) {
      // report race!
  }
}
```

See the [RaceDetect](#racedetect) section.

### Generate Report

Finally, a report needs to be generated so that any detected races can be displayed to the user or reported to some tool.

See the [Reporter](#reporter) section.

## Project Layout

This section describes code by each subdirectory in `src`. To get an idea of the flow of execution through the program, see the Logical Overview above.

The most important directories are:
 - [**`IR`**](#ir) for converting the input into a format we can analyze
 - [**`PointerAnalysis`**](#pointeranalysis) for our custom pointer analysis implementation
 - [**`LanguageModel`**](#languagemodel) for how language features are recognized
 - [**`Trace`**](#trace) for generating a program Trace
 - [**`Analysis`**](#analysis) for our different analyses

 The top level `src` directory also contains the main race detection logic in `RaceDetect.h/cpp`, and `main.cpp` which is the entry point to the `racedetect` executable.

### Analysis

This directory contains all of our different analyses. Each of them takes a program trace as input and then allows for some specific property of the program trace to be queried.

Each of the analyses is constructed using the `ProgramTrace` to be analyzed, and then queried for specific data.

```cpp
ProgramTrace  program;
...
// Construct from program trace
HappensBeforeGraph hpg(program);
...
// Query to see if the events can be run in parallel
hpg.areParallel(event1, event2);
```

### Demangler

This directory contains some common code for demangling C++ function names.

### IR

This folder contains interfaces describing logical operations (`IR.h`), implementations of those interfaces (`IRImpls.h`), and a function that takes an LLVM Function and constructs a list of logical operations (`Builder.h`).

In the context of race detection, most of the LLVM IR instructions are not needed.

Given an LLVM IR function that looks like this

```
%.global_tid..addr = alloca i32*
%.bound_tid..addr = alloca i32*
%count.addr = alloca i32*
store i32* %.global_tid., i32** %.global_tid..addr
call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !23, metadata !DIExpression())
store i32* %.bound_tid., i32** %.bound_tid..addr
call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !25, metadata !DIExpression())
store i32* %count, i32** %count.addr
call void @llvm.dbg.declare(metadata i32** %count.addr, metadata !26, metadata !DIExpression())
%0 = load i32*, i32** %count.addr
%1 = load i32, i32* %0, align 4
%inc = add nsw i32 %1, 1
store i32 %inc, i32* %0, align 4
ret void
```

Race detection only really needs to know the following

```
write i32** %.global_tid..addr
write i32** %.bound_tid..addr
write i32** %count.addr
read i32** %count.addr
read %0
write %0
```

So the code in the IR directory focuses on extracting only the LLVM instructions needed for race detection, and wrapping them in a common set of interfaces (read, write, fork, join) that can be consumed more easily by later analyses.

The logical operation interfaces are wrappers around LLVM Instructions, and return values in terms of LLVM IR. Logical operations will later be converted to program events, which answer questions in terms of static program execution.

As an example, in the context of race detection the only information we really need to know about a read operation, is what value is being read.

So, the interface for a logical read operation looks something like the following.

```cpp
class Read {
public:
    virtual const llvm::Inst* getInst() const =  0;
    virtual const llvm::Value *getReadValue() const = 0;
};
```

Many instructions can act as logical reads. A vector access, some external functions call, or just the LLVM IR load instruction.

Now to treat different types of llvm instructions as reads, we just need to define a derived class implementing the read interface.

```cpp
class Load : public Read {
    const LoadInst *load;
public:
    const llvm::LoadInst* getInst() const override { return load; }
    const llvm::Value *getReadValue() const override { return load->getPointerOperand(); }
};

class MemCpyRead : public Read {
    const CallBase *inst;
public:
    const llvm::LoaCallBasedInst* getInst() const override { return inst; }

    // Assuming 3rd operand is the value being read. This is a fake example
    const llvm::Value *getReadValue() const override { return load->getOperand(3); }
};
```

Lastly, the Builder file contains functions to recognize and construct these concrete implementations from LLVM IR.

There is a loop that looks something like

```cpp
// Note: not real code
llvm::Function input;
LogicalOperations output;

for (auto instruction : input.instruction()) {
   if (isLoad(instruction)) {
       auto read = Load(instruction);
       output.push_back(read)
   }
   else if (isMemCpy(instruction)) {
       auto read = MemCpyRead(instruction);
       output.push_back(read)
   }
   ...
}
```

Each branch in the loop call a "recognizer" function defined in the `LanguageModel` directory.

When a match is found, the corresponding concrete impl is constructed and added to the list of logical operations.

### LanguageModel

The LanguageModel directory contains code related to recognizing certain language or framework features in LLVM IR.

Most of the files in this directory recognize specific API calls. For example, pthread.h contains a list of "recognizers".

```cpp
// pthread.h
...
bool isPthreadCreate(llvm::StringRef name);
bool isPthreadJoin(llvm::StringRef name);
...
```

These recognizers are used to determine if the function being called is a certain API call (e..g. pthread create or join). The majority of the code in LanguageModel are recognizers like this for various libraries or frameworks.

The only exceptions are the `RaceModel.*` files.

#### RaceModel

RaceModel tells PointerAnalysis how to interpret certain function calls.

Given this example

```cpp
void *entry(void *arg) {...}
...
pthread_create(t, NULL, entry, &val);
```

Pointer analysis needs to know that the call to pthread_create will cause the `entry` function to be executed, and that the `arg` passed to the entry function points to the memory location of `val`.

The RaceModel class is used to extend PointerAnalysis with the information necessary to build a correct call graph and link function arguments.

The two functions that control this are:
 - **`interceptFunction`** which decides how each function is expanded in the call graph
 - **`interceptCallSite`** which links the pointer from the call site to the called function

As any example, to tell Pointer Analysis that a call to `pthread_create(t, NULL, entry, &val)` should result in the `entry` function being visited next in the call graph, `interceptFunction` can be modified to include the following code.

```cpp
InterceptResult RaceModel::interceptFunction(const ctx *callerCtx, const ctx *calleeCtx, const llvm::Function *F, const llvm::Instruction *callsite) {
  auto funcName = F->getName();
  ...
  if (PthreadModel::isPthreadCreate(funcName)) {
    race::PthreadCreateIR create(llvm::cast<CallBase>(callsite));
    auto callback = create.getThreadEntry()->stripPointerCasts();
    return {callback, InterceptResult::Option::EXPAND_BODY};
  }
  ...
```

To also link the pointer passed to the entry function (e.g. link`&val` to `void *arg`), the `interceptCallSite` can be updated accordingly.

```cpp
bool RaceModel::interceptCallSite(const CtxFunction<ctx> *caller, const CtxFunction<ctx> *callee, const llvm::Function *originalTarget, const llvm::Instruction *callsite) {
  ...
  auto const funcName = call->getCalledFunction()->getName();
  if (PthreadModel::isPthreadCreate(funcName)) {
    // pthread_create passes a single void* as 4th arg
    //  pthread_create(null, foo, null, &val)
    //  foo(void *arg)
    // link 4th arg of caller to 1st arg of callee
    PtrNode *formal = this->getPtrNode(callee->getContext(), &*callee->getFunction()->arg_begin());
    PtrNode *actual = this->getPtrNode(caller->getContext(), call->getArgOperand(3));
    this->consGraph->addConstraints(actual, formal, Constraints::copy);
    return true;
  }
  ...
```

### Logging

This directory contains the code used throughout the project for logging.

### PointerAnalysis

This documentation is still in progress.

### PreProcessing

This directory contains a number of passes and transformations that make the LLVM IR easier for our tool to analyze.

### Reporter

This directory contains the code responsible for collecting detected races and formatting them into some output.

Eventually this directory should contain logic for reporting races in a JSON format, but the reporter is still under development.

### Trace

Trace contains the logic for simulating execution and creating a static program trace.

The important code in this directory are `Event`, `ThreadTrace`, and `ProgramTrace`.

The `Event` contains a list of interfaces, similar to the `IR.h` file (see the [IR](#ir) section). Each Event interface wraps an IR type. Where IR interfaces return values in the context of LLVM IR, events return values in the context of the simulated execution.

As an example, look at the following interface for a read at IR and Event levels.

```cpp

class ReadIR {
public:
    virtual const llvm::Value *getReadValue() const = 0;
};

class ReadEvent {
public:
    virtual list<AbstractObj> *getReadMemory() const = 0;
};
```

The ReadIR interface returns the `llvm::Value` being accessed, but the Event interface returns a list of abstract locations in memory that could potentially be accessed.

This is the key difference between IR and Events. IR interfaces are just wrappers around LLVM IR instructions, but Events represent actual program events and their simulated execution.

Lastly, to construct a list of simulated events (e.g. a trace), a function in `ThreadTrace` takes an entry function as input, traverses the Race IR and builds the simulated trace for a given thread.

The `ProgramTrace` class is just a collection of thread traces representing all threads that ran during simulated program execution.
