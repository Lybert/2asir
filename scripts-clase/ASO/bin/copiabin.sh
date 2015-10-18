#!/bin/bash



#Creamos la carpeta 'bin'
mkdir -p ~/bin
#Variables para encontrar los archivos y cuantos son
listsh=`ls *.sh`
listwc=`ls -l *.sh | wc -l`

#Bucle que copia
for file in $listsh
  do
    cp $file ~/bin
    echo "$file ha sido copiado a ~/bin"
  done

# if para mostrar si se ha movido algun archivo y cuantos han sido
echo "-----------------------------------"
if [ $listwc -gt 0 ]; then
  echo "Se han copiado $listwc archivos .sh a ~ /bin"
else
  echo "No se ha movido ningun archivo."
fi
