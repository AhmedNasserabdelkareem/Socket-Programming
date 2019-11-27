cmake_minimum_required(VERSION 3.15)
project(untitled4)

set(CMAKE_CXX_STANDARD 14)
SET(CMAKE_CXX_FLAGS -pthread)

add_executable(untitled4 main.cpp Client.cpp Client.h )