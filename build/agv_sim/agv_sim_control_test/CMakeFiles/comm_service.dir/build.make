# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/wangxiao/learn_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wangxiao/learn_ws/build

# Include any dependencies generated for this target.
include agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/depend.make

# Include the progress variables for this target.
include agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/progress.make

# Include the compile flags for this target's objects.
include agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/flags.make

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/flags.make
agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o: /home/wangxiao/learn_ws/src/agv_sim/agv_sim_control_test/src/comm_service.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangxiao/learn_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o"
	cd /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_service.dir/src/comm_service.cpp.o -c /home/wangxiao/learn_ws/src/agv_sim/agv_sim_control_test/src/comm_service.cpp

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_service.dir/src/comm_service.cpp.i"
	cd /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangxiao/learn_ws/src/agv_sim/agv_sim_control_test/src/comm_service.cpp > CMakeFiles/comm_service.dir/src/comm_service.cpp.i

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_service.dir/src/comm_service.cpp.s"
	cd /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangxiao/learn_ws/src/agv_sim/agv_sim_control_test/src/comm_service.cpp -o CMakeFiles/comm_service.dir/src/comm_service.cpp.s

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.requires:

.PHONY : agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.requires

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.provides: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.requires
	$(MAKE) -f agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/build.make agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.provides.build
.PHONY : agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.provides

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.provides.build: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o


# Object files for target comm_service
comm_service_OBJECTS = \
"CMakeFiles/comm_service.dir/src/comm_service.cpp.o"

# External object files for target comm_service
comm_service_EXTERNAL_OBJECTS =

/home/wangxiao/learn_ws/devel/lib/libcomm_service.so: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o
/home/wangxiao/learn_ws/devel/lib/libcomm_service.so: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/build.make
/home/wangxiao/learn_ws/devel/lib/libcomm_service.so: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wangxiao/learn_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/wangxiao/learn_ws/devel/lib/libcomm_service.so"
	cd /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/comm_service.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/build: /home/wangxiao/learn_ws/devel/lib/libcomm_service.so

.PHONY : agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/build

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/requires: agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/src/comm_service.cpp.o.requires

.PHONY : agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/requires

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/clean:
	cd /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test && $(CMAKE_COMMAND) -P CMakeFiles/comm_service.dir/cmake_clean.cmake
.PHONY : agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/clean

agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/depend:
	cd /home/wangxiao/learn_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wangxiao/learn_ws/src /home/wangxiao/learn_ws/src/agv_sim/agv_sim_control_test /home/wangxiao/learn_ws/build /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test /home/wangxiao/learn_ws/build/agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : agv_sim/agv_sim_control_test/CMakeFiles/comm_service.dir/depend

