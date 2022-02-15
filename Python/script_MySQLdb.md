# Uso de mysql en python

1.  Ejemplo 1

        import MySQL 
        import os
        os.system("clear")
        conn=MySQLdb.connect('localhost','root','usuario','instituto')
        cursor=conn.cursor()

        os.system("yad --form --field=DNI --field=NOMBRE --field=APELLIDO \
        --field=TELEFONO --field=CORREO --width=200 \
        --height=200 --center > datos.txt 2>/dev/null; echo $? > codret.txt")

        idf1=open('codret.txt','r')
        r=idf.readline()
        if r != 1:
            idf=open('datos.txt','r')
            reg=idf.readline()

        print "ACTUALIZAR REGISTRO"
        dni=raw_input("DNI: ")
        email=raw_input("CORREO: ")

        query="UPDATE alumnos SET email='%s' WHERE dni='%s'" % (email,dni)
        cursor.execute(query)
        conn.commit()
        print "-------registro modificado-------"

2. Ejemplo 2

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
