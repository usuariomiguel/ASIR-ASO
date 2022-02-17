# PYTHON
   Lenguaje de programación interpretado, de alto nivel,
   multiplataforma, de tipado dinámico y multiparadigma
 
   - Interpretado    --> no necesita un programa compilador
   - De alto nivel   --> su sintaxis se aproxima al lenguaje humano
   - Multiplataforma --> puede ser ejecutado en diferentes SO
   - Tipado dinámico --> no necesitamos indicar de qué tipo son los datos en variables
   - Multiparadigma  --> tiene diferentes tecnicas de programacion
 
   Pep 8 --> normas que revisa que el programa esté bien estructurado
 
## Variables

   ``nombre = variable``
 
   - Pep 8: antes y después del signo igual DEBE haber uno (y solo uno) espacio en blanco
       nombre = 'pepe'
 
   - Pep 8: el nombre de las constantes DEBE ir en mayúscula
       PI = 3.1416
 
   ### Tipos de datos:
         - Cadenas (string)
            - nombre = 'pepe'
            - multi = '''esto es una Cadena
                               multilinea'''
            - Enteros
               - edad = 18
               - Decimales
                   - precio = 2.97
            - Booleanos
               - ok = True
               - ok = False
 
         - Listas,Tuplas,Diccionarios
 
## Operadores

 
   - Aritméticos: + - * /
      ``**`` Potencia
      ``//`` Cociente de la división entera
      ``%`` Resto de la división entera
 
   Notación compacta
      a = a + b --> a +=b
 
   Relacionales: == != < > <= >=
 
   Lógicos:    
   - and ->  True cuando las condiciones son true Falsa cuando hay una condición falsa
   - or  ->  Falsa solo cuando las dos son falsas True cuando no hay dos condiciones falsas
   - xor ->  Falsa cuando las dos condiciones son iguales True cuando una de las es true y otra falsa
 
 ## Comentarios

   - Pep 8: comentarios en la misma línea que el código, DEBE separarse con DOS espacios en blanco.
   - Pep 8: Despues de el símbolo # DEBE ir un solo espacio en blanco
 
   ### Comentarios de una línea
 
      """Comentarios
      multilínea"""
 
## Función print ()

   Saca VARIABLES por pantalla no muestra MENSAJES
 
       print("mensaje",variable,sep="-",end="--")
 
   - sep --> indica carácter por el cual se van a separar
   - end --> cómo va a terminar la expr que estoy explicando
 
         nombre = pepe
         print("hola",nombre,sep="$",end="fin")
         hola$pepe fin
 
## Función input()

   Nos permite realizar entradas de datos por teclado
 
   python2
   - input()     números
   - raw_input() cadenas
 
   num = input("Dime un número")
 
   python3 
   - input() - cadenas
 
   Para hacer transformaciones de tipo, usaremos las funciones de casting:
   int(), float(), str()

   ### Ejemplo donde quiero introducir números ¡en variables con input--
 
   #### Forma Correcto
 
       num = int(input("Dime un número: "))
       >>> numero2 = int(input("DIme numero: "))
       DIme numero: 56
       >>> numero3 = int(input("DIme numero: "))
       DIme numero: 45
       >>> numero2 * numero3
       2520
 
   #### Forma incorrecto--
 
       >>> número 1 = input("dime numero")
       dime numero 3
       >>> numero2 = input("dime numero2")
       dime numero 256
       >>> numero1 + numero2
       '356'
       >>> numero1 * numero2
       Traceback (most recent call last):
       File "<stdin>", line 1, in <module>
       TypeError: can't multiply sequence by non-int of type 'str'
 
## TUPLAS
 
   - Pep8: tiene que ir entre paréntesis
 
   Son variables que permiten almacenar varios datos inmutables de diferentes tipos.
   Una vez que se ha creado no se puede modificar o borrar, mientras está en ejecución
 
      tupla = ('hola',12,3.4,True,'Caracola')
 
