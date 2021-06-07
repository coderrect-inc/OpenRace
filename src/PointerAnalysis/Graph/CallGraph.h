/* Copyright 2021 Coderrect Inc. All Rights Reserved.
Licensed under the GNU Affero General Public License, version 3 or later (“AGPL”), as published by the Free Software
Foundation. You may not use this file except in compliance with the License. You may obtain a copy of the License at
https://www.gnu.org/licenses/agpl-3.0.en.html
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#pragma once

#include <llvm/ADT/GraphTraits.h>
#include <llvm/Support/DOTGraphTraits.h>

#include "PointerAnalysis/Graph/GraphBase/GraphBase.h"
#include "PointerAnalysis/Program/CtxFunction.h"
#include "PointerAnalysis/Util/Util.h"

namespace pta {

template <typename ctx>
class CtxModule;

enum class CallKind : uint8_t { Direct = 0, Indirect = 1 };

// caller --instruction--> callee
// should be cheap to copy
class CallEdge {
 private:
  const llvm::Instruction *callerSite;

 public:
  explicit CallEdge(const llvm::Instruction *callerSite) : callerSite(callerSite) {
    assert(llvm::isa<llvm::CallInst>(callerSite) || llvm::isa<llvm::InvokeInst>(callerSite));
  }

  [[nodiscard]] inline const llvm::Instruction *getCallInstruction() const { return callerSite; }

  inline bool operator<(const CallEdge &rhs) const { return this->getCallInstruction() < rhs.getCallInstruction(); }

  bool operator==(const CallEdge &rhs) const { return this->getCallInstruction() == rhs.getCallInstruction(); }
};

// forward declaration
template <typename ctx>
class CallGraph;

/// CRTP
template <typename ctx>
class CallGraphNode : public NodeBase<CallEdge, CallGraphNode<ctx>> {
 private:
  using super = NodeBase<CallEdge, CallGraphNode<ctx>>;

  const CallKind kind;
  union U {
    CtxFunction<ctx> fun;
    InDirectCallSite<ctx> funPtr;

    U(const ctx *C, const llvm::Function *F, const llvm::Instruction *I, CallGraphNode<ctx> *N) : fun(C, F, I, N) {}
    U(const ctx *C, const llvm::Instruction *I, const llvm::Value *V, CallGraphNode<ctx> *N) : funPtr(C, I, V, N) {}
    ~U(){};
  } target;

  // use with care!!!!
  CallGraphNode(const ctx *C, const llvm::Function *F, const llvm::Instruction *I, NodeID id)
      : super(id), kind(CallKind::Direct), target(C, F, I, this) {}

  CallGraphNode(const ctx *C, const llvm::Instruction *I, const llvm::Value *V, NodeID id)
      : super(id), kind(CallKind::Indirect), target(C, I, V, this) {
    // V is not neccessarily be the called value of I, as it can be intercepted!
  }

  CallGraphNode(const ctx *C, const llvm::Instruction *I, NodeID id)
      : super(id), target(C, I, nullptr, this), kind(CallKind::Indirect) {}

 public:
  ~CallGraphNode() {
    if (kind == CallKind::Indirect) {
      target.funPtr.~InDirectCallSite<ctx>();
    }
  }

  [[nodiscard]] inline bool isIndirectCall() const { return this->kind == CallKind::Indirect; }

  [[nodiscard]] inline const CtxFunction<ctx> *getTargetFun() const {
    assert(kind == CallKind::Direct);
    return &this->target.fun;
  }

  [[nodiscard]] inline const InDirectCallSite<ctx> *getTargetFunPtr() const {
    assert(kind == CallKind::Indirect);
    return &this->target.funPtr;
  }

  [[nodiscard]] inline InDirectCallSite<ctx> *getTargetFunPtr() {
    assert(kind == CallKind::Indirect);
    return &this->target.funPtr;
  }

  [[nodiscard]] inline const ctx *getContext() const {
    if (kind == CallKind::Direct) {
      return target.fun.getContext();
    } else {
      return target.funPtr.getContext();
    }
  }

  friend typename super::GraphTy;
  friend CallGraph<ctx>;
  friend GraphBase<CallGraphNode<ctx>, CallKind>;
};

template <typename ctx>
class CallGraph : public GraphBase<CallGraphNode<ctx>, CallEdge> {
 public:
  using NodeType = CallGraphNode<ctx>;

 private:
  // assumption, the CtxFunction passed is a newly created function
  inline NodeType *createCallNode(const ctx *C, const llvm::Function *F, const llvm::Instruction *I) {
    return this->template addNewNode<NodeType>(C, F, I);
  }

  // assumption, the CtxFunction passed is a newly created function
  inline NodeType *createIndCallNode(const ctx *C, const llvm::Value *V, const llvm::Instruction *I) {
    return this->template addNewNode<NodeType>(C, I, V);
  }

  // assumption, the CtxFunction passed is a newly created function
  inline NodeType *createIndCallNode(const ctx *C, const llvm::Instruction *I) {
    return this->template addNewNode<NodeType>(C, I);
  }

 public:
  CallGraph() = default;
  friend CtxModule<ctx>;
};

}  // namespace pta

namespace llvm {

template <typename ctx>
struct GraphTraits<pta::CallGraph<ctx>> : public GraphTraits<pta::GraphBase<pta::CallGraphNode<ctx>, pta::CallEdge>> {};

template <typename ctx>
struct GraphTraits<const pta::CallGraph<ctx>>
    : public GraphTraits<const pta::GraphBase<pta::CallGraphNode<ctx>, pta::CallEdge>> {};

template <typename ctx>
struct DOTGraphTraits<const pta::CallGraph<ctx>> : public DefaultDOTGraphTraits {
  explicit DOTGraphTraits(bool simple = false) : DefaultDOTGraphTraits(simple) {}

  static std::string getGraphName(const pta::CallGraph<ctx> &) { return "CallGraph"; }

  /// Return function name;
  static std::string getNodeLabel(const pta::CallGraphNode<ctx> *node, const pta::CallGraph<ctx> &graph) {
    std::string str;
    raw_string_ostream os(str);
    os << pta::CtxTrait<ctx>::toString(node->getContext()) << "\n";
    if (node->isIndirectCall()) {
      os << "ID : " << node->getNodeID() << ", ";
      os << "Indirect, resolved to ";
      auto &targets = node->getTargetFunPtr()->getResolvedNode();
      for (auto &target : targets) {
        os << target->getNodeID() << " ,";
      }
    } else {
      os << "ID : " << node->getNodeID() << ", ";
      pta::prettyFunctionPrinter(node->getTargetFun()->getFunction(), os);
      // os << node->getMethod().getFunction()->getName();
    }
    return os.str();
  }
};

}  // namespace llvm
