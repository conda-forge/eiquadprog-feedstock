#!/bin/sh

mkdir build
cd build

cmake .. \
      ${CMAKE_ARGS} \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_TESTING=OFF

make -j${CPU_COUNT}
make install
