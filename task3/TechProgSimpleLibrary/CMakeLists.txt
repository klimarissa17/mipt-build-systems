cmake_minimum_required(VERSION 3.0)
project(SimpleLibrary)

include_directories(include)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/lib)
add_subdirectory(src)
set(CMAKE_SKIP_BUILD_RPATH FALSE)

# when building, don't use the install RPATH already
# (but later on when installing)
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)


# the RPATH to be used when installing
set(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")
add_executable(Main main.cpp)
add_executable(MainLib main_lib.cpp)

target_link_libraries(MainLib buffer)


install(TARGETS Main MainLib
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib)
