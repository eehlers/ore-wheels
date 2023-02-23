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

