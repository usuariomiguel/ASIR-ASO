#!/usr/bin/env bash

nom=`echo $registro | cut -f1 -d'|' | tr [a-z] [A-Z]`
ape=`echo $registro | cut -f2 -d'|' | tr [a-z] [A-Z]`
tel=`echo $registro | cut -f3 -d'|'`
email=`echo $registro | cut -f1 -d'|'`
fn=`echo $registro | cut -f1 -d'|'`
dia=`echo $fn | cut -f1 -d'/'`
mes=`echo $fn | cut -f2 -d'/'` 
anno=`echo $fn | cut -f3 -d'/'` 
fn=${anno}"-"${mes}"-"${dia} 

$mysql<<END
    use personal;
    insert into amigos (nom,ape,tel,email) values ("${nom}","${ape}","${tel}","${email}","${fn}","${dia}","${mes}"","${anno}")
    select * from amigos;
END
