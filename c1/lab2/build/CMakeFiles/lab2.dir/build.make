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
CMAKE_SOURCE_DIR = /data/git/DSA/lab2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/git/DSA/lab2/build

# Include any dependencies generated for this target.
include CMakeFiles/lab2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab2.dir/flags.make

CMakeFiles/lab2.dir/src/bstree.c.o: CMakeFiles/lab2.dir/flags.make
CMakeFiles/lab2.dir/src/bstree.c.o: ../src/bstree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab2.dir/src/bstree.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab2.dir/src/bstree.c.o   -c /data/git/DSA/lab2/src/bstree.c

CMakeFiles/lab2.dir/src/bstree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab2.dir/src/bstree.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab2/src/bstree.c > CMakeFiles/lab2.dir/src/bstree.c.i

CMakeFiles/lab2.dir/src/bstree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab2.dir/src/bstree.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab2/src/bstree.c -o CMakeFiles/lab2.dir/src/bstree.c.s

CMakeFiles/lab2.dir/src/bstree.c.o.requires:

.PHONY : CMakeFiles/lab2.dir/src/bstree.c.o.requires

CMakeFiles/lab2.dir/src/bstree.c.o.provides: CMakeFiles/lab2.dir/src/bstree.c.o.requires
	$(MAKE) -f CMakeFiles/lab2.dir/build.make CMakeFiles/lab2.dir/src/bstree.c.o.provides.build
.PHONY : CMakeFiles/lab2.dir/src/bstree.c.o.provides

CMakeFiles/lab2.dir/src/bstree.c.o.provides.build: CMakeFiles/lab2.dir/src/bstree.c.o


CMakeFiles/lab2.dir/src/hashtab.c.o: CMakeFiles/lab2.dir/flags.make
CMakeFiles/lab2.dir/src/hashtab.c.o: ../src/hashtab.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab2.dir/src/hashtab.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab2.dir/src/hashtab.c.o   -c /data/git/DSA/lab2/src/hashtab.c

CMakeFiles/lab2.dir/src/hashtab.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab2.dir/src/hashtab.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab2/src/hashtab.c > CMakeFiles/lab2.dir/src/hashtab.c.i

CMakeFiles/lab2.dir/src/hashtab.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab2.dir/src/hashtab.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab2/src/hashtab.c -o CMakeFiles/lab2.dir/src/hashtab.c.s

CMakeFiles/lab2.dir/src/hashtab.c.o.requires:

.PHONY : CMakeFiles/lab2.dir/src/hashtab.c.o.requires

CMakeFiles/lab2.dir/src/hashtab.c.o.provides: CMakeFiles/lab2.dir/src/hashtab.c.o.requires
	$(MAKE) -f CMakeFiles/lab2.dir/build.make CMakeFiles/lab2.dir/src/hashtab.c.o.provides.build
.PHONY : CMakeFiles/lab2.dir/src/hashtab.c.o.provides

CMakeFiles/lab2.dir/src/hashtab.c.o.provides.build: CMakeFiles/lab2.dir/src/hashtab.c.o


CMakeFiles/lab2.dir/src/main.c.o: CMakeFiles/lab2.dir/flags.make
CMakeFiles/lab2.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/git/DSA/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lab2.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab2.dir/src/main.c.o   -c /data/git/DSA/lab2/src/main.c

CMakeFiles/lab2.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab2.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /data/git/DSA/lab2/src/main.c > CMakeFiles/lab2.dir/src/main.c.i

CMakeFiles/lab2.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab2.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /data/git/DSA/lab2/src/main.c -o CMakeFiles/lab2.dir/src/main.c.s

CMakeFiles/lab2.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/lab2.dir/src/main.c.o.requires

CMakeFiles/lab2.dir/src/main.c.o.provides: CMakeFiles/lab2.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/lab2.dir/build.make CMakeFiles/lab2.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/lab2.dir/src/main.c.o.provides

CMakeFiles/lab2.dir/src/main.c.o.provides.build: CMakeFiles/lab2.dir/src/main.c.o


# Object files for target lab2
lab2_OBJECTS = \
"CMakeFiles/lab2.dir/src/bstree.c.o" \
"CMakeFiles/lab2.dir/src/hashtab.c.o" \
"CMakeFiles/lab2.dir/src/main.c.o"

# External object files for target lab2
lab2_EXTERNAL_OBJECTS =

lab2: CMakeFiles/lab2.dir/src/bstree.c.o
lab2: CMakeFiles/lab2.dir/src/hashtab.c.o
lab2: CMakeFiles/lab2.dir/src/main.c.o
lab2: CMakeFiles/lab2.dir/build.make
lab2: CMakeFiles/lab2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/git/DSA/lab2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lab2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab2.dir/build: lab2

.PHONY : CMakeFiles/lab2.dir/build

CMakeFiles/lab2.dir/requires: CMakeFiles/lab2.dir/src/bstree.c.o.requires
CMakeFiles/lab2.dir/requires: CMakeFiles/lab2.dir/src/hashtab.c.o.requires
CMakeFiles/lab2.dir/requires: CMakeFiles/lab2.dir/src/main.c.o.requires

.PHONY : CMakeFiles/lab2.dir/requires

CMakeFiles/lab2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab2.dir/clean

CMakeFiles/lab2.dir/depend:
	cd /data/git/DSA/lab2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/git/DSA/lab2 /data/git/DSA/lab2 /data/git/DSA/lab2/build /data/git/DSA/lab2/build /data/git/DSA/lab2/build/CMakeFiles/lab2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab2.dir/depend
