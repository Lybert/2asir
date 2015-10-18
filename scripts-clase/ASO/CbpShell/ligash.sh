#!/bin/bash

#Guarda el dir actual y se mueve al directorio a comprobar
DIRACT=`pwd`
cd $1 2> /dev/null
#Comprueba el directorio y revisa cada archivo para ver cual es un ln
if [ -d $1 ];then
	for file in `ls $1`
		do
#Si en el ls -l el segundo parametro es mayor que 1 significa que tiene ln's		 
		 if [[ $(ls -l $file | cut -d " " -f 2) -ge 2 ]]; then
			echo "$file es un un enlace duro "
		 fi
		done
else
	echo "No es un directorio"
fi
#Nos devuelve al dir donde estabamos
cd $DIRACT
