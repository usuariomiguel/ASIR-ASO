<< 'MULTILINE-COMMENT'

$VARIABLE<<ETIQUETA <-- inicio del codigo MySQL
    codigo
ETIQUETA <-- fin del codigo MySQL
MULTILINE-COMMENT
 
#!/usr/bin/env bash
MySQL= 'mysql -u root -pClave_00'
echo 'voy a trabajar con bases de datos'
$mysql<<END
    create database personal;
    use prueba;
    create table amigos (id int auto_increment primary key not null, 
    nom varchar(20),
    ape varchar(20))
    show tables;
    desc amigos;
END
echo "YA HE TERMINADO"
#!/usr/bin/env bash

lscpu > cpu.txt
lsusb > usb.txt

cut -f2 -d : cpu.txt | grep "x86_64"
cut -f1 cpu.txt | grep "CPU(s): " 
cut -f1 -d e usb.txt | grep "002"

echo "${nu} nucleos, arquitectura ${arq}, ${disk} disco, ${ram} de RAM, ${puert} puertos PCI, ${usb} puertos USB"
#!/usr/bin/env bash

function fdisco(){
	por=--comando para calcular el uso de disco--
	if [ $por < 50 ]
	then 
		yad --image=verde.jpeg
	elif [ $por > 50 && $por < 80 ]
	then 
		yad --image=ambar.jpeg
	elif [ $por > 80 ]
	then 
		yad --image=roja.jpeg
	fi
}

function fmemoria(){
	mem=--comando para calcular el uso de disco--
	if [ $mem < 40 ]
	then 
		yad --image=verde.jpeg
	elif [ $mem > 40 && $mem < 60 ]
	then 
		yad --image=ambar.jpeg
	elif [ $mem > 80 ]
	then 
		yad --image=roja.jpeg
	fi
}

function fconexion(){
	echo "conexion"
}
	clear
	op=$(yad --list --title="Menu utilidades" --width=250 --height=250 \
	--center --column=1 \
	"1 DISCO"  "2 MEMORIA" "3 CONEXION" "4 SALIR")
	
	case $op in
		1) fdisco;;
		2) fmemoria;;
		3) fconexion;;
	esac
#!/usr/bin/env bash
echo "trabajo en mysql"
mysql='mysql -u root'

$mysql<<END
	use fabrica;
	select * from almacen where horas_trabajo > horas_trabajadas;
END
id=cat fichero.txt | cut -f1
nombre=cat fichero.txt | cut -f2 
horas_trabajo=cat fichero.txt | cut -f3 
horas_trabajadas=cat fichero.txt | cut -f4

for (( i=0; i < ${#select[@]}; i++ ))
do
	dif=let`expr $horas_trabajo-$horas_trabajadas` 

	if [ $dif >= 200 ]
	then 
		echo "${id}${nombre}${horas_trabajo}${horas_trabajadas}"
	fi
done 
