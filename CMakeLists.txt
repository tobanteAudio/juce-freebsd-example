cmake_minimum_required (VERSION 3.8)
project (juce-freebsd LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(CompilerOptions)
include(CompilerWarnings)
include(Juce)

add_subdirectory(static_library)
#add_subdirectory(console_app)

