#!/bin/bash

echo Bienvenidos al script para instalar DIN en Ubuntu

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

sudo apt-get install libsdl-dev

echo Instalando tcl

sudo apt-get install tcl-dev

echo Instalando jack

sudo apt-get install jack

sudo apt-get install libjack-dev

sudo apt-get install libjack0

echo Agregando usuario al grupo audio

sudo adduser $USER audio

echo Rectificando paquetes

sudo apt-get -f install

echo Instalando subversion

sudo apt-get install subversion

echo Descargando código fuente de DIN

svn checkout svn://jagernot.website/home/svn/din/tags/27a

echo Configurando DIN

cd 27a; cp ./src/Makefile.am.linux.tcl85 ./src/Makefile.am; sudo apt-get install dh-autoreconf; autoreconf -fvi; ./configure CXXFLAGS=-O3 CFLAGS=-O3; make

cd src/

echo  Para Correr el ejecutacle de Din ubicado en /27a/src primero necesitas iniciar el servidor de jack
