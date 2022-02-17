#!/usr/bin/env bash
yad --color --title="Colorines" --width=400 --height=400 --center

yad --file --title="Fichero" --width=400 --height=400 --center

yad --list --title="Lista" --width=400 --height=400 --center

yad --calendar --title="Calendario" --width=400 --height=400 --center

##################
#!/usr/bin/env bash
#saca una una lista de una columna muy bonita
yad --list --title="Gestion Agenda" --width=300 --height=250 \
--center \
--column=A \
"ALTAS" "BAJAS" "CONSULTAS" "LISTADOS" "MODIFICACIONES" "SALIR"

#################
#!/usr/bin/env bash
#sacar la mi misma lista con programacion
#!/usr/bin/env bash

function faltas(){
	$registro=$(yad --form --title="NUEVO REGISTRO" --width=300 --height=300 --center --separator="#" \
	--field=NOMBRE --field=APELLIDO --field=TELEFONO --field=EMAIL --field="FECHA NACIMIENTO":DT)
	echo $registro >> ./agenda.txt
	if [ $? -eq 0 ]
		then
			yad --info --title="NUEVO REGISTRO" --text="registro dado de alta satisfactoriamente"
		else
			yad --info --title="NUEVO REGISTRO" --text="registro dado de alta incorrectamente"
	fi
}

function fbajas(){
	OIFS=$IFS
	IFS=#
	yad --list --title="BORRAR EN AGENDA" --width=500 --height=300 --center \
	--column=NOMBRE --column=APELLIDO --column=TELEFONO --column=EMAIL --column=F.NACIMIENTO
	IFS=$OIFS
}

function fconsultas(){
	$registro=$(yad --form --title="BUSCAR REGISTRO" --width=300 --height=300 --center --separator="#" \
	--field=NOMBRE --field=APELLIDO:DT)
	echo $registro >> ./agenda.txt
	
	
}
function fmodificaciones(){
	$modificacion=$(yad --form --title="MODIFICAR REGISTRO" --width=300 --height=300 --center --separator="#" \
	--field=NOMBRE --field=APELLIDO --field=TELEFONO --field=EMAIL --field="FECHA NACIMIENTO":DT)
}
function flistados(){
	OIFS=$IFS
	IFS=#
	n=""
	a=""
	t=""
	c=""
	f=""
	while read nom ape tel cor fn
		do
			n="${n}${nom}\n"
			a="${a}${ape}\n"
			t="${t}${tel}\n"
			c="${c}${cor}\n"
			f="${f}${fn}\n"
		done < ./agenda.txt
	yad --list --title="CONTENIDO AGENDA" --width=500 --height=300 --center \
	--column=NOMBRE --column=APELLIDO --column=TELEFONO --column=EMAIL --column=F.NACIMIENTO
	"${n}" "${a}" "${t}" "${c}" "${f}"
	IFS=$OIFS
}

op=0
while [ $op -ne 6 ]
do
	clear
	op=`yad --list --title="Gestion Agenda" --width=250 --height=250 \
	--center --column=1 \
	1 "ALTAS"  2 "BAJAS" 3 "CONSULTAS" 4 "LISTADOS" 5 "MODIFICACIONES" 6 "SALIR"`
	op=`echo $op | cut -f1 -d "|"`
	case $op in
		1) faltas;;
		2) fbajas;;
		3) fconsultas;;
		4) fmodificaciones;;
		5) flistados;;
	esac
done


