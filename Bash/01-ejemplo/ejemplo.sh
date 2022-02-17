#!/usr/bin/env bash
clear
OIFS=$IFS
IFS=:
#cambia el separador por defecto "space" por ":"
cont=0
while read usuario pass nid resto 
##separa los campos por el espacio de /etc/passwd por las variables 1usuario 2pass 3nid y 4resto
do
    if [ $nif -ge 1000 ]
        then 
            cont=`expr $cont + 1`
            echo ${usuario}
        fi
done < /etc/passwd
echo Existen $cont usuarios
IFS=$OIFS
#volvemos al separador "space"
Resultado:
nobody
compartir
miguel
Existen 3 usuarios

##################
#!/usr/bin/env bash
clear
OIFS=$IFS
IFS=#
#cambia el separador por defecto "space" por "#"
echo -e "NOMBRE\t\tAPELLIDO\t\tTELEFONO\t\tCORREO\t\tCUMPLEAÑOS"
while read nom ape tel email fn
##separa los campos por el espacio de /etc/passwd por las variables 1nom 2ape 3tel 4email 5fn
do
    echo -e "$nom\t\t$ape\t\t$tel\t\t$email\t\t$fn"
done < /scripts/agenda.txt
#La ruta del fichero con los datos separador por #
IFS=$OIFS

#Solucion:

#NOMBRE		APELLIDO		TELEFONO		CORREO		CUMPLEAÑOS
#------------------------------------------------------------------------------------------
#nombre		apellido		tel		email		fechac
#Ana		Ranz		6345678090		anita.ranz@gmail.com		26/12/1992


