cmake_minimum_required(VERSION 3.10)

find_program(PYTHON3_EXECUTABLE python3)

file(MAKE_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/include/A")

add_custom_command(
    WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/include/A"
    COMMAND ${PYTHON3_EXECUTABLE} "${CMAKE_CURRENT_SOURCE_DIR}/A/preparing.py"
    OUTPUT  "${CMAKE_CURRENT_BINARY_DIR}/include/A/index.h"
)

add_custom_target(gen_index
    SOURCES "${CMAKE_CURRENT_BINARY_DIR}/include/A/index.h"
)

add_library(index INTERFACE)
add_dependencies(index gen_index)
target_include_directories(index INTERFACE "${CMAKE_CURRENT_BINARY_DIR}/include")

add_subdirectory(B)

set(SOURCE_EXE C/main.cpp)
add_executable(main ${SOURCE_EXE})

target_include_directories(main PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(main index)
target_link_libraries(main B)
# set_target_properties(B PROPERTIES LINKER_LANGUAGE CXX)

