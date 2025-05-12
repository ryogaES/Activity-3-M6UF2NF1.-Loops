#!/bin/bash

Archivo="palabras.txt"

if [ ! -f "$Archivo" ]; then
    touch "$Archivo"
    echo "Archivo '$Archivo' creado."
fi

echo "Escribe palabras (escribe ':>' para terminar):"

while true; do
	# ; para finalizar entrada
    read -r palabras
    if [ "$palabras" = ";" ]; then
        echo "Finalizando entrada."
        break
    fi
    echo "$palabras" >> "$Archivo"
done