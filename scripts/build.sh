#!/bin/bash -xe

pwd
ls -la
echo "test1111111"

mkdir build && cd build
pwd
echo "hhhhhh"
git submodule update --init

cmake ..
pwd
echo "hhhhhh"
cmake --build .

echo "estsetsetsetset"
cd ..
pwd
echo "hhhhhh"
ctest -C Debug
echo "donedonedone"

