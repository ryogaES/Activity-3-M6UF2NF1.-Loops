#!/bin/bash

if [ ! -f "$1" ]; then
	echo  "Error el fichero no existe"
	exit 1
fi

grep -v '^#' "$1"

# Buscamos una palabra o frase

read -p "Selecciona una palabra o una frase para buscar: " busqueda

if grep -iq "$busqueda" "$1"; then
	echo "La palabra '$busqueda' existe en el archivo"
else
	echo "La palabra '$busqueda' no existe en el archivo"
fi

read -p "Introduce una linea para agregar al final del archivo" linea
echo 'linea' >> "$1"