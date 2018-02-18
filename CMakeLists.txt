cmake_minimum_required(VERSION 3.9)
project(DoNotStarve)

set(CMAKE_CXX_STANDARD 11)

add_executable(DoNotStarve UserInput.h Game.cpp Game.h)