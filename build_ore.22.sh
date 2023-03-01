#!/bin/bash

set -e

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

# Unpack ORE & ORE-SWIG
#tar xfz ore.00.tgz
#tar xfz ore.01.tgz
tar xfz ore.02.tgz
tar xfz oreswig.01.tgz
cp setup.22.py oreswig/OREAnalytics-SWIG/Python/setup.py
cp oreanalytics-config.22 oreswig/OREAnalytics-SWIG/oreanalytics-config
# If you do
# -DCMAKE_BUILD_TYPE=Release
# Or if you run the musllinux build (different optimization),
# you need the hack below.  FIXME variable not properly initialized
cp fxforward.cpp ore/QuantExt/qle/instruments

