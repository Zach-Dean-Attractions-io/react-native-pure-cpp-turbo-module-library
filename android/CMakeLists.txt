cmake_minimum_required(VERSION 3.4.1)
project(PureCppTurboModuleLibrary)

set (CMAKE_VERBOSE_MAKEFILE ON)
set (CMAKE_CXX_STANDARD 14)

add_library(pure-cpp-turbo-module-library            SHARED
            ../cpp/pure-cpp-turbo-module-library.cpp
            cpp-adapter.cpp
)

# Specifies a path to native header files.
include_directories(
            ../cpp
)
