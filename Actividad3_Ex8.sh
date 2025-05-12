#!/bin/bash

while true; do
    echo "Seleccione una opción:"
    echo "1) Mostrar la fecha y hora actual"
    echo "2) Verificar si un archivo existe"
    echo "3) Salir"
    
    read -p "Ingresa una opcion (1, 2 o 3): " opcion

    if [ "$opcion" -eq 1 ]; then
        echo "Fecha y hora actual: $(date)"
    elif [ "$opcion" -eq 2 ]; then
        read -p "Ingrese la ruta del archivo: " archivo
        if [ -e "$archivo" ]; then
            echo "El archivo '$archivo' existe."
        else
            echo "El archivo '$archivo' no existe."
        fi
    elif [ "$opcion" -eq 3 ]; then
        echo "Hasta luego Oriol!"
        exit 1
    else
        echo "opcion no valida. Por favor, ingrese 1, 2 o 3."
    fi
done
