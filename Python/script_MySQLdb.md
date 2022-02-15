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