## LISTAS

 
   - Pep 8: tiene que ir entre corchetes
 
   Permite almacenar varios datos de diferentes tipos.
 
   lista = ['hola',12,4.5,True,'caracola']
 
   ### Añadir elementos:
 
   lista.append ("nuevo elemento")
   lista.insert (posición,"nuevo elemento")
 
   lista = ['hola',12,3.4,True,'Caracola']
 
   ### agregar
 
       lista[0] = "hola pepe"
       print (lista[2])
       lista.append("655453425")#agrega automáticamente elemento en la lista
       lista = lista + [89]
       lista.insert(1,"cadena")
       print(lista)
 
   ### Eliminar elementos:
   
 
   - lista.pop(posición)
   - lista.remove('elemento')

         lista = ['hola',12,3.4,True,'Caracola'
         lista.pop(0)#elimina elemento en la posición 0
         print(lista)
         lista.remove('caracola')#eliminar elemento caracola
         print(lista)
         print.pop()#elimina elemento en la última posición por defecto
 
   ### Ordenar elementos:
 
      - lista.sort()    #ordena de la 'a' a la 'z'
      - lista.sort(reverse=True)    #ordena de la 'z' a la 'a'
      - lista.reverse() #reverso actual de los elementos de la lista
      - lista.count("elemento")   #cuenta cuantas veces aparece el elemento   en la lista
      - lista.index("elemento",posición inicial,posición final)    #devuelve el posición que ocupa un elemento
 
   ### Funciones de listas y tuplas
 
   función(argumentos)
 
   nombre para lista=list(tuple) -> conversión de tupla a lista
   nombre para tupla=list(tuple) -> conversión de lista a tupla
   max(tupla | lista) -> devuelve el máximo valor
   min(tupla | lista) -> devuelve el mínimo valor
   len(tupla | lista) -> devuelve el número de elementos
 
 
   ### Concatenar y copiar listas y tuplas   
 
   Concatenar  ->  lista1 = list 1 + list 2
                   lista3 = lista1 + lista2
                   lista  = lista  + [elemento]
 
   Copiar 
 
   -Por referencia  -> se copia en los elementos en las dos listas
 
       lista = lista1
       #ejemplo
       lista1=[1,2,3,4]
 
       lista = lista1[:]
       print(lista1,lista2)
       lista2.remove(1)
       print(lista1,lista2)
 
       Trabajando con LISTAS
       _____________________
       [1, 2, 3, 4] [1, 2, 3, 4]
       [2, 3, 4] [2, 3, 4]
 
   -Por valor -> se copia elementos en las dos listas pero si se modifica una no se modifican ambas
 
       lista = lista1[:]
 
       #ejemplo
       lista1=[1,2,3,4]
 
       lista = lista1[:]
       print(lista1,lista2)
       lista2.remove(1)
       print(lista1,lista2)
 
       Trabajando con LISTAS
       _____________________
       [1, 2, 3, 4] [1, 2, 3, 4]
       [1, 2, 3, 4] [2, 3, 4]
 
## DICCIONARIOS

 
   diccionario = {'clave1':valor1,'clave2':valor2,...}
   diccionario[clave 1]
 
   ### Métodos de diccionarios
 
   diccionario.items()     -> devuelve items
 
       for clave,valor in capitales.items():
       print ("La capital de",clave,"es",valor)
 
       La capital de España es Madrid
       La capital de Italia es Roma
       La capital de Francia es París
 
   diccionario.keys()      -> devuelve las claves
 
       países = capitales.keys()
       print(países)
       dict_keys(['España', 'Italia', 'Francia', 'Polonia', 'Australia', 'Egipto', 'Lituania', 'Portugal', 'Perú', 'Venezuela'])
 
   diccionario.values()    -> devuelve valores
 
       capi = capitales.values()
       print(capi)      
       dict values(['Madrid', 'Roma', 'París', 'Varsovia', 'Viena', 'El Cairo', 'Vilna', 'Lisboa', 'Lima', 'Caracas'])

   diccionario.clear() ->  vacía el diccionario
   diccionario['clave']=valor   -> 
   diccionario.has_key(valor)  -> devuelve T or F si la clave existe en el diccionario

## Matrices

    Matriz de dos dimensiones: filas y columnas
    Matriz 2x3 --> 2 filas y 3 columnas
    Matriz --> es una lista de listas
    lista1 = [1,2,3]
    lista1 = [4,5,6]
    Matriz = [[lista1],[lista2]]
    Matriz = [[1,2,3],[4,5,6]] --> 2x3

## Funciones

    función range() --> suma numeros
        range(10) --> 0-9
        range(m,n,s)
            m--> valor inicial
            n--> valor final (no cuenta este numero)
            s--> incremento
            range(10,0,-1)
                10,9,8,7,6,5,4,3,2,1
            
## estructura_de_control

    tabulaciones

    estructura_de_control
        sentencia
        sentencia
        estructura_de_control
            sentencia
        sentencia
    sentencia

    -*- coding: utf-8 -*- --> para que salga la ñ y los acentos
    
    ### IF
    
    if compra <= 100:
        print("Pago en efectivo")
    elif compra > 100 and compra < 300:
        print("Pago con tarjeta de credito)
    else:
        print("Pago con tarjeta de credito)
    print("Fuera del if")

    ### WHILE
    
    while condicion:
        sentencias
    
    mas='s'
    suma=0
    while mas == 's':
        num=input("Dime un numero: ")
        suma+=int(num)
        mas=input("Seguir?")
    print("La suma total es:",suma)

    ### FOR
    
    for numero in range (100):
        print(numero)
    
    colores=["rojo","verde","azul","amarillo","negro","blanco"]
    for color in colores:
        print(color)
    
    for i in range(len(colores)):
        print (colores[i])
    
## Funciones

    Una función te permite definir un bloque de código reutilizable que se puede ejecutar muchas veces

    def nombre_funcion();
        codigo_funcion
    ##para llamar funcion
    nombre_funcion
    ##para llamar funcion y pasar parametros
    nombre_funcion()
    ##ejemplo
    def saludo(nombre,edad): <--> def saludo(nombre,saludo="que tal?"): 
    
        if edad > 18:
            print("hola",nombre,"eres mayor  de edad")
        else:
            print("hola",nombre,"eres menor de edad")
    
    saludo("lola",18) <-->  saludo(edad=18,nombre="lola")

## Parametro arbitrarios


    Son un numero desconocido de parametros
    Llegan a la funcion en forma de dupla
    Para definirlos se debe anteponer a su nombre un aseterisco(*)

        def carrito(nombre,ape,*productos):
            print("carrito de",nombre)
            for p in productos:
                print(p)

        nombre='Pepe'
        apellido='Garcia'
        prod1='tomates'
        prod2='lechuga'
        prod3='pan'
        prod4='leche'
        carrito(nombre,apellido,prod1,prod2,prod3,prod4)

    En los paramtros arbitrarios, podemos pasar pares clave=valor. 
    En este caso se debe anteponer al nombre de los parametros dos asteriscos (**)
    
        #!/usr/bin/env python3
        #-*- coding: utf-8 -*-
        #*datos_clientes num idefinido de parametros
        #**productos que almacena clave y valor
        def carrito(nombre,ape,*datos_clientes,**productos):
            print("carrito de",nombre)
            for p in productos:
                print(p)
            for clave in productos:
                    print (productos[clave])
                    #calculamos el precio de la compra
                return total

        nombre='Pepe'
        apellido='Garcia'
        direccion='street'
        telf='91234533'
        prod1='tomates'
        prod2='lechuga'
        prod3='pan'
        prod4='leche'

        carrito(nombre,apellido,direccion,telf,prod1=2,prod2=3,prod3=4,prod4=5)
        carrito(nombre,apellido,telf,prod1=2,prod2=3,prod3=4,prod4=5)
