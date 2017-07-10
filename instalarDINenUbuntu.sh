
#!/bin/bash

echo Bienvenidos al script para instalar DIN en Ubuntu

echo Instalando dependencias

echo installling  boost 

sudo apt-get update

sudo apt-get install libboost-all-dev

echo installing openGL 

sudo apt-get update

sudo apt-get install  freeglut3

sudo apt-get install freeglut3-dev

sudo apt-get install binutils-gold

sudo apt-get install libglew-dev

sudo apt-get install mesa-common-dev

sudo apt-get install libglew1.5-dev libglm-dev

echo instalando sdl 

sudo apt-get install libsdl-dev

echo installando tcl 

sudo apt-get install tcl-dev

echo instalandojack & qjackctl 

sudo apt-get install jack

sudo apt-get install qjackctl

sudo apt-get install libjack-dev  

sudo apt-get install libjack0

echo Agregando usuario al grupo audio

sudo adduser $USER audio

echo Recttificando paquetes

sudo apt-get -f install 

echo instalando subversion 

sudo apt-get install subversion

echo Descargando codigo fuente de DIN 

svn checkout svn://jagernot.website/home/svn/din/tags/27a 

echo COnfigurando DIN

cd 27a; cp ./src/Makefile.am.linux.tcl85 ./src/Makefile.am; sudo apt-get install dh-autoreconf; autoreconf -fvi; ./configure CXXFLAGS=-O3 CFLAGS=-O3; make 

echo Reinicia tu equipo
