#!/bin/bash -xe

CMAKE_ARGS+=( "-DBUILD_TESTS=ON" )

mkdir build && cd build
pwd
git submodule update --init

cmake ..
cmake --build .

echo "estsetsetsetset"
ctest -C Debug
echo "donedonedone"

