# Fichero Secuenciales

ficheros = open("fichero.txt","modo") --> apertura fichero

modo    
r   lectura
w   escritura  
a   añadir
(a+,r+,w+)

idf.close() --> cerrar fichero

## Accion4s
### lectura

completo = idf.read([nº bytes]) - lee fichero completo y puede filtrarse por bytes

todo =  idf.readlines() - lee todas las lineas del archivo

for linea in idf.readlines():
        print linea

registro = idf.readline()
while registro:
    campos = registro.split(":")
        print campos[0] '''muestra el primer campo del registro'''
        registro = idf.readline()

### Escritura

1. Crear la variable que usaremos como registro
    registro = "Ana:Torres:Su casa, 1:654546798:a.torres@gmail.com"

2. Guardar el registro en el fichero
    idf.write(registro)

### Paso de variables de python a shell y viceversa

 
1. importa la libreria de comandos
import os
 
2. ejecuta el comando indicado
os.system("comando")

from os import system
system("comando")

#### Pasar de python a Shell

nombre = input("Dime tu nombre: ")
os.environ["nom_shell"] = nombre_python --> utilizamos comandos de shell en python

os.system("groupadd ${nomb_shell}"}
os.system("mkdir /home/${nomb_shell}"}
os.system("useradd -d /home/${nomb_shell} -s /bon/bash -g ${nom")

#### Pasar de Shell a Python

Envio la informacion proporcionada por la shell a un fichero, y abro el fichero desde python


os.system('ldapsearch -b "ou=venta,dc=empresa,dc=local" 
"(ObjectClass=person)" cn sn email > usuario.txt')
id = open("usuario.txt","r")
reg = id.readline()
while reg:
....