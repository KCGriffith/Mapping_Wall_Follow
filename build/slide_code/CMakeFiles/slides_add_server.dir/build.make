# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/keaton/Mapping_Wall_Follow/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/keaton/Mapping_Wall_Follow/build

# Include any dependencies generated for this target.
include slide_code/CMakeFiles/slides_add_server.dir/depend.make

# Include the progress variables for this target.
include slide_code/CMakeFiles/slides_add_server.dir/progress.make

# Include the compile flags for this target's objects.
include slide_code/CMakeFiles/slides_add_server.dir/flags.make

slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o: slide_code/CMakeFiles/slides_add_server.dir/flags.make
slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o: /home/keaton/Mapping_Wall_Follow/src/slide_code/src/add_server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/keaton/Mapping_Wall_Follow/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o"
	cd /home/keaton/Mapping_Wall_Follow/build/slide_code && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/slides_add_server.dir/src/add_server.cpp.o -c /home/keaton/Mapping_Wall_Follow/src/slide_code/src/add_server.cpp

slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slides_add_server.dir/src/add_server.cpp.i"
	cd /home/keaton/Mapping_Wall_Follow/build/slide_code && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/keaton/Mapping_Wall_Follow/src/slide_code/src/add_server.cpp > CMakeFiles/slides_add_server.dir/src/add_server.cpp.i

slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slides_add_server.dir/src/add_server.cpp.s"
	cd /home/keaton/Mapping_Wall_Follow/build/slide_code && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/keaton/Mapping_Wall_Follow/src/slide_code/src/add_server.cpp -o CMakeFiles/slides_add_server.dir/src/add_server.cpp.s

slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.requires:
.PHONY : slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.requires

slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.provides: slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.requires
	$(MAKE) -f slide_code/CMakeFiles/slides_add_server.dir/build.make slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.provides.build
.PHONY : slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.provides

slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.provides.build: slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o

# Object files for target slides_add_server
slides_add_server_OBJECTS = \
"CMakeFiles/slides_add_server.dir/src/add_server.cpp.o"

# External object files for target slides_add_server
slides_add_server_EXTERNAL_OBJECTS =

/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: slide_code/CMakeFiles/slides_add_server.dir/build.make
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libgazebo_ros_api_plugin.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libgazebo_ros_paths_plugin.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libroslib.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/librospack.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libtf.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libtf2_ros.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libactionlib.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libmessage_filters.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libtf2.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libroscpp.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/librosconsole.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/liblog4cxx.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/librostime.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /opt/ros/indigo/lib/libcpp_common.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server: slide_code/CMakeFiles/slides_add_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server"
	cd /home/keaton/Mapping_Wall_Follow/build/slide_code && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/slides_add_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
slide_code/CMakeFiles/slides_add_server.dir/build: /home/keaton/Mapping_Wall_Follow/devel/lib/slide_code/slides_add_server
.PHONY : slide_code/CMakeFiles/slides_add_server.dir/build

slide_code/CMakeFiles/slides_add_server.dir/requires: slide_code/CMakeFiles/slides_add_server.dir/src/add_server.cpp.o.requires
.PHONY : slide_code/CMakeFiles/slides_add_server.dir/requires

slide_code/CMakeFiles/slides_add_server.dir/clean:
	cd /home/keaton/Mapping_Wall_Follow/build/slide_code && $(CMAKE_COMMAND) -P CMakeFiles/slides_add_server.dir/cmake_clean.cmake
.PHONY : slide_code/CMakeFiles/slides_add_server.dir/clean

slide_code/CMakeFiles/slides_add_server.dir/depend:
	cd /home/keaton/Mapping_Wall_Follow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/keaton/Mapping_Wall_Follow/src /home/keaton/Mapping_Wall_Follow/src/slide_code /home/keaton/Mapping_Wall_Follow/build /home/keaton/Mapping_Wall_Follow/build/slide_code /home/keaton/Mapping_Wall_Follow/build/slide_code/CMakeFiles/slides_add_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : slide_code/CMakeFiles/slides_add_server.dir/depend

