#!/usr/bin/env bash
clear
echo El numero de parametros pasados es: $#
echo Y son los siguientes: $*
cp colores col.sh
echo El codigo de retorno de la copia es: $?

#SHIFT
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

#READ
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
############
tabla = (1 2 3 4 5 )
tabla=(Ana Luis Jose "Maria del Carmen")
tabla[indice]

#número de elementos que tiene la tabla
${tabla[índice]} → extrae un valor
${#tabla[@]} → devuelve número de elementos
${tabla[@]} → devuelve todos los elementos
${#cadena} → devuelve la longitud de la cadena

Parámetros posicionales
$./script 	par1 	par2 	par3 	parametro4….
$0	$1	$2	$3 	hasta $9
(nombre 
scripts $0)
pero si abro corchetes puedo seguir ${10}..

shift [nº] empieza por 1 y no por 0

$* → devuelve una cadena con todos los parámetros posicionales, sin incluir el nombre del script
$# → numero de parametros posicionales, sin incluir el nombre del script
$? → devuelve un código de retorno  del último comando ejecutado
	desde 0 hasta xxxxxxx

expr 
#############

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
        - scale -> indicamos el numero de decimales

        resultado=$(echo 'scale=2;($a + $b +$c + $d)/4' | bc)

        Podríamos aplicar la ley de Coulomb (F = K(q1·q2)/r2):
            scale=7
            9*10^9*1*10^-6*2.5*10^-6/0.05^2
            9.0000000
        
crear condiciones
################
crear condiciones:
1º forma:
[ condicion ]
2º forma:
test condicion

operando1 operador operando2

operadores UNARIOS -> para evaluar ficheros

[ -operador fichero ]
test -operador fichero

-f -> fichero existe y es regular
-r -> fichero existe y es regular, y tiene permiso de lectura
-w -> fichero existe y es regular, y tiene permiso de escritura
-x -> fichero existe y es regular, y tiene permiso de ejecucion
-h -> enlace simbolico 
-d -> directorio
-c -> dispositivo de tipo caracter 
-b -> dispositivo de tipo bloque
-u -> activo el SUID
-g -> activo el SGID
-s -> longitud mayor a 0

operadores BINARIOS

Evaluacion de cadenas
==  [ $cad1 = $cad1 ]
!=  [ $cad1 != $cad1 ]

Evaluacion numerica
-eq -ieq -le -lt -ge -gt -ne 

operadores LOGICOS
-a o &&
-o o ||
    [ -r $fichero ] -a [ -w $fichero ] -a [ -x $fichero ]
    [[ -r $fich && -w $fich && -x $fich ]]
    [[ $a -gt 0 && ($a -lt 500 || -w $ $fichero) ]]

ESTRUCTURAS DE CONTROL
#############

CONDICIONALES
#############
if [sintaxis]

1º
    if condicion
        then 
            verdadero
        else 
            if condicion 
                then
                    verdadero
                else
                    falso
            fi
    fi
2º
    if condicion
        then 
            verdadero
        elif condicion 
            then
                verdadero
            else
                falso
        fi
    fi

case $op in 
 -ne 1) echo " "
        echo " "
        ....
        ;;
 -eq 2) echo " "
        echo " "
        ....
        ;;
 *) sentencias_por_defecto
esac


REPETITIVAS
############
for 

for variable in lista
    do
        comandos
    done 

for elemento in $* ->"las llaves son opcionales"
    do {
        echo $elemento
        ....
    }done 
for ((variable=valor_inicial;condicion;incremento))
    do {
        comandos
    }done
############
${#cadena}
${cadena:inicio:tamaño} -> extrae subcadenas

while --> repite cuando son verdaderas 
resp='n'
while [ $resp -ne 's' ]
    do
        read resp -p 'Quieres continuar (si/no)? '
    done
echo 'Fuera del bucle'

until --> repite hasta que son verdaderas

until [ who | grep -i 'pepe' ]
    do  
        echo 'Pepe no esta conectado' 
    done
echo 'Pepe acaba de conectar'
###########
