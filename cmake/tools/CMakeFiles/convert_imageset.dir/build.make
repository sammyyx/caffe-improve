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
include tools/CMakeFiles/convert_imageset.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/convert_imageset.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/convert_imageset.dir/flags.make

tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o: tools/CMakeFiles/convert_imageset.dir/flags.make
tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o: ../tools/convert_imageset.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data1/sammy/caffe/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o"
	cd /data1/sammy/caffe/cmake/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o -c /data1/sammy/caffe/tools/convert_imageset.cpp

tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convert_imageset.dir/convert_imageset.cpp.i"
	cd /data1/sammy/caffe/cmake/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data1/sammy/caffe/tools/convert_imageset.cpp > CMakeFiles/convert_imageset.dir/convert_imageset.cpp.i

tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convert_imageset.dir/convert_imageset.cpp.s"
	cd /data1/sammy/caffe/cmake/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data1/sammy/caffe/tools/convert_imageset.cpp -o CMakeFiles/convert_imageset.dir/convert_imageset.cpp.s

tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.requires:

.PHONY : tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.requires

tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.provides: tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/convert_imageset.dir/build.make tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.provides.build
.PHONY : tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.provides

tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.provides.build: tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o


# Object files for target convert_imageset
convert_imageset_OBJECTS = \
"CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o"

# External object files for target convert_imageset
convert_imageset_EXTERNAL_OBJECTS =

tools/convert_imageset: tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o
tools/convert_imageset: tools/CMakeFiles/convert_imageset.dir/build.make
tools/convert_imageset: lib/libcaffe-nv.so.0.17.0
tools/convert_imageset: lib/libproto.a
tools/convert_imageset: /usr/local/lib/libboost_system.so
tools/convert_imageset: /usr/local/lib/libboost_thread.so
tools/convert_imageset: /usr/local/lib/libboost_filesystem.so
tools/convert_imageset: /usr/local/lib/libboost_regex.so
tools/convert_imageset: /usr/local/lib64/libglog.so
tools/convert_imageset: /usr/local/lib/libgflags.so
tools/convert_imageset: /usr/lib64/libprotobuf.so
tools/convert_imageset: /usr/local/lib64/libglog.so
tools/convert_imageset: /usr/local/lib/libgflags.so
tools/convert_imageset: /usr/lib64/libprotobuf.so
tools/convert_imageset: /usr/lib64/libhdf5_cpp.so
tools/convert_imageset: /usr/lib64/libhdf5.so
tools/convert_imageset: /usr/lib64/libz.so
tools/convert_imageset: /usr/lib64/libdl.so
tools/convert_imageset: /usr/lib64/libm.so
tools/convert_imageset: /usr/lib64/libhdf5_hl_cpp.so
tools/convert_imageset: /usr/lib64/libhdf5_hl.so
tools/convert_imageset: /usr/lib64/liblmdb.so
tools/convert_imageset: /usr/lib64/libleveldb.so
tools/convert_imageset: /usr/lib64/libsnappy.so
tools/convert_imageset: /opt/libjpeg-turbo/lib32/libturbojpeg.so.0
tools/convert_imageset: /usr/local/cuda/lib64/libcudart.so
tools/convert_imageset: /usr/local/cuda/lib64/libcurand.so
tools/convert_imageset: /usr/local/cuda/lib64/libcublas.so
tools/convert_imageset: /usr/local/cuda/lib64/libcublas_device.a
tools/convert_imageset: /usr/local/cuda/lib64/libcudnn.so
tools/convert_imageset: /usr/lib64/libopencv_imgproc.so
tools/convert_imageset: /usr/lib64/libopencv_highgui.so
tools/convert_imageset: /usr/lib64/libopencv_core.so
tools/convert_imageset: /usr/lib64/libopenblas.so
tools/convert_imageset: /usr/local/lib/libboost_python27.so
tools/convert_imageset: /usr/lib64/libpython2.7.so
tools/convert_imageset: /usr/local/lib/libnccl.so
tools/convert_imageset: /usr/lib64/libnvidia-ml.so
tools/convert_imageset: tools/CMakeFiles/convert_imageset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data1/sammy/caffe/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable convert_imageset"
	cd /data1/sammy/caffe/cmake/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convert_imageset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/convert_imageset.dir/build: tools/convert_imageset

.PHONY : tools/CMakeFiles/convert_imageset.dir/build

tools/CMakeFiles/convert_imageset.dir/requires: tools/CMakeFiles/convert_imageset.dir/convert_imageset.cpp.o.requires

.PHONY : tools/CMakeFiles/convert_imageset.dir/requires

tools/CMakeFiles/convert_imageset.dir/clean:
	cd /data1/sammy/caffe/cmake/tools && $(CMAKE_COMMAND) -P CMakeFiles/convert_imageset.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/convert_imageset.dir/clean

tools/CMakeFiles/convert_imageset.dir/depend:
	cd /data1/sammy/caffe/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data1/sammy/caffe /data1/sammy/caffe/tools /data1/sammy/caffe/cmake /data1/sammy/caffe/cmake/tools /data1/sammy/caffe/cmake/tools/CMakeFiles/convert_imageset.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/convert_imageset.dir/depend
