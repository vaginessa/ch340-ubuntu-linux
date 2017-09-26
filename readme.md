-------
cd 
mkdir driver
cd driver
git clone https://github.com/VanXungUIT/ch340-ubuntu-linux.git
Step 1:

sudo apt-get install linux-generic

Step 2:

sudo apt-get install v4l2loopback-dkms

Step 3: 

sudo make 

sudo make load




















==================================

Fix serial Permission in Linux

Run the command:

sudo adduser locker-ghn dialout

After:

sudo chmod a+rw /dev/ttyUSB0 or ttyS0, ttyS1, .... 
