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
include tests/CMakeFiles/tests-test.dir/depend.make
# Include the progress variables for this target.
include tests/CMakeFiles/tests-test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/tests-test.dir/flags.make

tests/CMakeFiles/tests-test.dir/SimpleTest.cpp.o: tests/CMakeFiles/tests-test.dir/flags.make
tests/CMakeFiles/tests-test.dir/SimpleTest.cpp.o: ../tests/SimpleTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/tests-test.dir/SimpleTest.cpp.o"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests-test.dir/SimpleTest.cpp.o -c /home/pavel/CLionProjects/FormalLangTask1/tests/SimpleTest.cpp

tests/CMakeFiles/tests-test.dir/SimpleTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests-test.dir/SimpleTest.cpp.i"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/CLionProjects/FormalLangTask1/tests/SimpleTest.cpp > CMakeFiles/tests-test.dir/SimpleTest.cpp.i

tests/CMakeFiles/tests-test.dir/SimpleTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests-test.dir/SimpleTest.cpp.s"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/CLionProjects/FormalLangTask1/tests/SimpleTest.cpp -o CMakeFiles/tests-test.dir/SimpleTest.cpp.s

tests/CMakeFiles/tests-test.dir/__/main.cpp.o: tests/CMakeFiles/tests-test.dir/flags.make
tests/CMakeFiles/tests-test.dir/__/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/tests-test.dir/__/main.cpp.o"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests-test.dir/__/main.cpp.o -c /home/pavel/CLionProjects/FormalLangTask1/main.cpp

tests/CMakeFiles/tests-test.dir/__/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests-test.dir/__/main.cpp.i"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/CLionProjects/FormalLangTask1/main.cpp > CMakeFiles/tests-test.dir/__/main.cpp.i

tests/CMakeFiles/tests-test.dir/__/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests-test.dir/__/main.cpp.s"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/CLionProjects/FormalLangTask1/main.cpp -o CMakeFiles/tests-test.dir/__/main.cpp.s

# Object files for target tests-test
tests__test_OBJECTS = \
"CMakeFiles/tests-test.dir/SimpleTest.cpp.o" \
"CMakeFiles/tests-test.dir/__/main.cpp.o"

# External object files for target tests-test
tests__test_EXTERNAL_OBJECTS =

/bin/tests-test: tests/CMakeFiles/tests-test.dir/SimpleTest.cpp.o
/bin/tests-test: tests/CMakeFiles/tests-test.dir/__/main.cpp.o
/bin/tests-test: tests/CMakeFiles/tests-test.dir/build.make
/bin/tests-test: tests/CMakeFiles/tests-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /bin/tests-test"
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/tests-test.dir/build: /bin/tests-test
.PHONY : tests/CMakeFiles/tests-test.dir/build

tests/CMakeFiles/tests-test.dir/clean:
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/tests-test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/tests-test.dir/clean

tests/CMakeFiles/tests-test.dir/depend:
	cd /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/CLionProjects/FormalLangTask1 /home/pavel/CLionProjects/FormalLangTask1/tests /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests /home/pavel/CLionProjects/FormalLangTask1/cmake-build-debug/tests/CMakeFiles/tests-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/tests-test.dir/depend
