#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# Run update software

# Add group with ipput usb
sudo adduser $USER dialout

# Fix permission input barcode
sudo chmod 755 /dev/input/event0

# Fix permission  Input USB
sudo chmod a+rw /dev/ttyUSB0

sudo chmod a+rw /dev/ttyUSB1
 
sudo chmod a+rw /dev/ttyS1

sudo chmod a+rw /dev/ttyS0


