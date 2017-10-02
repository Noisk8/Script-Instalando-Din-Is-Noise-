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

sudo apt-get install g++

sudo apt-get install libglew-dev

sudo apt-get install mesa-common-dev

sudo apt-get install libglew1.5-dev libglm-dev

echo Instalando sdl

sudo apt-get install libsdl2-dev

echo Instalando tcl

sudo apt-get install tcl8.5

sudo apt-get install tcl8.5-dev

echo Instalando jack

sudo apt-get install jack

sudo apt-get install libjack-dev

sudo apt-get install libjack0

echo Agregando el usuario al grupo audio

sudo adduser $USER audio

echo Rectificando paquetes

sudo apt-get -f install

echo Instalando subversion

sudo apt-get install subversion

echo Descargando codigo fuente de Din

svn checkout svn://jagernot.website/home/svn/din/trunk/

echo Configurando Din

cd trunk/;  sudo apt-get install dh-autoreconf; autoreconf -fvi; ./configure CXXFLAGS="-O3 -D__UNIX_JACK__" CFLAGS=-O3
; make

echo Para Correr el ejecutacle de Din ubicado en /trunk/src/
