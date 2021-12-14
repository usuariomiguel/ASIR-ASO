#!/usr/bin/env bash
clear
OIFS=$IFS
IFS=:
#cambia el separador por defecto "space" por ":"
cont=0
while read usuario pass nid resto 
##separa los campos por el espacio de /etc/passwd por las variables 1usuario 2pass 3nid y 4resto
do
    echo $pass
    cont=`expr $cont + 1`
done < /etc/passwd
echo Existen $cont usuarios
IFS=$OIFS
#volvemos al separador "space"