#!/bin/bash

set -e

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

CURRENT_DIR=$(pwd)

curl -O -L https://www.zlib.net/zlib-1.3.tar.gz
tar xzvf zlib-1.3.tar.gz
cd zlib-1.3
./configure
make
cd ..

# Setup Boost
curl -O -L https://boostorg.jfrog.io/artifactory/main/release/1.80.0/source/boost_1_80_0.tar.gz
tar xfz boost_1_80_0.tar.gz
cd boost_1_80_0
./bootstrap.sh --with-libraries=date_time,eigen,filesystem,iostreams,regex,serialization,system,thread,timer
./b2 install -sZLIB_SOURCE=$CURRENT_DIR/zlib-1.3
cd ..

# Build ORE
cd ore
mkdir build
cd build
export ZLIB_ROOT=$CURRENT_DIR/zlib-1.3
#cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DORE_USE_ZLIB=ON -DORE_BUILD_DOC=OFF -DORE_BUILD_EXAMPLES=OFF -DORE_BUILD_TESTS=OFF -DORE_BUILD_APP=OFF -DQL_BUILD_BENCHMARK=OFF -DQL_BUILD_EXAMPLES=OFF -DQL_BUILD_TEST_SUITE=OFF -DCMAKE_BUILD_TYPE=Release ..
cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DORE_USE_ZLIB=ON -DORE_BUILD_DOC=OFF -DORE_BUILD_EXAMPLES=OFF -DORE_BUILD_TESTS=OFF -DORE_BUILD_APP=OFF -DQL_BUILD_BENCHMARK=OFF -DQL_BUILD_EXAMPLES=OFF -DQL_BUILD_TEST_SUITE=OFF -DQL_ENABLE_SESSIONS=ON -DCMAKE_BUILD_TYPE=Release ..
#cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DORE_USE_ZLIB=ON -DORE_BUILD_DOC=OFF -DORE_BUILD_EXAMPLES=OFF -DORE_BUILD_TESTS=OFF -DORE_BUILD_APP=OFF -DQL_BUILD_BENCHMARK=OFF -DQL_BUILD_EXAMPLES=OFF -DQL_BUILD_TEST_SUITE=OFF -DQL_ENABLE_SESSIONS=OFF -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -j4
cmake --install .

