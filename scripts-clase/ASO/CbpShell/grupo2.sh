#!/bin/bash

#Igual que grupo1, ordenados por número de grupo. Con leyendas explicativas
# adecuadas para cadacolumna. Estableciendo una pausa al terminar.

echo "Grupos por numero de grupo:"
echo "---------------------------------------------------------"
echo "login:número_de_grupo:lista de usuarios"
echo "_________________________________________________________"
	cat /etc/group | cut -d: -f 1,3,4 | sort -k 2 -t ":" | more -13
echo "---------------------------------------------------------"
read -p "Presione cualquier tecla para continuar" pausa


#Prueba esta estructura:

#!/bin/bash

clear

echo "ID_Grupo / Grupo / Usuarios"
echo "_________________________________________________________"
	cat /etc/group | cut -d':' -f1,3,4 | tr ':' ' ' | sort -nk 2 | more -13

echo "<--------------------------------------------------------->"

read -p "Presione INTRO para continuar" pausa

#xLy
