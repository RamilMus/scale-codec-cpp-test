#!/bin/bash -xe

BUILD_DIR="${BUILD_DIR:?BUILD_DIR variable is not defined}"
BUILD_TARGET="${BUILD_TARGET:-test}"

pwd

cd "$(dirname "$0")/.."

pwd

git submodule update --init

CMAKE_ARGS=( "-B" "${BUILD_DIR}" "$@" )

# see clang-tidy build in ci.yml github workflow
if [ "${BUILD_TARGET}" == "test" ]; then
  CMAKE_ARGS+=( "-DBUILD_TESTS=ON" )
fi
pwd
mkdir build && cd build
pwd
cmake ..
cmake --build . --target "${BUILD_TARGET}"
