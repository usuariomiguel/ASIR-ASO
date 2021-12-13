#!/usr/bin/env bash
clear
echo El numero de parametros pasados es: $#
echo Y son los siguientes: $*
cp colores col.sh
echo El codigo de retorno de la copia es: $?

#shift
#uno dos tres cuatro cinco seis 
echo El numero de parametros pasados es: $#
echo Y son los siguientes: $*
shift
#dos tres cuatro cinco seis 
echo El numero de parametros pasados es: $#
echo Y son los siguientes: $*
shift
#tres cuatro cinco seis 
echo El numero de parametros pasados es: $#
echo Y son los siguientes: $*
shift 3
#seis 
echo El numero de parametros pasados es: $#
echo Y son los siguientes: $*

#read
#varias posibilidades
#1
echo -n "Dime tu nombre: "
#2
read nombre
#3
read nombre?"Dime tu nombre: "
#4
read -p "Dime tu nombre: " nombre

#ejemplo
echo -n "Dime el nombre de 4 frutas: "
read fruta1 fruta2 fruta3 fruta4
echo Primera fruta: ${fruta1}
echo Segunda fruta: ${fruta2}
echo Tercera fruta: ${fruta3}
echo Cuarta fruta: ${fruta4}

Arrays
-------

expr 
-------

let -> operaciones aritmeticas basicas
    let a=$a+1

expr -> operaciones aritmeticas sencillas con enteros
    ->  operadores normales -> + - * / %
    ->  operadores especiales -> () * / -> hay que escaparlos, con \ 
    ->  ejemplos        3 * (4 + 3) / 2 -> 10
                        3 \* \(3 + 4\) \/ 2
    ->  palabras reservadas de expr
        - match     ->  comprueba si dos cadenas son iguales
            $cadena2= `expr match $cadena1` 
        - lenght    ->  devuelva la longitud de una cadena
            longitud= `expr lenght $cadena`
        - index     ->  devuelve la Primera posicion de la cadena donde se encuentra un caracter
            letra = 'a'
            posicion= `expr index $cadena $letra`
        - substr    ->  devuelve una subcadena -> 'empieza a contar en 1'
            dni = '01234567H'
            $numero = `expr substr $dni 1 8`

bc -> operaciones aritmeticas