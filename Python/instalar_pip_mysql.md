Error /var/lib/dpkg/lock

1.     fuser -vki /var/lib/dpkg/lock
2.     rm -f /var/lib/dpkg/lock
3.     dpkg --configure -a
4.     apt autoremove

Instalacion de pip y libreria MySQLdb

1.      apt install python-pip
2.      pip install -U pip
3.      apt install python-dev libmysqlclient-dev
4.      pip install MySQL-python

#!/usr/bin/env python
import MySQLdb

conn=MySQLdb.connect('localhost','root','usuario')
cursor=conn.cursor()

query="CREATE BATABASE instituto"
cursor.execute(query)

query="create table alumnos (nmat int auto_increment primary key not null,dni varchar(9),nom varchar(20),ape varchar(30),telefono varchar(9),email varchar(100))"
cursor=conn.cursor()

print "NUEVO REGISTRO"
dni = raw_input("DNI: ")
nom = raw_input("NOMBRE: ")
ape = raw_input("APELLIDOS: ")
tlf = raw_input("TELEFONO: ")
email = raw_input("EMAIL: ")

query="INSERT INTO alumnos (dni,nom,ape,telefono,email) values (%s,%s,%s,%s,%s)" % (dni,nom,ape,tlf,email)
cursor.execute(query)
conn.commit()
print "----------registro dado de alta----------"
