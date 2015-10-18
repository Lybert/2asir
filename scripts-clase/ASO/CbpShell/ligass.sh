#!/bin/bash

#Reciben un nombre como parámetro, y validarán que corresponda a un directorio
# del sistema.Muestra los nombres de archivo que son enlaces simbólicos.

#Guarda el dir actual y se mueve al directorio a comprobar
DIRACT=`pwd`
cd $1 2> /dev/null
#Comprueba el directorio y revisa cada archivo para ver cual es un ln -s
if [ -d $1 ];then
	for file in `ls $1`
		do
		 if [ -h $file ]; then
			echo "$file es un un enlace blando"
		 fi
		done
else
	echo "$1 no es un directorio"
fi
#Nos devuelve al dir donde estabamos
cd $DIRACT
