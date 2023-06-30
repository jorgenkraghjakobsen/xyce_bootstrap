#!/bin/sh

#Get Xyce latest release 7.6 
wget https://www.myrun.dk/src/Xyce-7.6.tar.gz 

sleep 1

tar zxf Xyce-7.6.tar.gz

cd Xyce-7.6 
cp ../reconfig_xyce_p .
chmod 755 reconfig_xyce_p
mkdir build
cd build
../reconfig_xyce_p 

time make -j$(nproc)

make install 
cd ..




