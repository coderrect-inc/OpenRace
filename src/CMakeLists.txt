set(pta-lib-sources
    PointerAnalysis/Context/Context.cpp
    PointerAnalysis/Model/MemModels.cpp
    PointerAnalysis/Solver/PointsToSet.cpp
    PointerAnalysis/Program/Program.cpp
    PointerAnalysis/Model/DefaultLangModel.cpp
    PointerAnalysis/Model/FieldSensitive/FSLayouts.cpp
    PointerAnalysis/Model/DefaultHeapModel.cpp
    PointerAnalysis/Model/CppMemModel/SpecialObject/Vector.cpp
    PointerAnalysis/Model/CppMemModel/SpecialObject/VTablePtr.cpp
    PointerAnalysis/CMDOptions.cpp
    PointerAnalysis/Model/CppMemModel/RewriteModeledAPIPass.cpp
    PointerAnalysis/Util/Util.cpp
    PointerAnalysis/Util/TypeMetaData.cpp
    
    PreProcessing/Passes/CanonicalizeGEPPass.cpp
    PreProcessing/Passes/InsertGlobalCtorCallPass.cpp
    PreProcessing/Passes/LoweringMemCpyPass.cpp
    PreProcessing/Passes/RemoveExceptionHandlerPass.cpp
    PreProcessing/Passes/DuplicateOpenMPForks.cpp
    PreProcessing/PreProcessing.cpp
    
    LanguageModel/RaceModel.cpp)

add_library(pta STATIC ${pta-lib-sources})
target_link_libraries(pta ${llvm_libs} pthread)
target_include_directories(pta PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(pta SYSTEM PUBLIC ${LLVM_INCLUDE_DIRS})
target_compile_definitions(pta PUBLIC ${LLVM_DEFINITIONS})
target_compile_options(pta PUBLIC -fno-rtti)
target_compile_features(pta PUBLIC cxx_std_17)


set(racedetect-lib-sources
    Analysis/HappensBeforeGraph.cpp
    Analysis/LockSet.cpp
    Analysis/SharedMemory.cpp
    IR/Builder.cpp
    IR/IR.cpp
    Trace/Event.cpp
    Trace/EventImpl.cpp
    Trace/ProgramTrace.cpp
    Trace/ThreadTrace.cpp
    Reporter/Reporter.cpp
    RaceDetect.cpp)
add_library(racedetect-lib STATIC ${racedetect-lib-sources})
target_link_libraries(racedetect-lib pta)
target_include_directories(racedetect-lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(racedetect main.cpp)
target_link_libraries(racedetect racedetect-lib ${llvm_libs})