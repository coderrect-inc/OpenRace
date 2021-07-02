add_custom_target(tests
    COMMAND ${CMAKE_COMMAND} -E env CC=${LLVM_CC} CXX=${LLVM_CXX} make
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Generate IR files from test .c/.cpp files")

    add_custom_target(clean-tests
    COMMAND ${CMAKE_COMMAND} -E env CC=${LLVM_CC} CXX=${LLVM_CXX} make clean
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Clean generated IR files from test .c/.cpp files")