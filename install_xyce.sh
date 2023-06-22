#!/bin/sh

#Get Xyce latest release 7.6 
wget https://www.myrun.dk/src/Xyce-7.6.tar.gz 

tar xcf Xyce-7.6.tar.gz 

cd Xyce-7.6 
cp ../reconfig_xyce 
chmod 755 reconfig_xyce
mkdir build
cd build
../reconfig_xyce 

time make -j$(nproc)

make install 
cd ..




