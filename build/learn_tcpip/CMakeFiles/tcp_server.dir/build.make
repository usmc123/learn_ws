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
include learn_tcpip/CMakeFiles/tcp_server.dir/depend.make

# Include the progress variables for this target.
include learn_tcpip/CMakeFiles/tcp_server.dir/progress.make

# Include the compile flags for this target's objects.
include learn_tcpip/CMakeFiles/tcp_server.dir/flags.make

learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o: learn_tcpip/CMakeFiles/tcp_server.dir/flags.make
learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o: /home/wangxiao/learn_ws/src/learn_tcpip/src/tcp_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangxiao/learn_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o"
	cd /home/wangxiao/learn_ws/build/learn_tcpip && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o -c /home/wangxiao/learn_ws/src/learn_tcpip/src/tcp_server.cpp

learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_server.dir/src/tcp_server.cpp.i"
	cd /home/wangxiao/learn_ws/build/learn_tcpip && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangxiao/learn_ws/src/learn_tcpip/src/tcp_server.cpp > CMakeFiles/tcp_server.dir/src/tcp_server.cpp.i

learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_server.dir/src/tcp_server.cpp.s"
	cd /home/wangxiao/learn_ws/build/learn_tcpip && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangxiao/learn_ws/src/learn_tcpip/src/tcp_server.cpp -o CMakeFiles/tcp_server.dir/src/tcp_server.cpp.s

learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.requires:

.PHONY : learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.requires

learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.provides: learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.requires
	$(MAKE) -f learn_tcpip/CMakeFiles/tcp_server.dir/build.make learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.provides.build
.PHONY : learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.provides

learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.provides.build: learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o


# Object files for target tcp_server
tcp_server_OBJECTS = \
"CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o"

# External object files for target tcp_server
tcp_server_EXTERNAL_OBJECTS =

/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: learn_tcpip/CMakeFiles/tcp_server.dir/build.make
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/libroscpp.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/librosconsole.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/librostime.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /opt/ros/kinetic/lib/libcpp_common.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server: learn_tcpip/CMakeFiles/tcp_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wangxiao/learn_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server"
	cd /home/wangxiao/learn_ws/build/learn_tcpip && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
learn_tcpip/CMakeFiles/tcp_server.dir/build: /home/wangxiao/learn_ws/devel/lib/learn_tcpip/tcp_server

.PHONY : learn_tcpip/CMakeFiles/tcp_server.dir/build

learn_tcpip/CMakeFiles/tcp_server.dir/requires: learn_tcpip/CMakeFiles/tcp_server.dir/src/tcp_server.cpp.o.requires

.PHONY : learn_tcpip/CMakeFiles/tcp_server.dir/requires

learn_tcpip/CMakeFiles/tcp_server.dir/clean:
	cd /home/wangxiao/learn_ws/build/learn_tcpip && $(CMAKE_COMMAND) -P CMakeFiles/tcp_server.dir/cmake_clean.cmake
.PHONY : learn_tcpip/CMakeFiles/tcp_server.dir/clean

learn_tcpip/CMakeFiles/tcp_server.dir/depend:
	cd /home/wangxiao/learn_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wangxiao/learn_ws/src /home/wangxiao/learn_ws/src/learn_tcpip /home/wangxiao/learn_ws/build /home/wangxiao/learn_ws/build/learn_tcpip /home/wangxiao/learn_ws/build/learn_tcpip/CMakeFiles/tcp_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : learn_tcpip/CMakeFiles/tcp_server.dir/depend

