# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sangjun/sj/CGW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sangjun/sj/CGW/build

# Include any dependencies generated for this target.
include CMakeFiles/cgw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cgw.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cgw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cgw.dir/flags.make

CMakeFiles/cgw.dir/main.cpp.o: CMakeFiles/cgw.dir/flags.make
CMakeFiles/cgw.dir/main.cpp.o: /home/sangjun/sj/CGW/main.cpp
CMakeFiles/cgw.dir/main.cpp.o: CMakeFiles/cgw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sangjun/sj/CGW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cgw.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cgw.dir/main.cpp.o -MF CMakeFiles/cgw.dir/main.cpp.o.d -o CMakeFiles/cgw.dir/main.cpp.o -c /home/sangjun/sj/CGW/main.cpp

CMakeFiles/cgw.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cgw.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sangjun/sj/CGW/main.cpp > CMakeFiles/cgw.dir/main.cpp.i

CMakeFiles/cgw.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cgw.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sangjun/sj/CGW/main.cpp -o CMakeFiles/cgw.dir/main.cpp.s

CMakeFiles/cgw.dir/Downloader.cpp.o: CMakeFiles/cgw.dir/flags.make
CMakeFiles/cgw.dir/Downloader.cpp.o: /home/sangjun/sj/CGW/Downloader.cpp
CMakeFiles/cgw.dir/Downloader.cpp.o: CMakeFiles/cgw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sangjun/sj/CGW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cgw.dir/Downloader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cgw.dir/Downloader.cpp.o -MF CMakeFiles/cgw.dir/Downloader.cpp.o.d -o CMakeFiles/cgw.dir/Downloader.cpp.o -c /home/sangjun/sj/CGW/Downloader.cpp

CMakeFiles/cgw.dir/Downloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cgw.dir/Downloader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sangjun/sj/CGW/Downloader.cpp > CMakeFiles/cgw.dir/Downloader.cpp.i

CMakeFiles/cgw.dir/Downloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cgw.dir/Downloader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sangjun/sj/CGW/Downloader.cpp -o CMakeFiles/cgw.dir/Downloader.cpp.s

CMakeFiles/cgw.dir/Sender.cpp.o: CMakeFiles/cgw.dir/flags.make
CMakeFiles/cgw.dir/Sender.cpp.o: /home/sangjun/sj/CGW/Sender.cpp
CMakeFiles/cgw.dir/Sender.cpp.o: CMakeFiles/cgw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sangjun/sj/CGW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cgw.dir/Sender.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cgw.dir/Sender.cpp.o -MF CMakeFiles/cgw.dir/Sender.cpp.o.d -o CMakeFiles/cgw.dir/Sender.cpp.o -c /home/sangjun/sj/CGW/Sender.cpp

CMakeFiles/cgw.dir/Sender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cgw.dir/Sender.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sangjun/sj/CGW/Sender.cpp > CMakeFiles/cgw.dir/Sender.cpp.i

CMakeFiles/cgw.dir/Sender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cgw.dir/Sender.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sangjun/sj/CGW/Sender.cpp -o CMakeFiles/cgw.dir/Sender.cpp.s

# Object files for target cgw
cgw_OBJECTS = \
"CMakeFiles/cgw.dir/main.cpp.o" \
"CMakeFiles/cgw.dir/Downloader.cpp.o" \
"CMakeFiles/cgw.dir/Sender.cpp.o"

# External object files for target cgw
cgw_EXTERNAL_OBJECTS =

cgw: CMakeFiles/cgw.dir/main.cpp.o
cgw: CMakeFiles/cgw.dir/Downloader.cpp.o
cgw: CMakeFiles/cgw.dir/Sender.cpp.o
cgw: CMakeFiles/cgw.dir/build.make
cgw: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.83.0
cgw: CMakeFiles/cgw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sangjun/sj/CGW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cgw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cgw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cgw.dir/build: cgw
.PHONY : CMakeFiles/cgw.dir/build

CMakeFiles/cgw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cgw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cgw.dir/clean

CMakeFiles/cgw.dir/depend:
	cd /home/sangjun/sj/CGW/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sangjun/sj/CGW /home/sangjun/sj/CGW /home/sangjun/sj/CGW/build /home/sangjun/sj/CGW/build /home/sangjun/sj/CGW/build/CMakeFiles/cgw.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/cgw.dir/depend

