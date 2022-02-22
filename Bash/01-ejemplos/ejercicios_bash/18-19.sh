#!/usr/bin/env bash
s=0
while [ $s -lt 5 ]; do

echo "--MENU--"
echo "VER NOMBRES"
echo "VER APELLIDO"
echo "VER NOTA"
echo "AÑADIR ALUMNO"
echo "SALIR"
echo "elegIR opcion: "
read s

if [ $s -eq 1 ]; then 
	sort -k 1 "./datos.txt"
	read n 
fi 

if [ $s -eq 2 ]; then 
	sort -k 2 "./datos.txt" 
		read n 
fi

if [ $s -eq 3 ]; then 
	sort -n -r -k 3 "./datos.txt" 
		read n 
fi 

if [ $s -eq 4 ]; then 
echo "nombre apellidos nota"
read nombre ape n
echo $nombre $ape $n >> datos.txt
	read n 
fi

done 
