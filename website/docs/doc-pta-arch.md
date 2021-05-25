---
id: doc-pta-arch
title: Pointer Analysis Architecture
---

## Overview

The Pointer Analysis framework (under `src/PointerAnalysis`) in OpenRace 
computes a set of object (*points-to set*) that can be pointed by a pointer
in the program during the runtime.
It implements a context-sensitive and field-sensitive inclusion-based (Andersen)
Pointer Analysis algorithm.  

## High-Level Architecture
There are three major components in the pointer analysis framework and they 
interact with each other to compute the final result.

![PTA-arch](/img/PTA-Overview.svg)

These components communicated with each other through a set of pre-defined APIs in 
`MemModelTrait` as well as in `LangModelTrait`.
At high level, 
**Language Model** abstracts the target program into the *constraint graph*, 
the pointer analysis framework offers the flexibility for user-defined language model to 
intercept any function call in the program and handle it differently; 
**Memory Model** handles the creation of the static objects, different memory models handles
object creation differently. E.g., Field-Insensitive Memory Model (`FIMemModel.h`) simply
creates one object node for the object while Field-Sensitive Memory Model (`FSMemModel.h`)
creates one object node for each field of the object.
Finally, **Solver** takes the constraint graph as the input and computes the final result.

### Detailed Implementation

1. **Language Model**: Language Model transfers the program into the constraint graph/pointer assignment graph.  
It creates pointer nodes (corresponding pointers in the program) and links nodes with different kinds of edges (corresponding to different operations performed in the program). There are five different kinds of edges in the constraint graph.

```cpp
enum class Constraints : std::uint8_t {
    load, store, copy, addr_of, offset,
};
```
+ load edge: `if ptr1 = *ptr2;, then ptr2 --load--> ptr1` (ptr2 is loaded into ptr1).
+ store edge: `if *ptr1 = ptr2;, then ptr2 --store--> ptr1` (ptr2 is stored into ptr1).
+ copy edge: `if ptr1 = ptr2;, then ptr2 --copy--> ptr1` (ptr2 is copied to ptr1).
+ addr_of edge: `if ptr1 = &ptr2; , then ptr2--addr_of--> ptr1` (ptr1 takes the address of ptr2)
+ offset edge: `if ptr1 = ptr2->f;, then ptr2--offset-->ptr1` (ptr1 add a offset to ptr2).

2. **Memory Model**: Memory Model models the objects allocated in the program. 
For example, it computes the size of each object, the memory layout of each object and it creates object nodes in the Constraint Graph.  
Currently, we have two different memory models: 

+ *Field-insensitive memory model*: Field-insensitive memory model is a simple implementation of the memory model. It is relatively fast but also inaccurate. The field-insensitive memory model does not distinguish different fields of the object. For the following code snippet:

```cpp
struct A {
  int a,
  int b,
} obj;

int *ptr1 = &obj.a;
int *ptr2 = &obj.b;

// ptr1 and ptr2 are considered as alias when using field-insensitive memory
// model, even though they point to different fields of the object.
ALIAS(ptr1, ptr2) == true 
```

+ *Field-sensitive memory model*: Field-sensitive memory model (still in process) overcomes the limitations of the field-insensitive memory model. It distinguishes different fields of the same object so that the ptr1 and ptr2 in the above example are not considered as aliases. It computes the memory layout (the offset of each field)  and provides APIs to index into the complicated object to access the right fields.

3. **Andersen Solver**: After the language model builds the constraint graph and memory model models the object, the pointer analysis uses the solver to computes the points-to set of the pointer. The detailed description of the algorithm can be found via http://compilers.cs.ucla.edu/fernando/publications/papers/CGO09.pdf.


### Field-Sensitivity
Since the implementation of Field Sensitivity is complex, We provide some additional information in the documentation.

Field-sensitive pointer analysis is achieved by handling the offset constraints in the above table, at a high level, 
the constraint `v <- &s.field` is satisfied by first index the object `s.field` and then add the address of `s.field` to the `pts(v)`.
`SolverBase.h: processOffset` implements the functionality.

For efficiency, the processOffset function maintains a cache (handledGEPMap) for GEP instructions to only handled diffed object indexing that haven’t been handled before.  
The diffed object indexing is implementation as below:

```cpp
PtsTy &handled = handledGEPMap.try_emplace(ptrNode).first->second;
const PtsTy &curPts = PT::getPointsTo(src->getNodeID());

PtsTy newGEPs;
newGEPs.intersectWithComplement(curPts, handled); // set intersect with complement
```
After the diffed points-to set is computed,  it iterate over the set using the following loop.

```cpp
 for (auto objNode : nodeVec) {
      // this might create new object, thus modify the points-to set
      auto *fieldObj = llvm::cast_or_null<ObjNodeTy>(LMT::indexObject(this->getLangModel(), objNode, gep));
      if (fieldObj == nullptr) {
           continue;
      }

      if (!PT::has(ptrNode->getNodeID(), fieldObj->getObjectID())) {
           this->consGraph->addConstraints(fieldObj, ptrNode, Constraints::addr_of);
           callBack(fieldObj, ptrNode);
           changed = true;
      }
  }
```

The fieldObject is computed by statement `LMT::indexObject(this->getLangModel(), objNode, gep)` which index the object.

The indexObject method is implemented differently when using different memory model, in FSMemModel, the code is available in `FSMemModel::indexObject()`
We implemented a different scheme than the traditional field-sensitive pointer analysis for C/C++ which uses logic field index to index the object.
Our implementation instead uses physical layout offset to index objects.

At a high level, FSMemModel computes a MemLayout for different types. 
For example, suppose `sizeof(double *) == 4`, the memory layout for the following structure is a bitvector and is computed as below:

```cpp
struct inner {
    double *b;
    double *c;
};
struct outter {
    struct inner array_inner[10];
    double*  d;
};
```

```
// memory layout
|1000 1000| 1000
|--array--| // mark the first 8 bytes (corresponding to array_inner) as array
```

`FSMemModel::indexObject()` method indices the memory layout to test whether the bit is set in the memory layout and return the corresponding object at the offset as following

```cpp
auto offset = llvm::APInt(DL.getIndexTypeSizeInBits(gep->getType()), 0);
gep->accumulateConstantOffset(DL, offset);

auto result = obj->memBlock->getObjectAt(obj->pOffset + offset.getSExtValue());
```
It first use accumulate the offset of the gep by `gep->accumulateConstantOffset(DL, offset)` and then it index the object
using auto `result = obj->memBlock->getObjectAt(obj->pOffset + offset.getSExtValue())`. 
If the supplied physical offset is invalid (can not be indexed), it returns `nullptr`.
 