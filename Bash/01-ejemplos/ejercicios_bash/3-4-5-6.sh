#!/usr/bin/env bash
clear
echo "dime palabra"
read pa
echo "dime palabra 2"
read paa
if [ $pa = $paa ]; then 
echo "iguales"
else 
echo "diferente"
fi 

#!/usr/bin/env bash
clear
echo "dime palabra"
read pa
echo "dime palabra 2"
read paa
if [ ${#pa} -gt ${#paa} ]; then 
echo "1 mas grande"
else 
echo "2 mas grande"
fi 

#!/usr/bin/env bash
clear
echo "ver calendario"
echo "___________________"
date +"%T-%Y-%m-%d"

#!/usr/bin/env bash
echo "Numeros del 1-100"

CONTADOR=1
while [ $CONTADOR -lt 100 ]
do
	echo "n:" $CONTADOR $cuadrado
	let "CONTADOR+=1"
	cuadrado=`expr $CONTADOR \* $CONTADOR`
done

