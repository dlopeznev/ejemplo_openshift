#!/bin/bash

#Creo volumenes
mkdir -p /home/datos/vol1
mkdir -p /home/datos/vol2

#Permisos transitorios
chmod -R 777 /home/datos/

#Agrego a exports
/home/datos/vol1 *(rw,sync)
/home/datos/vol2 *(rw,sync)

#Permisos SELinux
setsebool -P virt_use_nfs 1

#Creo los volumenes persistentes
oc create -f storage/vol1.yaml
oc create -f storage/vol2.yaml