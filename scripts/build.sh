#!/bin/bash -xe

mkdir build && cd build
cmake ..
cmake --build .
ctest -C Debug

