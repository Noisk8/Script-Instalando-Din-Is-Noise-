#!/bin/bash

echo Bienvenidos al script para instalar DIN en Ubuntu

echo Instalando dependencias

echo Instalando boost

sudo apt-get update

sudo apt-get install libboost-all-dev -y

echo Instalando openGL

sudo apt-get update

sudo apt-get install freeglut3 -y

sudo apt-get install freeglut3-dev -y

sudo apt-get install binutils-gold -y

sudo apt-get install libglew-dev -y

sudo apt-get install mesa-common-dev -y

sudo apt-get install libglew1.5-dev libglm-dev -y

echo Instalando sdl

sudo apt-get install libsdl-dev -y

echo Instalando tcl

sudo apt-get install tcl-dev -y

echo Instalando jack

sudo apt-get install jack -y

sudo apt-get install libjack-dev -y

sudo apt-get install libjackd2 -y

sudo apt-get install libjack-jackd2-dev -y

echo Agregando usuario al grupo audio

sudo adduser $USER audio

echo Rectificando paquetes

sudo apt-get -f install

echo Instalando subversion

sudo apt-get install subversion

echo Instalando autoreconf y g++ -y

sudo apt-get install g++ -y

sudo apt-get install dh-autoreconf -y

echo Descargando código fuente de DIN
                                                                                                            
wget -c https://archive.org/download/dinisnoise_source_code/din-49.1.tar.gz

tar -xvf din-49.1.tar.gz

echo Configurando DIN

cd din-49.1/

autoreconf -fvi

#Si quieres usarlo con Jack descomenta la siguiente linea

#./configure CXXFLAGS="-O3 -D__UNIX_JACK__" CFLAGS=-O3 LIBS=-ljack

./configure CXXFLAGS="-O3 -D__LINUX_ALSA__" CFLAGS=-O3

make

sudo make install

echo Es recomendable que reinicies tu ordenador y al retornar Ejecuta din en la terminal y disfruta
