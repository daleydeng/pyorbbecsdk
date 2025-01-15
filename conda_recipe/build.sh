#!/bin/sh
rm -rf build
mkdir -p build
cd build

mkdir -p $SP_DIR

cmake ${CMAKE_ARGS} -GNinja $SRC_DIR \
      -DBUILD_TESTING=OFF

cmake --build . --config Release
cp -ar pyorbbecsdk.*.so $SP_DIR/