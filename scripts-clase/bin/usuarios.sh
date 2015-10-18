#!/bin/bash

#Usando el archivo /etc/passwd escribir el programa usuarios que lista los
# nombres de login, el directorio propio del usuario y el intérprete invocado por
# defecto de todos los usuarios, ordenados alfabéticamente por nombre de login.
# Con leyendas explicativas adecuadas para cada columna.

passwd=`cat /etc/passwd | tr ' ' '.' |sort `
#tr elimina los espacios para evirar errores con el for

  for usu in $passwd
   do
     echo Usuario: `echo $usu | cut -d ":" -f 1`
     echo Home: `echo $usu | cut -d ":" -f 6`
     echo Interprete: `echo $usu | cut -d ":" -f 7`
     echo "---------------------"
    done
