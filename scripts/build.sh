#!/bin/bash -xe

mkdir build && cd build
cmake ..
echo "test"
cmake --build .
ctest -C Debug -j 2 --output-on-failure -F
