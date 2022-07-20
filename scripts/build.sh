#!/bin/bash -xe

pwd
ls -la
echo "test1111111"

mkdir build && cd build

git submodule update --init

cmake ..
cmake --build .

echo "estsetsetsetset"
ctest -C Debug
echo "donedonedone"

