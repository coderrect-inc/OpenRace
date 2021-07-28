set(pta-lib-sources
    PointerAnalysis/CMDOptions.cpp
    PointerAnalysis/Util/Util.cpp
    PointerAnalysis/Util/TypeMetaData.cpp
    PointerAnalysis/Program/CallSite.cpp
    PointerAnalysis/Solver/PointsToSet.cpp
    PreProcessing/PreProcessing.cpp
    PreProcessing/Passes/CanonicalizeGEPPass.cpp
    PreProcessing/Passes/InsertGlobalCtorCallPass.cpp
    PreProcessing/Passes/LoweringMemCpyPass.cpp
    PreProcessing/Passes/OMPConstantPropPass.cpp
    PreProcessing/Passes/RemoveExceptionHandlerPass.cpp
    PreProcessing/Passes/DuplicateOpenMPForks.cpp
    PointerAnalysis/Models/MemoryModel/Canonicalizer.cpp
    PointerAnalysis/Models/MemoryModel/DefaultHeapModel.cpp
    PointerAnalysis/Models/MemoryModel/FieldSensitive/Layout/Util.cpp
    PointerAnalysis/Models/MemoryModel/FieldSensitive/Layout/Layouts.cpp
    PointerAnalysis/Models/MemoryModel/CppMemModel/PreprocessingPasses/RewriteModeledAPIPass.cpp
    PointerAnalysis/Models/MemoryModel/CppMemModel/SpecialObject/Vector.cpp
    PointerAnalysis/Models/MemoryModel/CppMemModel/SpecialObject/VTablePtr.cpp
    PointerAnalysis/Models/LanguageModel/DefaultLangModel/DefaultLangModel.cpp
)

add_library(pta STATIC ${pta-lib-sources})
target_link_libraries(pta ${llvm_libs} pthread)
target_include_directories(pta PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(pta SYSTEM PUBLIC ${LLVM_INCLUDE_DIRS})
target_compile_definitions(pta PUBLIC ${LLVM_DEFINITIONS})
target_compile_options(pta PUBLIC -fno-rtti)
target_compile_features(pta PUBLIC cxx_std_17)

if (CMAKE_CXX_CPPCHECK)
    list(APPEND CMAKE_CXX_CPPCHECK
            "--enable=warning"
            "--inconclusive"
            "--force"
            "--inline-suppr"
    )
endif()


set(racedetect-lib-sources
    LanguageModel/RaceModel.cpp
    Analysis/HappensBeforeGraph.cpp
    Analysis/LockSet.cpp
    Analysis/SharedMemory.cpp
    Analysis/OpenMPAnalysis.cpp
    Analysis/SimpleAlias.cpp
    Analysis/ThreadLocalAnalysis.cpp
    IR/Builder.cpp
    IR/IR.cpp
    Trace/Event.cpp
    Trace/EventImpl.cpp
    Trace/ProgramTrace.cpp
    Trace/ThreadTrace.cpp
    Reporter/Reporter.cpp
    RaceDetect.cpp)
add_library(racedetect-lib STATIC ${racedetect-lib-sources})
target_link_libraries(racedetect-lib pta CONAN_PKG::nlohmann_json)
target_include_directories(racedetect-lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(openrace main.cpp)
target_link_libraries(openrace racedetect-lib ${llvm_libs})

if(ENABLE_WARNING)
    enable_warnings(pta)
    enable_warnings(openrace)
endif()
