#!/bin/bash

set -e

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

# Unpack ORE & ORE-SWIG
#tar xfz ore.00.tgz
#tar xfz ore.01.tgz
#tar xfz ore.02.tgz
tar xfz ore.03.tgz
# Patch a bug in our copy of quantlib
cp exchangerate.hpp ore/QuantLib/ql
cp cpivolatilitystructure.hpp QuantExt/qle/termstructures/inflation/cpivolatilitystructure.hpp
tar xfz oreswig.02.tgz
cp setup.22.py oreswig/OREAnalytics-SWIG/Python/setup.py
cp oreanalytics-config.22 oreswig/OREAnalytics-SWIG/oreanalytics-config

