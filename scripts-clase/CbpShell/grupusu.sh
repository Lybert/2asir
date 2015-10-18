#!/bin/bash

#Escribir un programa grupusu que dado un nombre de grupo determine si existe en el sistema,
#y si es así, presente su nombre, número de grupo (GID), y lista de usuarios que pertenezcan a él, ya
#sea como grupo primario (en /etc/passwd) o como grupo secundario (lista en /etc/group).

cat /etc/group | grep  ALUMNOS | cut -d ":" -f 1,3,4

