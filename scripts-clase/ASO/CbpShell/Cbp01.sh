#!/bin/bash

#Recibir un nombre de archivo como parámetro e indicar, imprimiendo todas
#  las leyendas quecorrespondan, si el archivo es legible, modificable y
#  ejecutable por el usuario.

ARCH=$1
#Recortar el ls -l para los permisos del usuario -rwx-
LSARCH=`ls -l $ARCH | cut -c 2-4`

#Segun la respuesta del cut:
case $LSARCH in
	"r--")
		echo "$LSARCH = Legible"
		;;
	"rw-")
		echo "$LSARCH = Legible y modificable"
		;;
	"rwx")
		echo "$LSARCH = Legible, modificable y ejecutable"
		;;
	"-w-")
		echo "$LSARCH = Modificable"
		;;
	"-wx")
		echo "$LSARCH = Modificable y ejecutable"
		;;
	"--x")
		echo "$LSARCH = Ejecutable"
		;;
	"r-x")
		echo "$LSARCH = Legible y ejecutable"
		;;
esac
