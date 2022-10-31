#!/bin/bash

echo Bienvenido al escrito para instalar Din Is Noise en Manjaro-ArchLinux




sudo pacman -Sy boost 

sudo pacman -Sy freeglut

sudo pacan -Sy binutils

sudo pacman -Sy mesa

sudo pacman -Sy tcl 

sudo pacman -Sy sdl

sudo adduser $USER audio


wget https://archive.org/download/dinisnoise_source_code/din-55.tar.gz


tar -xvf din-55.tar.gz

echo Configurando DIN

cd din-55/


autoreconf -fvi

#Si quieres usarlo con Jack descomenta la siguiente linea

./configure CXXFLAGS="-O3 -D__UNIX_JACK__" CFLAGS=-O3 LIBS=-ljack

#./configure CXXFLAGS="-O3 -D__LINUX_ALSA__" CFLAGS=-O3

make

sudo make install



