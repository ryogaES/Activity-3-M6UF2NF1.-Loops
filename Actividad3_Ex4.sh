#!/bin/bash

until [ -d "$ruta" ]; do
    read -p "Introduce la ruta de un directorio válido: " ruta
    if [ ! -d "$ruta" ]; then
        echo "'$ruta' no es un directorio válido."
    fi
done

permisos=$(ls -ld "$ruta" | awk '{print $1}')
echo "Permisos del directorio: $permisos"

count=$(find "$ruta" -mindepth 1 -maxdepth 1 | wc -l)
echo "Número de archivos y subdirectorios: $count"


echo "Contenido del directorio:"
ls "$ruta"
