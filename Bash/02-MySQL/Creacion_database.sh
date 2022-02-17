<< 'MULTILINE-COMMENT'

$VARIABLE<<ETIQUETA <-- inicio del codigo MySQL
    codigo
ETIQUETA <-- fin del codigo MySQL
MULTILINE-COMMENT
 
#!/usr/bin/env bash
MySQL= 'mysql -u root -pClave_00'
echo 'voy a trabajar con bases de datos'
$mysql<<END
    create database personal;
    use prueba;
    create table amigos (id int auto_increment primary key not null, 
    nom varchar(20),
    ape varchar(20))
    show tables;
    desc amigos;
END
echo "YA HE TERMINADO"
