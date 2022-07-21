#!/bin/bash -xe

mkdir build && cd build
cmake ..
ctest -C Debug
echo "test"
cmake --build .
