cmake_minimum_required(VERSION 3.10)

project(task4)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
find_program(PYTHON3_EXECUTABLE python3)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

set(source_dir ${CMAKE_CURRENT_SOURCE_DIR})
add_custom_command(
    COMMAND ${PYTHON3_EXECUTABLE} ${source_dir}/gen_matrix.py ${source_dir}/map.png ${CMAKE_CURRENT_BINARY_DIR}/matrix.h
    OUTPUT  "${CMAKE_CURRENT_BINARY_DIR}/matrix.h"
)

add_custom_target(gen_matrix
    SOURCES "${CMAKE_CURRENT_BINARY_DIR}/matrix.h"
)

add_executable(with_codegen with_codegen.cpp)
add_executable(no_codegen no_codegen.cpp)
add_dependencies(with_codegen gen_matrix)

target_link_libraries(with_codegen ${OpenCV_LIBS})
target_link_libraries(no_codegen ${OpenCV_LIBS})
