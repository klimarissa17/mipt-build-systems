# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld

# Include any dependencies generated for this target.
include src/CMakeFiles/buffer.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/buffer.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/buffer.dir/flags.make

src/CMakeFiles/buffer.dir/buffer.cpp.o: src/CMakeFiles/buffer.dir/flags.make
src/CMakeFiles/buffer.dir/buffer.cpp.o: ../src/buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/buffer.dir/buffer.cpp.o"
	cd /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src && /home/maria/code/study/mipt-build-systems/task3/toolchain/gcc-linaro-i686_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/home/maria/code/study/mipt-build-systems/task3/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/buffer.dir/buffer.cpp.o -c /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/src/buffer.cpp

src/CMakeFiles/buffer.dir/buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/buffer.dir/buffer.cpp.i"
	cd /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src && /home/maria/code/study/mipt-build-systems/task3/toolchain/gcc-linaro-i686_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/home/maria/code/study/mipt-build-systems/task3/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/src/buffer.cpp > CMakeFiles/buffer.dir/buffer.cpp.i

src/CMakeFiles/buffer.dir/buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/buffer.dir/buffer.cpp.s"
	cd /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src && /home/maria/code/study/mipt-build-systems/task3/toolchain/gcc-linaro-i686_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ --sysroot=/home/maria/code/study/mipt-build-systems/task3/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/src/buffer.cpp -o CMakeFiles/buffer.dir/buffer.cpp.s

src/CMakeFiles/buffer.dir/buffer.cpp.o.requires:

.PHONY : src/CMakeFiles/buffer.dir/buffer.cpp.o.requires

src/CMakeFiles/buffer.dir/buffer.cpp.o.provides: src/CMakeFiles/buffer.dir/buffer.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/buffer.dir/build.make src/CMakeFiles/buffer.dir/buffer.cpp.o.provides.build
.PHONY : src/CMakeFiles/buffer.dir/buffer.cpp.o.provides

src/CMakeFiles/buffer.dir/buffer.cpp.o.provides.build: src/CMakeFiles/buffer.dir/buffer.cpp.o


# Object files for target buffer
buffer_OBJECTS = \
"CMakeFiles/buffer.dir/buffer.cpp.o"

# External object files for target buffer
buffer_EXTERNAL_OBJECTS =

../lib/libbuffer.so: src/CMakeFiles/buffer.dir/buffer.cpp.o
../lib/libbuffer.so: src/CMakeFiles/buffer.dir/build.make
../lib/libbuffer.so: src/CMakeFiles/buffer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libbuffer.so"
	cd /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/buffer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/buffer.dir/build: ../lib/libbuffer.so

.PHONY : src/CMakeFiles/buffer.dir/build

src/CMakeFiles/buffer.dir/requires: src/CMakeFiles/buffer.dir/buffer.cpp.o.requires

.PHONY : src/CMakeFiles/buffer.dir/requires

src/CMakeFiles/buffer.dir/clean:
	cd /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src && $(CMAKE_COMMAND) -P CMakeFiles/buffer.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/buffer.dir/clean

src/CMakeFiles/buffer.dir/depend:
	cd /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/src /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src /home/maria/code/study/mipt-build-systems/task3/TechProgSimpleLibrary/bld/src/CMakeFiles/buffer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/buffer.dir/depend

