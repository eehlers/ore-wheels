#!/bin/bash

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "BOOST=$BOOST"
echo "ORE=$ORE"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "pwd"
pwd
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "file /home/runner/work/ore-wheels"
file /home/runner/work/ore-wheels
echo "file /home/runner/work/ore-wheels/ore-wheels/boost/boost"
file /home/runner/work/ore-wheels/ore-wheels/boost/boost
echo "file /home/runner/work/ore-wheels/ore-wheels/ore/QuantExt/qle/version.hpp"
file /home/runner/work/ore-wheels/ore-wheels/ore/QuantExt/qle/version.hpp
#echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
#echo "find / -name version.hpp"
#find / -name version.hpp
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "find . -name version.hpp"
find . -name version.hpp
#echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
#echo "find / -name libboost_filesystem.so"
#find / -name libboost_filesystem.so
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "find . -name libboost_filesystem.so"
find . -name libboost_filesystem*.so
#echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
#echo "find boost"
#find boost
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
cd /project/boost/boost/lib
ls -l
ln -s libboost_thread-mt-x64.so libboost_thread.so
ln -s libboost_system-mt-x64.so libboost_system.so
ln -s libboost_serialization-mt-x64.so libboost_serialization.so
ln -s libboost_date_time-mt-x64.so libboost_date_time.so
ln -s libboost_regex-mt-x64.so libboost_regex.so
ln -s libboost_filesystem-mt-x64.so libboost_filesystem.so
ls -l
