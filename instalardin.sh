#!/bin/bash

echo Bienvenido al el scrpit para Instalar Din en Linux Debian y Ubuntu 

echo Recomendado para versiones Ubuntu mayores de 14.04 

echo instalando dependencias 

echo instalando  boost 

sudo apt-get update

sudo apt-get install libboost-all-dev

echo instalando openGL 

sudo apt-get update

sudo apt-get install  freeglut3

sudo apt-get install freeglut3-dev

sudo apt-get install binutils-gold

sudo apt-get install libglew-dev

sudo apt-get install mesa-common-dev

sudo apt-get install libglew1.5-dev libglm-dev

echo instalando sdl 

sudo apt-get install libsdl2-dev

echo instalando tcl 

sudo apt-get install tcl8.5

echo instalando qjackctl 

sudo apt-get install qjackctl

sudo apt-get install libjack-dev  

sudo apt-get install libjack0

sudo apt-get -f install 

echo instalando subversion 

sudo apt-get install subversion

echo descargando codigo fuente de Din

svn checkout svn://jagernot.website/home/svn/din/tags/27a din27a

echo Configurando  din

cd din27a; cp ./src/Makefile.am.linux.tcl85 ./src/Makefile.am; sudo apt-get install dh-autoreconf; autoreconf -fvi; ./configure CXXFLAGS=-O3 CFLAGS=-O3; make 

