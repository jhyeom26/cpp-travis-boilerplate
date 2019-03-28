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

if(test)
  enable_testing()

  include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
  conan_basic_setup(TARGETS)

  add_executable(mylib-test
    src/mylib_test.cpp
  )

  target_link_libraries(mylib-test
    PRIVATE
      mylib
      CONAN_PKG::gtest
  )

  add_test(NAME MylibTest COMMAND mylib-test)
endif()
