cmake_minimum_required(VERSION 3.10)
project(Socket_Programming)

set(CMAKE_CXX_STANDARD 11)

add_executable(Socket_Programming main.cpp Server_Side/Server.cpp Server_Side/Server.h Client_Side/client.cpp Client_Side/client.h Server_Side/MainS.cpp Client_Side/MainC.cpp)