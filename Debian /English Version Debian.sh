
#!/bin/bash

echo Welcome to the script to install DIN on Debian

echo Instaling Dependencies

echo Instaling boost

sudo apt-get update

sudo apt-get install libboost-all-dev

echo Instaling OpenGL

sudo apt-get install freeglut3

sudo apt-get install freeglut3-dev

sudo apt-get install binutils-gold

sudo apt-get install g++

sudo apt-get install libglew-dev

sudo apt-get install mesa-common-dev

sudo apt-get install libglew1.5-dev libglm-dev

echo Instaling SDL

sudo apt-get install libsdl2-dev

echo Instaling tcl

sudo apt-get install tcl8.5

echo Instaling jack

sudo apt-get install jack

sudo apt-get install libjack-dev

sudo apt-get install libjack0

echo Adding the user to the audio group

sudo adduser $USER audio

echo Rectifying Packages

sudo apt-get -f install

echo Instaling subversion

sudo apt-get install subversion

echo Downloading source code from Din

svn checkout svn://jagernot.website/home/svn/din/tags/27a

echo Configuring Din

cd 27a; cp ./src/Makefile.am.linux.tcl85 ./src/Makefile.am; sudo apt-get install dh-autoreconf; autoreconf -fvi; ./configure CXXFLAGS=-O3 CFLAGS=-O3; make

cd src/

echo To run the Din executable located in / 27a / src first you need to start the jack server
