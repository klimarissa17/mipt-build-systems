set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

get_filename_component(CMAKE_SYSROOT "${CMAKE_CURRENT_LIST_DIR}/../sysroot" ABSOLUTE) 
get_filename_component(toolchain "${CMAKE_CURRENT_LIST_DIR}/../toolchain" ABSOLUTE) 

set(CMAKE_STAGING_PREFIX "${CMAKE_CURRENT_LIST_DIR}/stage")

#set(tools /home/devel/gcc-4.7-linaro-rpi-gnueabihf)
set(tools "${toolchain}/gcc-linaro-i686_arm-linux-gnueabihf")

set(CMAKE_C_COMPILER ${tools}/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/arm-linux-gnueabihf-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
