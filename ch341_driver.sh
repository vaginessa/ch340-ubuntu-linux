#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# Run update software 

sudo  apt-get update

cd 

mkdir driver-ch340

cd driver-ch340/ch340-ubuntu-linux

git clone https://github.com/VanXungUIT/ch340-ubuntu-linux.git 

cd CH341SER_LINUX

sudo apt-get install v4l2loopback-dkms

sudo make

sudo make load

cd

sudo adduser $USER dialout

sudo chmod a+rw /dev/ttyUSB0

sudo chmod a+rw /dev/ttyS1

sudo chmod a+rw /dev/ttyS0
