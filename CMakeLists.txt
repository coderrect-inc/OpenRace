cmake_minimum_required(VERSION 3.0.0)
project(OpenRace
        VERSION 0.0.1
        LANGUAGES CXX)

# We require LLVM 10.0.1 to build the tool and clang 10.0.1 to build tests
# The following are needed to build OpenRace
#  - LLVM_DIR: should be the directory containing LLVMConfig.cmake
# The following are needed to build the tests
#  - LLVM_CC: path to clang 10.0.1
#  - LLVM_CXX: path to clang++ 10.0.1
#
# As a shortcut you can install LLVM 10.0.1 to a location using CMAKE_INSTALL_PREFIX
# and then set LLVM_INSTALL to that directory
# All the other LLVM related vars will be automatically set
if (DEFINED LLVM_INSTALL)
    message(STATUS "LLVM_INSTALL: ${LLVM_INSTALL}")
    
    if (NOT DEFINED LLVM_DIR)
        set(LLVM_DIR ${LLVM_INSTALL}/lib/cmake/llvm)
        message(STATUS " - LLVM_DIR:  ${LLVM_DIR}")
    endif()
    
    if (NOT DEFINED LLVM_CC)
        set(LLVM_CC ${LLVM_INSTALL}/bin/clang)
        message(STATUS " - LLVM_CC:   ${LLVM_CC}")
    endif()
    
    if (NOT DEFINED LLVM_CXX)
        set(LLVM_CXX ${LLVM_INSTALL}/bin/clang++)
        message(STATUS " - LLVM_CXX:  ${LLVM_CXX}")
    endif()
endif()


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
if(NOT DEFINED ENABLE_WARNING)
    set(ENABLE_WARNING False)
endif()
message(STATUS "ENABLE_WARNING is ${ENABLE_WARNING}")

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

include(cmake/CompilerWarnings.cmake)

add_subdirectory(src)

include(CTest)
include(Catch)
enable_testing()

add_subdirectory(tests)

