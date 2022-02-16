1.  Ejemplo 1

        import MySQLdb
        import os
        os.system("clear")
        conn=MySQLdb.connect('localhost','root','usuario','instituto')
        cursor=conn.cursor()

        os.system("yad --form --field=DNI --field=NOMBRE --field=APELLIDO \
        --field=TELEFONO --field=CORREO --width=200 \
        --height=200 --center > datos.txt 2>/dev/null; echo $? > codret.txt")

        idf1=open('codret.txt','r')
        r=idf1.readline()
        if r == 0:
                idf=open('datos.txt','r')
                reg=idf.readline()
                campos=reg.split("|")
                dni=campos[0].upper()
                nombre=campos[1].upper()
                apellido=campos[2].upper()
                telefono=campos[3]
                correo=campos[4]
                query="insert into alumnos (dni,nom,ape,telefono,email) values ('%s','%s','%s','%s','%s')" % (dni,nombre,apellido,felefono,correo)
                cursor.execute(query)
                conn.commit()
                print "registro guardado"
                idf.close()
        else:
                print "Has pulsado cancelar"

        query="select dni,nom,ape,telefono,email from alumnos"
        cursor.execute(query)
        resultado=cursor.fetchall()
        for r in resultado:
                cadena="DNI",r[0]+'\n'+"NOMBRE",r[1]+'\n'+"APELLIDO",r[2]+'\n'+"TELEFONO",r[3]+'\n'+"EMAIL",r[4]'\n'+"----------------"
        
        os.environ['mensaje']=cadena
        os.system("yad --info --text=${mensaje} --width=200 --height=300 --center")
        cursor.close()
        conn.close()  

        '''print "ACTUALIZAR REGISTRO"
        dni=raw_input("DNI: ")
        email=raw_input("CORREO: ")

        query="UPDATE alumnos SET email='%s' WHERE dni='%s'" % (email,dni)
        cursor.execute(query)
        conn.commit()
        print "-------registro modificado-------"'''

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

3. 

