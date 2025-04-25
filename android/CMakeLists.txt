cmake_minimum_required(VERSION 3.13)

project(PureCppTurboModuleLibrary)

add_library(pure-cpp-turbo-module-library SHARED ../cpp/PureCppImpl.cpp)

# Specifies paths to native header files.
include_directories(
            ../cpp
            generated/jni
)
