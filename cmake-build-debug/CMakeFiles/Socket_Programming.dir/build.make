# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Ahmed\CLionProjects\Socket_Programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Socket_Programming.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Socket_Programming.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Socket_Programming.dir/flags.make

CMakeFiles/Socket_Programming.dir/main.cpp.obj: CMakeFiles/Socket_Programming.dir/flags.make
CMakeFiles/Socket_Programming.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Socket_Programming.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Socket_Programming.dir\main.cpp.obj -c C:\Users\Ahmed\CLionProjects\Socket_Programming\main.cpp

CMakeFiles/Socket_Programming.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket_Programming.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\CLionProjects\Socket_Programming\main.cpp > CMakeFiles\Socket_Programming.dir\main.cpp.i

CMakeFiles/Socket_Programming.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket_Programming.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\CLionProjects\Socket_Programming\main.cpp -o CMakeFiles\Socket_Programming.dir\main.cpp.s

CMakeFiles/Socket_Programming.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/Socket_Programming.dir/main.cpp.obj.requires

CMakeFiles/Socket_Programming.dir/main.cpp.obj.provides: CMakeFiles/Socket_Programming.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Socket_Programming.dir\build.make CMakeFiles/Socket_Programming.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/Socket_Programming.dir/main.cpp.obj.provides

CMakeFiles/Socket_Programming.dir/main.cpp.obj.provides.build: CMakeFiles/Socket_Programming.dir/main.cpp.obj


CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj: CMakeFiles/Socket_Programming.dir/flags.make
CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj: ../Server_Side/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Socket_Programming.dir\Server_Side\server.cpp.obj -c C:\Users\Ahmed\CLionProjects\Socket_Programming\Server_Side\server.cpp

CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\CLionProjects\Socket_Programming\Server_Side\server.cpp > CMakeFiles\Socket_Programming.dir\Server_Side\server.cpp.i

CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\CLionProjects\Socket_Programming\Server_Side\server.cpp -o CMakeFiles\Socket_Programming.dir\Server_Side\server.cpp.s

CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.requires:

.PHONY : CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.requires

CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.provides: CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Socket_Programming.dir\build.make CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.provides.build
.PHONY : CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.provides

CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.provides.build: CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj


CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj: CMakeFiles/Socket_Programming.dir/flags.make
CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj: ../Client_Side/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Socket_Programming.dir\Client_Side\client.cpp.obj -c C:\Users\Ahmed\CLionProjects\Socket_Programming\Client_Side\client.cpp

CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\CLionProjects\Socket_Programming\Client_Side\client.cpp > CMakeFiles\Socket_Programming.dir\Client_Side\client.cpp.i

CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\CLionProjects\Socket_Programming\Client_Side\client.cpp -o CMakeFiles\Socket_Programming.dir\Client_Side\client.cpp.s

CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.requires:

.PHONY : CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.requires

CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.provides: CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Socket_Programming.dir\build.make CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.provides.build
.PHONY : CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.provides

CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.provides.build: CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj


# Object files for target Socket_Programming
Socket_Programming_OBJECTS = \
"CMakeFiles/Socket_Programming.dir/main.cpp.obj" \
"CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj" \
"CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj"

# External object files for target Socket_Programming
Socket_Programming_EXTERNAL_OBJECTS =

Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/main.cpp.obj
Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj
Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj
Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/build.make
Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/linklibs.rsp
Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/objects1.rsp
Socket_Programming.exe: CMakeFiles/Socket_Programming.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Socket_Programming.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Socket_Programming.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Socket_Programming.dir/build: Socket_Programming.exe

.PHONY : CMakeFiles/Socket_Programming.dir/build

CMakeFiles/Socket_Programming.dir/requires: CMakeFiles/Socket_Programming.dir/main.cpp.obj.requires
CMakeFiles/Socket_Programming.dir/requires: CMakeFiles/Socket_Programming.dir/Server_Side/server.cpp.obj.requires
CMakeFiles/Socket_Programming.dir/requires: CMakeFiles/Socket_Programming.dir/Client_Side/client.cpp.obj.requires

.PHONY : CMakeFiles/Socket_Programming.dir/requires

CMakeFiles/Socket_Programming.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Socket_Programming.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Socket_Programming.dir/clean

CMakeFiles/Socket_Programming.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ahmed\CLionProjects\Socket_Programming C:\Users\Ahmed\CLionProjects\Socket_Programming C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug C:\Users\Ahmed\CLionProjects\Socket_Programming\cmake-build-debug\CMakeFiles\Socket_Programming.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Socket_Programming.dir/depend

