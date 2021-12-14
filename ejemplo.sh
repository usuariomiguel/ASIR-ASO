#!/usr/bin/env bash
clear
cont=0
while read registro
do
    echo $registro
    cont=`expr $cont + 1`
done < /etc/passwd
echo Existen $cont usuarios
