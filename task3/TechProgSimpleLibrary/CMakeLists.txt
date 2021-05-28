cmake_minimum_required(VERSION 3.0)
project(SimpleLibrary)

include_directories(include)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/lib)
add_subdirectory(src)

set(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")

add_executable(Main main.cpp)
add_executable(MainLib main_lib.cpp)

target_link_libraries(MainLib buffer)


install(TARGETS Main MainLib 
        RUNTIME DESTINATION bin
)

install(DIRECTORY include/ DESTINATION include)
    
