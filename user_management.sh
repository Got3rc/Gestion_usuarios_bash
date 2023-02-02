#!/bin/bash

echo 1.Quieres crear un usuario
echo 2.Quieres eliminar un usuario
echo 3.Quieres crear grupos
echo 4.Quieres borrar grupos
echo 5.Cambiar grupos secundarios a usuario

read num

if [[ $num == 1 ]]
then

read -p "Introduce la cantidad de usuarios a crear: " num_casos

	for ((i=1; i<=num_casos; i++)); do


	echo Escribe el nombre de usuario $i.
	read nombre

	useradd $nombre 
	
	echo Usuario $nombre creado

	done



elif [[ $num == 2 ]]
then
	
read -p "Introduce la cantidad de usuarios a borrar: " num_casos

	
	for ((i=1; i<=num_casos; i++)); do


	echo Escribe el nombre de usuario $i.
	read nombre

	deluser $nombre 
	
	echo Usuario $nombre borrado

	done
	
elif [[ $num == 3 ]]
then	
	
read -p "Introduce la cantidad de grupos que quieres hacer: " num_casos

	
	for ((i=1; i<=num_casos; i++)); do


	echo Escribe el nombre del grupo $i.
	read nombre

	addgroup $nombre 
	
	echo Grupo $nombre creado

	done	
	
	
elif [[ $num == 4 ]]
then	
	
read -p "Introduce la cantidad de grupos que quieres borrar: " num_casos

	
	for ((i=1; i<=num_casos; i++)); do


	echo Escribe el nombre del grupo a borrar $i.
	read nombre

	delgroup $nombre 
	
	echo Grupo $nombre borrado

	done	
		
	
	
	
elif [[ $num == 5 ]]
then

	echo -e "Escribe los grupos que quieres poner a un usuario separados por comas\nEjemplo : grp1,grp2,grp3..."

	read grupos

	echo "Ahora dime a que usuario quieres ponerlos"
	
	read usuario
	
	usermod -G $grupos $usuarios

	
	

fi


echo Programa finalizado.
