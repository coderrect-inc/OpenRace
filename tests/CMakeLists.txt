add_subdirectory(data)

add_executable(tester 
    test.cpp
    
    unit/Analysis/HappensBefore.test.cpp
    unit/Analysis/LockSet.test.cpp
    unit/Analysis/SharedMemory.test.cpp
    unit/Analysis/OpenMPAnalysis.test.cpp
    unit/IR/IR.test.cpp
    unit/IR/OpenMPIR.test.cpp
    unit/PointerAnalysis/PointerAnalysis.test.cpp
    unit/PreProcessing/DuplicateOpenMPForks.test.cpp
    unit/Trace/CallStack.test.cpp
    unit/Trace/Trace.test.cpp
    unit/Trace/OpenMPTrace.test.cpp
    
    integration/pthreadrace.test.cpp
    integration/dataracebench.test.cpp
    integration/openmp.test.cpp

    regression/EmptyThread.test.cpp
    regression/OpenMPRegression.test.cpp

    # Helper logic
    helpers/ReportChecking.cpp
)
target_link_libraries(tester pta racedetect-lib ${llvm_libs} CONAN_PKG::catch2)
target_include_directories(tester PRIVATE ${LLVM_INCLUDE_DIRS})
target_include_directories(tester PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(tester PRIVATE ${LLVM_DEFINITIONS})
add_dependencies(tester tests)


file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/testresults)
catch_discover_tests(tester
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/data
    OUTPUT_DIR ${CMAKE_BINARY_DIR}/testresults
    OUTPUT_SUFFIX ".xml"
    REPORTER junit)