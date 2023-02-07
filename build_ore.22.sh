#!/bin/bash

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

# Setup Boost
#curl -O -L https://boostorg.jfrog.io/artifactory/main/release/1.80.0/source/boost_1_80_0.tar.gz
#tar xfz boost_1_80_0.tar.gz
#cd boost_1_80_0/tools/build
#./bootstrap.sh
#./b2 install
#cd ../../..

apt-get install libboost-all-dev

# Unpack ORE & ORE-SWIG
tar xfz ore.00.tgz
tar xfz oreswig.01.tgz
cp setup.22.py oreswig/OREAnalytics-SWIG/Python/setup.py
cp oreanalytics-config.22 oreswig/OREAnalytics-SWIG/oreanalytics-config

# Build ORE
cd ore
mkdir build
cd build
cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_DOC=OFF -DBoost_NO_WARN_NEW_VERSIONS=1 -DBoost_NO_SYSTEM_PATHS=1 ..
cmake --build .

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

