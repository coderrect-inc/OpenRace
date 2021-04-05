cmake_minimum_required(VERSION 3.0.0)
project(OpenRace 
    VERSION 0.0.1
    LANGUAGES CXX)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

# TODO: can conan do LLVM?
list(APPEND CMAKE_PREFIX_PATH ${LLVM_DIR})
find_package(LLVM 10.0.0 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

## Don't do this. Do these for each target per modenrn cmake
# include_directories(${LLVM_INCLUDE_DIRS})
# add_definitions(${LLVM_DEFINITIONS})

# Find the libraries that correspond to the LLVM components
# that we wish to use
llvm_map_components_to_libnames(llvm_libs
        bitwriter
        core
        ipo
        irreader
        instcombine
        instrumentation
        target
        linker
        analysis
        scalaropts
        support
        transformutils
        codegen
        passes

        # needed when link llvm as shared library
        AggressiveInstCombine
        demangle
        mc)

add_subdirectory(src)

include(CTest)
include(Catch)
enable_testing()

add_subdirectory(tests)