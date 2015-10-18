#!/bin/bash

#Listar los nombres y números de grupo y la lista de usuarios de cada uno,
# ordenados por nombre. Con leyendas explicativas adecuadas para cada columna. 
# Estableciendo una pausa al terminar. Limpiando la pantalla al iniciar.

clear

echo "Grupos por nombre:"
echo "---------------------------------------------------------"
echo "login:número_de_grupo:lista de usuarios"
echo "_________________________________________________________"
	cat /etc/group | cut -d: -f1,3,4 | sort | more -13
echo "---------------------------------------------------------"
read -p "Presione cualquier tecla para continuar" pausa
