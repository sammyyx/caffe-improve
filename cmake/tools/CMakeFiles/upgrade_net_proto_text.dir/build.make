# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data1/sammy/caffe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data1/sammy/caffe/cmake

# Include any dependencies generated for this target.
include tools/CMakeFiles/upgrade_net_proto_text.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/upgrade_net_proto_text.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/upgrade_net_proto_text.dir/flags.make

tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o: tools/CMakeFiles/upgrade_net_proto_text.dir/flags.make
tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o: ../tools/upgrade_net_proto_text.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data1/sammy/caffe/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o"
	cd /data1/sammy/caffe/cmake/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o -c /data1/sammy/caffe/tools/upgrade_net_proto_text.cpp

tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.i"
	cd /data1/sammy/caffe/cmake/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data1/sammy/caffe/tools/upgrade_net_proto_text.cpp > CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.i

tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.s"
	cd /data1/sammy/caffe/cmake/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data1/sammy/caffe/tools/upgrade_net_proto_text.cpp -o CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.s

tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.requires:

.PHONY : tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.requires

tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.provides: tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/upgrade_net_proto_text.dir/build.make tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.provides.build
.PHONY : tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.provides

tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.provides.build: tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o


# Object files for target upgrade_net_proto_text
upgrade_net_proto_text_OBJECTS = \
"CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o"

# External object files for target upgrade_net_proto_text
upgrade_net_proto_text_EXTERNAL_OBJECTS =

tools/upgrade_net_proto_text: tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o
tools/upgrade_net_proto_text: tools/CMakeFiles/upgrade_net_proto_text.dir/build.make
tools/upgrade_net_proto_text: lib/libcaffe-nv.so.0.17.0
tools/upgrade_net_proto_text: lib/libproto.a
tools/upgrade_net_proto_text: /usr/local/lib/libboost_system.so
tools/upgrade_net_proto_text: /usr/local/lib/libboost_thread.so
tools/upgrade_net_proto_text: /usr/local/lib/libboost_filesystem.so
tools/upgrade_net_proto_text: /usr/local/lib/libboost_regex.so
tools/upgrade_net_proto_text: /usr/local/lib64/libglog.so
tools/upgrade_net_proto_text: /usr/local/lib/libgflags.so
tools/upgrade_net_proto_text: /usr/lib64/libprotobuf.so
tools/upgrade_net_proto_text: /usr/local/lib64/libglog.so
tools/upgrade_net_proto_text: /usr/local/lib/libgflags.so
tools/upgrade_net_proto_text: /usr/lib64/libprotobuf.so
tools/upgrade_net_proto_text: /usr/lib64/libhdf5_cpp.so
tools/upgrade_net_proto_text: /usr/lib64/libhdf5.so
tools/upgrade_net_proto_text: /usr/lib64/libz.so
tools/upgrade_net_proto_text: /usr/lib64/libdl.so
tools/upgrade_net_proto_text: /usr/lib64/libm.so
tools/upgrade_net_proto_text: /usr/lib64/libhdf5_hl_cpp.so
tools/upgrade_net_proto_text: /usr/lib64/libhdf5_hl.so
tools/upgrade_net_proto_text: /usr/lib64/liblmdb.so
tools/upgrade_net_proto_text: /usr/lib64/libleveldb.so
tools/upgrade_net_proto_text: /usr/lib64/libsnappy.so
tools/upgrade_net_proto_text: /opt/libjpeg-turbo/lib32/libturbojpeg.so.0
tools/upgrade_net_proto_text: /usr/local/cuda/lib64/libcudart.so
tools/upgrade_net_proto_text: /usr/local/cuda/lib64/libcurand.so
tools/upgrade_net_proto_text: /usr/local/cuda/lib64/libcublas.so
tools/upgrade_net_proto_text: /usr/local/cuda/lib64/libcublas_device.a
tools/upgrade_net_proto_text: /usr/local/cuda/lib64/libcudnn.so
tools/upgrade_net_proto_text: /usr/lib64/libopencv_imgproc.so
tools/upgrade_net_proto_text: /usr/lib64/libopencv_highgui.so
tools/upgrade_net_proto_text: /usr/lib64/libopencv_core.so
tools/upgrade_net_proto_text: /usr/lib64/libopenblas.so
tools/upgrade_net_proto_text: /usr/local/lib/libboost_python27.so
tools/upgrade_net_proto_text: /usr/lib64/libpython2.7.so
tools/upgrade_net_proto_text: /usr/local/lib/libnccl.so
tools/upgrade_net_proto_text: /usr/lib64/libnvidia-ml.so
tools/upgrade_net_proto_text: tools/CMakeFiles/upgrade_net_proto_text.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data1/sammy/caffe/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable upgrade_net_proto_text"
	cd /data1/sammy/caffe/cmake/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/upgrade_net_proto_text.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/upgrade_net_proto_text.dir/build: tools/upgrade_net_proto_text

.PHONY : tools/CMakeFiles/upgrade_net_proto_text.dir/build

tools/CMakeFiles/upgrade_net_proto_text.dir/requires: tools/CMakeFiles/upgrade_net_proto_text.dir/upgrade_net_proto_text.cpp.o.requires

.PHONY : tools/CMakeFiles/upgrade_net_proto_text.dir/requires

tools/CMakeFiles/upgrade_net_proto_text.dir/clean:
	cd /data1/sammy/caffe/cmake/tools && $(CMAKE_COMMAND) -P CMakeFiles/upgrade_net_proto_text.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/upgrade_net_proto_text.dir/clean

tools/CMakeFiles/upgrade_net_proto_text.dir/depend:
	cd /data1/sammy/caffe/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data1/sammy/caffe /data1/sammy/caffe/tools /data1/sammy/caffe/cmake /data1/sammy/caffe/cmake/tools /data1/sammy/caffe/cmake/tools/CMakeFiles/upgrade_net_proto_text.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/upgrade_net_proto_text.dir/depend
