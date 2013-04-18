#!/bin/bash

if [ $# != 2 ]; then
	echo "Uso: fecha.sh campo fichero" >&2			#redigir el mensaje a la salida estandar de error
	exit 1
else
campo=$1
fichero=$2
linea=$(grep -E ^$campo $fichero)
if [ $? == 1 ]; then          #si grep retorna 1 -> no encontrado
	echo "No hay date" >&2
	exit 2
fi

salida=$( echo $linea | cut -d " " -f 2- )
fi

echo $salida	
exit 0
