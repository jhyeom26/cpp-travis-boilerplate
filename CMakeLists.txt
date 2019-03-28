cmake_minimum_required(VERSION 3.9)
project(travis-test LANGUAGES CXX)

add_library(mylib
  STATIC
    src/mylib.cpp
)

target_include_directories(mylib
  PUBLIC
    include
)

# if(test)
#   enable_testing()
# endif()
