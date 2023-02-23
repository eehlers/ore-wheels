#!/bin/bash

set -e

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

# Setup Boost
curl -O -L https://boostorg.jfrog.io/artifactory/main/release/1.80.0/source/boost_1_80_0.tar.gz
tar xfz boost_1_80_0.tar.gz
cd boost_1_80_0
# FIXME the below fails because boost_serialization can't find boost_unit_test_framework?
./bootstrap.sh --with-libraries=date_time,filesystem,regex,serialization,system,thread,timer
# With unit_test_framework - have not yet tried this one
#./bootstrap.sh --with-libraries=date_time,filesystem,regex,serialization,system,thread,timer,unit_test_framework
#./bootstrap.sh
./b2 install
cd ..

# Build ORE
cd ore
mkdir build
cd build
#cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DORE_BUILD_DOC=OFF -DORE_BUILD_EXAMPLES=OFF -DORE_BUILD_TESTS=OFF -DORE_BUILD_APP=OFF -DQL_BUILD_EXAMPLES=OFF -DQL_BUILD_TEST_SUITE=OFF ..
cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DORE_BUILD_DOC=OFF -DORE_BUILD_EXAMPLES=OFF -DORE_BUILD_TESTS=OFF -DORE_BUILD_APP=OFF -DQL_BUILD_BENCHMARK=OFF -DQL_BUILD_EXAMPLES=OFF -DQL_BUILD_TEST_SUITE=OFF ..
cmake --build . -j 4
cmake --install .

