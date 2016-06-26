#!/bin/bash

#Creo la instancia de la imagen con su storage y conifigs
oc create -f pods/pod-wordpress.yaml

#Creo un servicio para acceder por nombre
oc create -f services/service-wp.yaml