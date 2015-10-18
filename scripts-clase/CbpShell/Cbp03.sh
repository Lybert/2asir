#!/bin/bash

#Recibir un nombre de directorio, validar existencia y condición de directorio y
# mostrar nombres de todos los directorios y subdirectorios bajo él, en formato
# de página largo 23.
# Ejemplo: bash Cbp03.sh /home ; bash Cbp03.sh /media/andoni/KINGSTON

if [ -d $1 ]; then
		ls -R $1  | grep "/" | pr -l 23 | more
	else
		echo "No existe el directorio"
fi
