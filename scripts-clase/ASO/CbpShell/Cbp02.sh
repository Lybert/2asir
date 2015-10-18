#!/bin/bash

#Recibir varios nombres de archivo como parámetros, y para cada uno validar si
# el nombrecorresponde a un archivo común existente, y si es así mostrarlo en
# pantalla paginando.

#Usamos la lista de parametros en el bucle for
for arch in $*
do
	#Variable dentro del primero for que busque los archivos con ese nombre
	ifarch=`locate "$arch"`
			#Por cada resultado del locate comprueba si existe, y si es un archivo 
        for files in $ifarch
					do
						if [ $files ]; then
							if [ -f $files ]; then
								echo "$arch Existe"
							fi
						else
								echo "$arch no existe"
						fi
					done
				done
