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
CMAKE_SOURCE_DIR = /data/git/DSA/lab3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/git/DSA/lab3/build

# Include any dependencies generated for this target.
include CMakeFiles/lab3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab3.dir/flags.make

CMakeFiles/lab3.dir/src/binary_heap.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/binary_heap.c.o: ../src/binary_heap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab3.dir/src/binary_heap.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/src/binary_heap.c.o   -c /data/git/DSA/lab3/src/binary_heap.c

CMakeFiles/lab3.dir/src/binary_heap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/src/binary_heap.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab3/src/binary_heap.c > CMakeFiles/lab3.dir/src/binary_heap.c.i

CMakeFiles/lab3.dir/src/binary_heap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/src/binary_heap.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab3/src/binary_heap.c -o CMakeFiles/lab3.dir/src/binary_heap.c.s

CMakeFiles/lab3.dir/src/binary_heap.c.o.requires:

.PHONY : CMakeFiles/lab3.dir/src/binary_heap.c.o.requires

CMakeFiles/lab3.dir/src/binary_heap.c.o.provides: CMakeFiles/lab3.dir/src/binary_heap.c.o.requires
	$(MAKE) -f CMakeFiles/lab3.dir/build.make CMakeFiles/lab3.dir/src/binary_heap.c.o.provides.build
.PHONY : CMakeFiles/lab3.dir/src/binary_heap.c.o.provides

CMakeFiles/lab3.dir/src/binary_heap.c.o.provides.build: CMakeFiles/lab3.dir/src/binary_heap.c.o


CMakeFiles/lab3.dir/src/graph.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/graph.c.o: ../src/graph.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab3.dir/src/graph.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/src/graph.c.o   -c /data/git/DSA/lab3/src/graph.c

CMakeFiles/lab3.dir/src/graph.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/src/graph.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab3/src/graph.c > CMakeFiles/lab3.dir/src/graph.c.i

CMakeFiles/lab3.dir/src/graph.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/src/graph.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab3/src/graph.c -o CMakeFiles/lab3.dir/src/graph.c.s

CMakeFiles/lab3.dir/src/graph.c.o.requires:

.PHONY : CMakeFiles/lab3.dir/src/graph.c.o.requires

CMakeFiles/lab3.dir/src/graph.c.o.provides: CMakeFiles/lab3.dir/src/graph.c.o.requires
	$(MAKE) -f CMakeFiles/lab3.dir/build.make CMakeFiles/lab3.dir/src/graph.c.o.provides.build
.PHONY : CMakeFiles/lab3.dir/src/graph.c.o.provides

CMakeFiles/lab3.dir/src/graph.c.o.provides.build: CMakeFiles/lab3.dir/src/graph.c.o


CMakeFiles/lab3.dir/src/llist.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/llist.c.o: ../src/llist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lab3.dir/src/llist.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/src/llist.c.o   -c /data/git/DSA/lab3/src/llist.c

CMakeFiles/lab3.dir/src/llist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/src/llist.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab3/src/llist.c > CMakeFiles/lab3.dir/src/llist.c.i

CMakeFiles/lab3.dir/src/llist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/src/llist.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab3/src/llist.c -o CMakeFiles/lab3.dir/src/llist.c.s

CMakeFiles/lab3.dir/src/llist.c.o.requires:

.PHONY : CMakeFiles/lab3.dir/src/llist.c.o.requires

CMakeFiles/lab3.dir/src/llist.c.o.provides: CMakeFiles/lab3.dir/src/llist.c.o.requires
	$(MAKE) -f CMakeFiles/lab3.dir/build.make CMakeFiles/lab3.dir/src/llist.c.o.provides.build
.PHONY : CMakeFiles/lab3.dir/src/llist.c.o.provides

CMakeFiles/lab3.dir/src/llist.c.o.provides.build: CMakeFiles/lab3.dir/src/llist.c.o


CMakeFiles/lab3.dir/src/main.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/lab3.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/src/main.c.o   -c /data/git/DSA/lab3/src/main.c

