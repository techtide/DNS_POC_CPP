# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/greenie/Documents/CLionProjects/DNS_POC_CPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/DoNotStarve.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DoNotStarve.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DoNotStarve.dir/flags.make

CMakeFiles/DoNotStarve.dir/Game.cpp.o: CMakeFiles/DoNotStarve.dir/flags.make
CMakeFiles/DoNotStarve.dir/Game.cpp.o: ../Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DoNotStarve.dir/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoNotStarve.dir/Game.cpp.o -c /home/greenie/Documents/CLionProjects/DNS_POC_CPP/Game.cpp

CMakeFiles/DoNotStarve.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoNotStarve.dir/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/greenie/Documents/CLionProjects/DNS_POC_CPP/Game.cpp > CMakeFiles/DoNotStarve.dir/Game.cpp.i

CMakeFiles/DoNotStarve.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoNotStarve.dir/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/greenie/Documents/CLionProjects/DNS_POC_CPP/Game.cpp -o CMakeFiles/DoNotStarve.dir/Game.cpp.s

CMakeFiles/DoNotStarve.dir/Game.cpp.o.requires:

.PHONY : CMakeFiles/DoNotStarve.dir/Game.cpp.o.requires

CMakeFiles/DoNotStarve.dir/Game.cpp.o.provides: CMakeFiles/DoNotStarve.dir/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/DoNotStarve.dir/build.make CMakeFiles/DoNotStarve.dir/Game.cpp.o.provides.build
.PHONY : CMakeFiles/DoNotStarve.dir/Game.cpp.o.provides

CMakeFiles/DoNotStarve.dir/Game.cpp.o.provides.build: CMakeFiles/DoNotStarve.dir/Game.cpp.o


# Object files for target DoNotStarve
DoNotStarve_OBJECTS = \
"CMakeFiles/DoNotStarve.dir/Game.cpp.o"

# External object files for target DoNotStarve
DoNotStarve_EXTERNAL_OBJECTS =

DoNotStarve: CMakeFiles/DoNotStarve.dir/Game.cpp.o
DoNotStarve: CMakeFiles/DoNotStarve.dir/build.make
DoNotStarve: CMakeFiles/DoNotStarve.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DoNotStarve"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DoNotStarve.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DoNotStarve.dir/build: DoNotStarve

.PHONY : CMakeFiles/DoNotStarve.dir/build

CMakeFiles/DoNotStarve.dir/requires: CMakeFiles/DoNotStarve.dir/Game.cpp.o.requires

.PHONY : CMakeFiles/DoNotStarve.dir/requires

CMakeFiles/DoNotStarve.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DoNotStarve.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DoNotStarve.dir/clean

CMakeFiles/DoNotStarve.dir/depend:
	cd /home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/greenie/Documents/CLionProjects/DNS_POC_CPP /home/greenie/Documents/CLionProjects/DNS_POC_CPP /home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug /home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug /home/greenie/Documents/CLionProjects/DNS_POC_CPP/cmake-build-debug/CMakeFiles/DoNotStarve.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DoNotStarve.dir/depend

