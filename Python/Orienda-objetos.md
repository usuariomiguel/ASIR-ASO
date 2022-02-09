# programacion orientada a objetos


POO es otro paradigma de programacion. Todo es un objeto (real, imaginario, persona, animal, cosa...)

todos los objetos tienen:
    -Caracteristicas: por eemplo un monitor
        - color
        - tamaño
        - marca
        - numero de botones 
        - ...
         A estas caracteristicas se las denominan ATRIBUTOS
    
    -Reaccion del objeto frente a eventos:
    Los objetos reaccionan mediante la definicion de funciones, en las cuales determinamos el comportamiento del objeto.
    A estas funciones de las denomina METODOS

## Clases

Son modelos sobre los cuales se construiran nuestros objetos

La creacion del objeto se denomina INSTANCIAR el objeto

Una clase puede HEREDAR atributos y metodos de otra clase

    - Herencia 
    Una clase puede HEREDAR atributos y metodos de otra clase

    - Encapsulamiento
    Los objetos son como cajas negras. No es necesario conocer su estructura para poder trabajar con ellos

    - Polimorfismo
    Es la capacidad de que un mismo metodo haga funciones distintas.

## Acceso a atributos y metodos


Objeto.Metodo()
Objeto.Atributo


## Creacion de la clase


class Nombre():
    def __init__(self, nombre, apellidos, direccion,):
        #variables locales
        self.nom = nombre
        self.ape = apellido
        self.dire = direccion

    def mostar_datos1(self):
        #desarrollo lo que quiro que haga el metodo
        print("Me llamo",self.nom, self.ape)

    def metodo2(self):
        #codigo python


n = input("NOMBRE:")
a = input("APELLIDO:")
d = input("direccion:")
humano=persona(n,a,d) #instanciar el objeto
print(humano.nom)
humano.mostrar_datos()