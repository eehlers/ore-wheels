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
#./bootstrap.sh --with-libraries=date_time,filesystem,regex,serialization,system,thread,timer
./bootstrap.sh
./b2 install
cd ..

# Build ORE
cd ore
mkdir build
cd build
cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_DOC=OFF ..
#cmake -G Ninja -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_DOC=OFF ..
cmake --build .
cmake --install .

