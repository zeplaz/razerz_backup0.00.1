# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build

# Include any dependencies generated for this target.
include CMakeFiles/gk_objz.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gk_objz.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gk_objz.dir/flags.make

CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.o: CMakeFiles/gk_objz.dir/flags.make
CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.o: /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.o -c /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp

CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp > CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.i

CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp -o CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.s

# Object files for target gk_objz
gk_objz_OBJECTS = \
"CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.o"

# External object files for target gk_objz
gk_objz_EXTERNAL_OBJECTS =

libgk_objz.a: CMakeFiles/gk_objz.dir/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/basez/texture.cpp.o
libgk_objz.a: CMakeFiles/gk_objz.dir/build.make
libgk_objz.a: CMakeFiles/gk_objz.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgk_objz.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gk_objz.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gk_objz.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gk_objz.dir/build: libgk_objz.a

.PHONY : CMakeFiles/gk_objz.dir/build

CMakeFiles/gk_objz.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gk_objz.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gk_objz.dir/clean

CMakeFiles/gk_objz.dir/depend:
	cd /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build /home/orgburo/Dev_envo_workspace/gitrepoz/razerz/source/text_render/build/CMakeFiles/gk_objz.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gk_objz.dir/depend

