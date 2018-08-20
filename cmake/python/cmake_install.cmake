# Install script for directory: /data1/sammy/caffe/python

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python" TYPE FILE FILES
    "/data1/sammy/caffe/python/classify.py"
    "/data1/sammy/caffe/python/detect.py"
    "/data1/sammy/caffe/python/draw_net.py"
    "/data1/sammy/caffe/python/requirements.txt"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python" TYPE DIRECTORY FILES "/data1/sammy/caffe/python/caffe" FILES_MATCHING REGEX "/[^/]*\\.py$" REGEX "/ilsvrc\\_2012\\_mean\\.npy$" REGEX "/test$" EXCLUDE)
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so"
         RPATH "/data1/sammy/caffe/cmake/install/lib:/usr/local/lib:/usr/local/lib64:/opt/libjpeg-turbo/lib32:/usr/local/cuda/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe" TYPE SHARED_LIBRARY FILES "/data1/sammy/caffe/cmake/lib/_caffe.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so"
         OLD_RPATH "/data1/sammy/caffe/cmake/lib:/usr/local/lib:/usr/local/lib64:/opt/libjpeg-turbo/lib32:/usr/local/cuda/lib64::::::::"
         NEW_RPATH "/data1/sammy/caffe/cmake/install/lib:/usr/local/lib:/usr/local/lib64:/opt/libjpeg-turbo/lib32:/usr/local/cuda/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/python/caffe/_caffe.so")
    endif()
  endif()
endif()

