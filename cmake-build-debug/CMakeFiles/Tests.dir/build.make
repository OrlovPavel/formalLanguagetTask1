# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/169/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/169/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pavel/CLionProjects/FormalLangTask1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Tests.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tests.dir/flags.make

CMakeFiles/Tests.dir/run_tests.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/run_tests.cpp.o: ../run_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tests.dir/run_tests.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tests.dir/run_tests.cpp.o -c /home/pavel/CLionProjects/FormalLangTask1/run_tests.cpp

CMakeFiles/Tests.dir/run_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tests.dir/run_tests.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/CLionProjects/FormalLangTask1/run_tests.cpp > CMakeFiles/Tests.dir/run_tests.cpp.i

CMakeFiles/Tests.dir/run_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/run_tests.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/CLionProjects/FormalLangTask1/run_tests.cpp -o CMakeFiles/Tests.dir/run_tests.cpp.s

CMakeFiles/Tests.dir/tests/SimpleTest.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/tests/SimpleTest.cpp.o: ../tests/SimpleTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Tests.dir/tests/SimpleTest.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tests.dir/tests/SimpleTest.cpp.o -c /home/pavel/CLionProjects/FormalLangTask1/tests/SimpleTest.cpp

CMakeFiles/Tests.dir/tests/SimpleTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tests.dir/tests/SimpleTest.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/CLionProjects/FormalLangTask1/tests/SimpleTest.cpp > CMakeFiles/Tests.dir/tests/SimpleTest.cpp.i

CMakeFiles/Tests.dir/tests/SimpleTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/tests/SimpleTest.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/CLionProjects/FormalLangTask1/tests/SimpleTest.cpp -o CMakeFiles/Tests.dir/tests/SimpleTest.cpp.s

CMakeFiles/Tests.dir/SubstrAnalyser.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/SubstrAnalyser.cpp.o: ../SubstrAnalyser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Tests.dir/SubstrAnalyser.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tests.dir/SubstrAnalyser.cpp.o -c /home/pavel/CLionProjects/FormalLangTask1/SubstrAnalyser.cpp

CMakeFiles/Tests.dir/SubstrAnalyser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tests.dir/SubstrAnalyser.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/CLionProjects/FormalLangTask1/SubstrAnalyser.cpp > CMakeFiles/Tests.dir/SubstrAnalyser.cpp.i

CMakeFiles/Tests.dir/SubstrAnalyser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/SubstrAnalyser.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/CLionProjects/FormalLangTask1/SubstrAnalyser.cpp -o CMakeFiles/Tests.dir/SubstrAnalyser.cpp.s

# Object files for target Tests
Tests_OBJECTS = \
"CMakeFiles/Tests.dir/run_tests.cpp.o" \
"CMakeFiles/Tests.dir/tests/SimpleTest.cpp.o" \
"CMakeFiles/Tests.dir/SubstrAnalyser.cpp.o"

# External object files for target Tests
Tests_EXTERNAL_OBJECTS =

Tests: CMakeFiles/Tests.dir/run_tests.cpp.o
Tests: CMakeFiles/Tests.dir/tests/SimpleTest.cpp.o
Tests: CMakeFiles/Tests.dir/SubstrAnalyser.cpp.o
Tests: CMakeFiles/Tests.dir/build.make
Tests: /usr/local/lib/libgtest.a
Tests: CMakeFiles/Tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tests.dir/build: Tests
.PHONY : CMakeFiles/Tests.dir/build

CMakeFiles/Tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tests.dir/clean

CMakeFiles/Tests.dir/depend:
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/CLionProjects/FormalLangTask1 /home/pavel/CLionProjects/FormalLangTask1 /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles/Tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tests.dir/depend
