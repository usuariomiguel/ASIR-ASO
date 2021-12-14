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
op=0
while [ $op -ne 6 ]
do
	clear
	op =`yad --list --title="Gestion Agenda" --width=300 --height=250 \
	--center \
	--column=A \
	1 "ALTAS"  2 "BAJAS" 3 "CONSULTAS" 4 "LISTADOS" 5 "MODIFICACIONES" 6 "SALIR"`
	op=echo $op | cut -f1 -d "|"
	case $op in
		1) faltas;;
		2) fbajas;;
		3) fconsultas;;
		4) fmodificaciones;;
		5) flistados
	esac
done


