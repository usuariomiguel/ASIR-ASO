#!/usr/bin/env bash
clear
cont=0

while read usuario pass nid resto 
do
    echo $nid
    cont=`expr $cont + 1`
done < /etc/passwd
echo Existen $cont usuarios
