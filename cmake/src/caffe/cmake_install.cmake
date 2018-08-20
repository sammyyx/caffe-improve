# Install script for directory: /data1/sammy/caffe/src/caffe

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/data1/sammy/caffe/cmake/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/data1/sammy/caffe/include/caffe")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/data1/sammy/caffe/3rdparty/half_float")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/caffe/proto" TYPE FILE FILES "/data1/sammy/caffe/cmake/include/caffe/proto/caffe.pb.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe-nv.so.0.17.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe-nv.so.0.17"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe-nv.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/data1/sammy/caffe/cmake/install/lib:/usr/local/lib:/usr/local/lib64:/opt/libjpeg-turbo/lib32:/usr/local/cuda/lib64")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/data1/sammy/caffe/cmake/lib/libcaffe-nv.so.0.17.0"
    "/data1/sammy/caffe/cmake/lib/libcaffe-nv.so.0.17"
    "/data1/sammy/caffe/cmake/lib/libcaffe-nv.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe-nv.so.0.17.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe-nv.so.0.17"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe-nv.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/usr/local/lib:/usr/local/lib64:/opt/libjpeg-turbo/lib32:/usr/local/cuda/lib64:::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "/data1/sammy/caffe/cmake/install/lib:/usr/local/lib:/usr/local/lib64:/opt/libjpeg-turbo/lib32:/usr/local/cuda/lib64")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/data1/sammy/caffe/cmake/lib/libproto.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe/proto" TYPE PROGRAM FILES
    "/data1/sammy/caffe/cmake/include/caffe/proto/caffe_pb2.py"
    "/data1/sammy/caffe/cmake/__init__.py"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/data1/sammy/caffe/cmake/src/caffe/test/cmake_install.cmake")

endif()

