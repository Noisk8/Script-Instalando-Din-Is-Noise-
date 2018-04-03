#!/bin/bash

echo Instalando Boost

echo ELIGE LA OPCION 1 

yaourt boost

echo Instalando DIN IS NOISE en Manjaro 

svn checkout svn://jagernot.website/home/svn/din/wip

cd wip

autoreconf -fvi 


./configure CXXFLAGS="-O3 -D__LINUX_ALSA__" CFLAGS=-O3

make

sudo make install
