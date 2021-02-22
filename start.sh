#!/bin/bash

# github.com/skyrockettoys/sonix
# build will be in image/dashcam/FIRMWARE_660R.bin

sudo apt-get install libc6:i386
sudo apt-get install zlib1g:i386
sudo apt-get install libencode-detect-perl
sudo apt-get install libdigest-crc-perl
sudo pip install -U pymavlink==2.2.10
cd buildscript
git submodule init
git submodule update
make oldconfig
make clean
make mavlnk
make
make install
sudo pip uninstall pymavlink
sudo pip install pymavlink
