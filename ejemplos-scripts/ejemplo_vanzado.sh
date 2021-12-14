#!/usr/bin/env bash
yad --color --title="Colorines" --width=400 --height=400 --center

yad --file --title="Fichero" --width=400 --height=400 --center

yad --list --title="Lista" --width=400 --height=400 --center

yad --calendar --title="Calendario" --width=400 --height=400 --center

#!/usr/bin/env bash
yad --list --title="Gestion Agenda" --width=300 --height=250 \
--center \
--column=A \
"ALTAS" "BAJAS" "CONSULTAS" "LISTADOS" "MODIFICACIONES" "SALIR"
