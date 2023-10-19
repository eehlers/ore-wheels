#!/bin/bash

set -e

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

# Unpack ORE & ORE-SWIG
tar xfz ore.tgz
#cp exchangerate.hpp ore/QuantLib/ql
tar xfz oreswig.tgz
#cp setup.22.py oreswig/OREAnalytics-SWIG/Python/setup.py
cp oreanalytics-config.22 oreswig/OREAnalytics-SWIG/oreanalytics-config

