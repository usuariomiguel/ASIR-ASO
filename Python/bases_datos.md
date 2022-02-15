# Bases de datos

Importar libreria con las funciones de administracion y uso de base de datos SQL:

    #!/usr/bin/env python 
    import MySQLdb

Creamos una variable con la sentencia de conexion a la BD:

    conn = MySQLdb.connect(host='localhost',user='root',passwd='usuario',db='Instituto')

Ejecutamos la conexion, que nos devolvera n identificador de la misma:

    cursor = conn.cursor()

## Trabajar con las tablas

Para ello, creamos una variable donde incluimos la sentencia SQL que queramos ejecutar:

1. Opcion 1

        dni=raw_input("DNI: ")
        nom=raw_input("NOMBRE: )
        ape=raw_input("APELLIDO: )
        query = "INSERT INTO alumnos VALUES(dni,nom,ape)"
    
2. Opcion 2

    %s string
    %d decimal
    %f float
    %i integer

        query = "INSERT into alumnos values (%s,%s,%s)" % (dni,nom,ape) 

Ejecutamos la consulta creada:

    cursor.execute(query)

Volcar datos a la tabla:

    conn.commit()

### Ejemplos

1. Actualizar telefono cuando ID = 7:

    update alumnos set tel='45134' where id=7 #update normal

        tel = '45134'
        nid = 7
        update = "update alumnos set tel=%s where id=%i" % (tel,nid)

2. Consultar datos

        query = "select nom,ape,tel from alumnos"
        cursor.execute(query)
        registros=cursor.fetchall() 
    #variable registro lista con todos los registros obtenidos en la consulta
        
        for reg in registro:
            print reg[0]

3. Cerrar la conexion 

        cursor.close()
        conn.close()

