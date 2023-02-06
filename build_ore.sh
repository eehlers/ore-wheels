#!/bin/bash
set -e
echo "02 BOOST_ROOT=$BOOST_ROOT"
BOOST_ROOT=/home/runner/work/ore-wheels/ore-wheels/boost/boost
find $BOOST_ROOT -name libboost_filesystem.so

# Setup Boost
#curl -O -L https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.gz
#tar xfz boost_*.tar.gz
#cd boost_*/
#mv boost /usr/local/include/
#cd ..

#apt-get install libboost-all-dev

# Unpack ORE & ORE-SWIG
tar xfz ore.00.tgz
tar xfz oreswig.01.tgz
cp setup.py oreswig/OREAnalytics-SWIG/Python
pwd
find . -name version.hpp
file /home/runner/work/ore-wheels/ore-wheels/ore/QuantExt/qle/version.hpp

# Build ORE
cd ore
mkdir build
cd build
#cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_DOC=OFF -DBoost_NO_WARN_NEW_VERSIONS=1 -DBoost_NO_SYSTEM_PATHS=1 -DBOOST_ROOT=/home/runner/work/ore-wheels/ore-wheels/boost/boost ..
cmake -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_DOC=OFF -DBoost_NO_WARN_NEW_VERSIONS=1 -DBoost_NO_SYSTEM_PATHS=1 ..
cmake --build .

