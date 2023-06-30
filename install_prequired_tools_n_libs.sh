#!/bin/sh 

sudo apt-get install -y make cmake bison flex libfl-dev libfftw3-dev libsuitesparse-dev libblas-dev liblapack-dev libtool g++ gfortran autoconf automake git libopenmpi-dev openmpi-bin 

#Get Trilions 12.12.1
wget https://github.com/trilinos/Trilinos/archive/refs/tags/trilinos-release-12-12-1.tar.gz


tar zxf trilinos-release-12-12-1.tar.gz

cd Trilinos-trilinos-release-12-12-1

cp ../reconfig_trilions .

chmod 755 reconfig_trilions

mkdir build 

cd build 

../reconfig_trilions 

time make -j$(nproc)

make install 



  

