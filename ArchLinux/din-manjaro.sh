#!/bin/bash

echo Bienvenido al escrito para instalar Din Is Noise en Manjaro-ArchLinux

echo Instalando Boost
echo ELIGE LA OPCION 1
echo ELIGE LA OPCION 1
echo ELIGE LA OPCION 1 Y PRESIONA ENTER
yaourt boost

echo Instalando DIN IS NOISE en Manjaro 

svn checkout svn://jagernot.website/home/svn/din/wip

cd wip

autoreconf -fvi 


./configure CXXFLAGS="-O3 -D__LINUX_ALSA__" CFLAGS=-O3

make

sudo make install

echo Disfruta 
