DIN Is Noise, un software en el que Jagnnathan ha estado trabajando por más de 10 años. Originalmente se inspiraron para hacer un instrumento electrónico para usar el ratón del ordenador como un arco para tocar la música clásica india, una tradición musical totalmente microtonal. El software evolucionó para incluir drones microtonales y sus modulaciones a través de transformaciones geométricas animadas en el plano 2D. DIN también incluye Mondrian, un instrumento inspirado en las obras de Piet Mondrian, donde una caja [una caja de vectores en realidad cuya horizontal va de tono microtonal a octava y vertical va de tono a octava] se divide en más cajas con bolas rebotando en sus paredes o techos que emiten Microtones basados en la posición del impacto. El timbre de todo el sonido es proporcionado por las formas de onda de la curva de Bezier, los portadores y los moduladores son formas de onda de la curva de Bezier también las formas 2D pares pueden ser convertidas en formas de onda.

Ver + en http://dinisnoise.org/

Este script te facilitará las cosas para instalar Din Is Noise en Operativos GNU/linux, a grandes rasgos el script se encarga de descargar las dependencias necesarias del software, descargar el código fuente de Din y compilarlo.

Para poner a correr el script necesitamos varias cosas, lo primero es tener el script en tu ordenador.

Dependiendo de tu distro (Debian, Ubuntu o ArchLinux) elijes el script correspondiente.

Puedes obtenerlo 1 creando un archivo vacío en tu laptop y agregando el código correspondiente a tu distro Debian o Ubuntu y llamarlo Ejemplo Debian.sh cómo está en el repositorio.

2 Clonando o descargando todo el Repositorio, el resultado es un Script-Instalando-Din-Is-Noise--master.zip, lo extraes y queda una carpeta con el mismo nombre.

Después de tener el archivo.sh abrimos una terminal para ejecutar un comando que nos de los permisos requeridos por el sistema para ejecutarlo, vamos a la carpeta donde la tenemos ubicado y corremos el siguiente comando

Ejemplo: si el repositorio quedo en descargas la ruta seria algo similar a esto

cd /home/usuario/Descargas/Script-Instalando-Din-Is-Noise--master.

Luego vamos a la carpeta correspondiente a nuestra distro

cd Ubuntu/

chmod +x Ubuntu.sh

Ahora tendremos el script listo para ser ejecutable.

Para ejecutarlo hacemos el siguiente comando

./Ubuntu.sh

posteriormente pedirá la contraseña, ya que necesita permisos de super usuario para instalar las dependencias....

Nota:

El resultado de todo este proceso es una carpeta llamada wip "la ultima versión estable de Din" dentro de ella se se encuentra otra carpeta llamada src la cual contiene el archivo ejecutable de Din.

Nota: El script automaticamente se compilara con alsa, si deseas que corra para jack debes decomentar la linea 

#./configure CXXFLAGS="-O3 -D__UNIX_JACK__" CFLAGS=-O3

y comentar la linea de alsa

Para que Din corra con jack, puedes habilitar el servidor de jack con el comando.

jackd -R -d alsa

Luego puedes ejecutar din en la terminal.

____________
En ArchLinux
------------

Probé instalar Din Is Noise en manjaro 17.1 y es más simple de lo que esperaba, Manjaro viene con "casi" todos las librerias [ sdl tcl opengl ] necesarios instalados.

En mi caso solo uve la necesidad de instalar manualmente boost y luego compilar el código fuente.

También tuve que solucionar algunas conflictos para arrancar con el servidor de jack uno de ellos la ausencia de la linea ( @audio  - rtprio  99 )  en el archivo limits.conf ubicado en /etc/security

Para editar el archivo vamos a necesitar permisos de super usuario entonces vamos a utilizar sudo  para pedir permiso y nano como editor de texto, con la siguiente linea

sudo nano /etc/security/limits.conf

bajamos hasta el final del archivo  y agregamos la linea

@audio  - rtprio  99

Luego tuve que activar agregar el usuario al grupo de audio

sudo usermod -a -G audio nombredelusuario

Arrancar el servidor jac con el comando 

jackd -d alsa 


English\\\\\

DIN Is Noise, a software in which Jagnnathan has been working for over 10 years. They were originally inspired to make an electronic instrument to use the computer mouse as a bow to play Indian classical music, a totally microtonal musical tradition. The software evolved to include microtonal drones and their modulations through animated geometric transformations in the 2D plane. DIN also includes Mondrian, an instrument inspired by the works of Piet Mondrian, where a box [a vector box in reality whose horizontal goes from microtonal to octave tone and vertical goes from tone to octave] is divided into more boxes with balls bouncing on Its walls or ceilings that emit Microtones based on the position of the impact. The timbre of all sound is provided by the waveforms of the Bezier curve, the carriers and the modulators are waveforms of the Bezier curve also the paired 2D forms can be converted into waveforms.

See + at http://dinisnoise.org/

This script will make things easier for you to install Din Is Noise in GNU / Linux operations, the script is basically responsible for downloading the necessary dependencies of the software, downloading the Din source code and compiling it.

To run the script we need several things, the first thing is to have the script on your computer.

Depending on your distro (Debian or Ubuntu) you choose the corresponding script.
You can get it 1 by creating an empty file on your laptop and adding the corresponding code to your Debian or Ubuntu distro and call it Debian.sh example how it is in the repository.

2 Cloning or downloading the whole Repository, the result is a Script-Installing-Din-Is-Noise--master.zip, you extract it and there is a folder with the same name.

After having the file.sh open a terminal to execute a command that gives us the permissions required by the system to execute it, we go to the folder where we have it located and run the following command

Example: if the repository was in downloads the route would be something similar to this

Cd / home / user / Downloads / Script-Install-Din-Is-Noise - master.

Then we go to the folder corresponding to our distro

Cd Ubuntu /

Chmod + x Ubuntu.sh

Now we will have the script ready to be executable.

To execute it we make the following command

./Ubuntu.sh

Then it will ask for the password, since it needs super user permissions to install the dependencies ....

Note:

The result of all this process is a folder called trunk "the last stable version of Din" inside it is located another folder called src which contains the executable file of Din.

For Din to run you need to start the jack server first, you can try this with the command.

Jackd -R -d alsa

Then you can run Din.



Hecho por Noisk8 / Medellín-Colombia 2017-18 \

Gracias a La Jaquer EsCool de Platohedro x el espacio. 
