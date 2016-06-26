#!/bin/bash

#Creo la instancia de la imagen con su storage y conifigs
oc create -f pods/pod-mysql.yaml

#Creo un servicio para acceder a la bdd por nombre
oc create -f services/service-mysql.yaml