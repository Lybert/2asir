#!/bin/bash

#Escribir un programa usugrup que dado un nombre de login de usuario determine
# si existe en el sistema, y si es así, presente su nombre de usuario,número
# de usuario (UID), grupo primario y grupos secundarios si los tiene, con
# leyendas adecuadas.

#Si ID da un resultado el usuario existe, redirigimos la salida estandar y de
# error a /dev/null para que no las muestre.
id $1 1> /dev/null 2>&1

#Si ID es correcto $?=0 por tanto existe y muestra la salida de ID + leyenda
if [ $? = 0 ]; then
	echo "El usuario $1 existe:"
	echo "---------------------"
	echo "Numero de usuario | Grupo primario | Grupo secundario"
	 id $1
else
	echo "El usuario no existe"
fi
