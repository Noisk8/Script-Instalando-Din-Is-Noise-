
#!/bin/bash

echo Welcome to the Din install script X Debian and Ubuntu based GNULinux operating systems

echo Installing dependencies

echo installling  boost 

sudo apt-get update

sudo apt-get install libboost-all-dev

echo installing openGL 

sudo apt-get update

sudo apt-get install  freeglut3

sudo apt-get install freeglut3-dev

sudo apt-get install binutils-gold

sudo apt-get install g++

sudo apt-get install libglew-dev

sudo apt-get install mesa-common-dev

sudo apt-get install libglew1.5-dev libglm-dev

echo installing sdl 

sudo apt-get install libsdl2-dev

sudo apt-get install libsdl-dev

echo installing tcl 

sudo apt-get install tcl8.5

echo installing jack & qjackctl 

sudo apt-get install jack

sudo apt-get install qjackctl

sudo apt-get install libjack-dev  

sudo apt-get install libjack0

echo Adding the user to the audio group

sudo adduser $USER audio

echo Rectifying packages 

sudo apt-get -f install 

echo installing subversion 

sudo apt-get install subversion

echo Downloading DIN source code

svn checkout svn://jagernot.website/home/svn/din/tags/27a 

echo setup DIN

cd 27a; cp ./src/Makefile.am.linux.tcl85 ./src/Makefile.am; sudo apt-get install dh-autoreconf; autoreconf -fvi; ./configure CXXFLAGS=-O3 CFLAGS=-O3; make 

echo Reboot your System :)
