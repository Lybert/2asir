#!/bin/bash

#Escribir un programa saludo que, según la hora, escriba el saludo
# correspondiente al nombre de pila del usuario. En el archivo /etc/passwd los
# usuarios deben estar ingresados con nombre y apellido separados por blanco.
# Los saludos corresponden a las siguientes horas: Buenos días, de 05:00 hasta
# 12:59; Buenas tardes, de 13:00 hasta 19:59; Buenas noches 20:00 hasta 04:59.
# Ejemplo de mensaje: Buenos días, Juan.

#Recortamos la columna de /etc/passwd que contiene el nombre de pila

NOM_USU=$(cat /etc/passwd | grep $1 | cut -d':' -f 5)
#Si existe (no es igual a "") le respondemos con el saludo
if [ ! "$NOM_USU" == "" ]
then
	HORA=$(date +"%H%M")
	case "$HORA" in
		0[5-9][0-5][0-9]|1[0-2][0-5][0-9] )
			echo "Buenos días, $NOM_USU."
			;;
		1[3-9][0-5][0-9])
			echo "Buenas tardes, $NOM_USU."
			;;
		0[0-4][0-5][0-9]|2[0-3][0-5][0-9] )
			echo "Buenas noches, $NOM_USU."
			;;
	esac
else
	echo "No tienes nombre en este equipo"
fi