CMakeFiles/lab3.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab3/src/main.c > CMakeFiles/lab3.dir/src/main.c.i

CMakeFiles/lab3.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab3/src/main.c -o CMakeFiles/lab3.dir/src/main.c.s

CMakeFiles/lab3.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/lab3.dir/src/main.c.o.requires

CMakeFiles/lab3.dir/src/main.c.o.provides: CMakeFiles/lab3.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/lab3.dir/build.make CMakeFiles/lab3.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/lab3.dir/src/main.c.o.provides

CMakeFiles/lab3.dir/src/main.c.o.provides.build: CMakeFiles/lab3.dir/src/main.c.o


CMakeFiles/lab3.dir/src/queue.c.o: CMakeFiles/lab3.dir/flags.make
CMakeFiles/lab3.dir/src/queue.c.o: ../src/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/lab3.dir/src/queue.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab3.dir/src/queue.c.o   -c /data/git/DSA/lab3/src/queue.c

CMakeFiles/lab3.dir/src/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab3.dir/src/queue.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab3/src/queue.c > CMakeFiles/lab3.dir/src/queue.c.i

CMakeFiles/lab3.dir/src/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab3.dir/src/queue.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab3/src/queue.c -o CMakeFiles/lab3.dir/src/queue.c.s

CMakeFiles/lab3.dir/src/queue.c.o.requires:

.PHONY : CMakeFiles/lab3.dir/src/queue.c.o.requires

CMakeFiles/lab3.dir/src/queue.c.o.provides: CMakeFiles/lab3.dir/src/queue.c.o.requires
	$(MAKE) -f CMakeFiles/lab3.dir/build.make CMakeFiles/lab3.dir/src/queue.c.o.provides.build
.PHONY : CMakeFiles/lab3.dir/src/queue.c.o.provides

CMakeFiles/lab3.dir/src/queue.c.o.provides.build: CMakeFiles/lab3.dir/src/queue.c.o


# Object files for target lab3
lab3_OBJECTS = \
"CMakeFiles/lab3.dir/src/binary_heap.c.o" \
"CMakeFiles/lab3.dir/src/graph.c.o" \
"CMakeFiles/lab3.dir/src/llist.c.o" \
"CMakeFiles/lab3.dir/src/main.c.o" \
"CMakeFiles/lab3.dir/src/queue.c.o"

# External object files for target lab3
lab3_EXTERNAL_OBJECTS =

lab3: CMakeFiles/lab3.dir/src/binary_heap.c.o
lab3: CMakeFiles/lab3.dir/src/graph.c.o
lab3: CMakeFiles/lab3.dir/src/llist.c.o
lab3: CMakeFiles/lab3.dir/src/main.c.o
lab3: CMakeFiles/lab3.dir/src/queue.c.o
lab3: CMakeFiles/lab3.dir/build.make
lab3: CMakeFiles/lab3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/git/DSA/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable lab3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab3.dir/build: lab3

.PHONY : CMakeFiles/lab3.dir/build

CMakeFiles/lab3.dir/requires: CMakeFiles/lab3.dir/src/binary_heap.c.o.requires
CMakeFiles/lab3.dir/requires: CMakeFiles/lab3.dir/src/graph.c.o.requires
CMakeFiles/lab3.dir/requires: CMakeFiles/lab3.dir/src/llist.c.o.requires
CMakeFiles/lab3.dir/requires: CMakeFiles/lab3.dir/src/main.c.o.requires
CMakeFiles/lab3.dir/requires: CMakeFiles/lab3.dir/src/queue.c.o.requires

.PHONY : CMakeFiles/lab3.dir/requires

CMakeFiles/lab3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab3.dir/clean

CMakeFiles/lab3.dir/depend:
	cd /data/git/DSA/lab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/git/DSA/lab3 /data/git/DSA/lab3 /data/git/DSA/lab3/build /data/git/DSA/lab3/build /data/git/DSA/lab3/build/CMakeFiles/lab3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab3.dir/depend

