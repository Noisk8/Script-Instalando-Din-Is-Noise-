#!/bin/bash

echo Bienvenido al scrpit para Instalar Din en Debian

echo Instalando dependencias

echo Instalando boost

sudo apt-get update

sudo apt-get install libboost-all-dev

echo Instalando openGL

sudo apt-get update

sudo apt-get install freeglut3

sudo apt-get install freeglut3-dev

sudo apt-get install binutils-gold

sudo apt-get install libglew-dev

sudo apt-get install mesa-common-dev

sudo apt-get install libglew1.5-dev libglm-dev

echo Instalando sdl

sudo apt-get install libsdl1.2-dev

echo Instalando tcl

sudo apt-get install tcl8.5

sudo apt-get install tcl8.5-dev

sudo apt-get install tcl-dev

echo Instalando jack

sudo apt-get install jack

sudo apt-get install libjack-dev

sudo apt-get install libjack-jackd2-dev

sudo apt-get install libjackd2

echo Agregando el usuario al grupo audio

sudo adduser $USER audio

echo Rectificando paquetes

sudo apt --fix-broken install

echo Instalando subversion

sudo apt-get install subversion

echo Instalando autoreconf y g++

sudo apt-get install g++

sudo apt-get install dh-autoreconf

echo Descargando codigo fuente de Din

wget https://archive.org/download/dinisnoise_source_code/din-56.tar.gz

tar -xvf din-56.tar.gz

echo Configurando DIN

cd din-56/


autoreconf -fvi

#Si quieres usarlo con Jack descomenta la siguiente linea

./configure CXXFLAGS="-O3 -D__UNIX_JACK__" CFLAGS=-O3 LIBS=-ljack

#./configure CXXFLAGS="-O3 -D__LINUX_ALSA__" CFLAGS=-O3

make

sudo make install

echo Ejecuta din en la terminal y disfruta!

