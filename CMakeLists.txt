cmake_minimum_required(VERSION 3.0.0)
project(OpenRace
        VERSION 0.0.1
        LANGUAGES CXX)

if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/master/conan.cmake"
            "${CMAKE_BINARY_DIR}/conan.cmake")
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)

conan_cmake_run(REQUIRES catch2/2.13.4
                         nlohmann_json/3.9.1
                BASIC_SETUP
                CMAKE_TARGETS)

list(APPEND CMAKE_PREFIX_PATH ${LLVM_DIR})
find_package(LLVM 10.0.1 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

## Don't do this. Do these for each target per modern cmake
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
