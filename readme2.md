

# Check usb serial 

lsusb
#output command: Inportant ID 8087:0a2a. It is idVendor and idProduct />>
 
Bus 001 Device 005: ID 8087:0a2a Intel Corp. 

#command show ATTRS {serial} :
udevadm info -a -n /dev/ttyUSB* | '{serial}' | head -n1

#out command:
ATTRS{serial}=="AL00FNEH"



#  Add file 

sudo nano /etc/udev/rules.d 

# Add Folowing 
SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="60016001", ATTRS{serial}=="A6008isP", SYMLINK+="ttyLocker"
SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="A7004IXj", SYMLINK+="ttyLocker"
SUBSYSTEM=="tty", ATTRS{serial}=="0000:00:15.0", SYMLINK+="ttyLocker"
SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="AL00FNEH", SYMLINK+="ttyLocker"

#Reload usb device

sudo udevadm trigger


