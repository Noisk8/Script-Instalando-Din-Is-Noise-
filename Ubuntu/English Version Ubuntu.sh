#!/bin/sh

echo Welcome to the script to install DIN on Ubuntu

echo Installing Dependencies

echo Installing boost

sudo apt install libboost-all-dev

echo Installing openGL

sudo apt update

sudo apt install freeglut3

sudo apt install freeglut3-dev

sudo apt install binutils-gold

sudo apt install g++

sudo apt install libglew-dev

sudo apt install mesa-common-dev

sudo apt install libglew1.5-dev libglm-dev

echo Installing SDL

sudo apt install libsdl

sudo apt install libsdl-dev

echo Installing tcl

sudo apt install tcl8.5

sudo apt install tcl8.5-dev

echo Installing jack

sudo apt install jack

sudo apt install libjackd2

sudo apt install libjack-jackd2-dev

echo Adding the user to the audio group

sudo adduser $USER audio

echo Rectifying packages

sudo apt-get -f install

echo Installing subversion and autoreconf

sudo apt install subversion

sudo apt install dh-autoreconf

echo Downloading DIN source code

svn checkout svn://jagernot.website/home/svn/din/trunk

echo Configuring DIN

cd trunk; autoreconf -fvi; ./configure CXXFLAGS="-O3 -D__UNIX_JACK__" CFLAGS=-O3; make

cd src/

echo reboot


