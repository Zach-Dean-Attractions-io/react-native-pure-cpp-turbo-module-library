cmake_minimum_required(VERSION 3.4.1)
project(PureCppTurboModuleLibrary)

set (CMAKE_VERBOSE_MAKEFILE ON)

add_library(
    pure-cpp-turbo-module-library
    STATIC
    ../cpp/PureCppImpl.cpp
)

# Specifies a path to native header files.
target_include_directories(
    pure-cpp-turbo-module-library
    PUBLIC
    ../cpp
)

target_link_libraries(
    pure-cpp-turbo-module-library
    jsi
    reactnative
    react_codegen_RNPureCppTurboModuleLibrarySpec
)