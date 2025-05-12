#!/bin/bash

contador=0
numeros=()

until [ $contador -eq 3 ]; do
    echo "Introduce un número entero:"
    read ilian
    if [[ "$ilian" =~ ^-?[0-9]+$ ]]; then
        numeros[$contador]="$ilian"
        ((contador++))
    else
        echo "❌ Entrada no válida. Debes ingresar un número entero."
    fi
done

suma=$((numeros[0] + numeros[1] + numeros[2]))

producto=$((numeros[0] * numeros[1] * numeros[2]))

max=${numeros[0]}
min=${numeros[0]}

for num in "${numeros[@]}"; do
    if [ "$num" -gt "$max" ]; then
        max=$num
    fi
    if [ "$num" -lt "$min" ]; then
        min=$num
    fi
done

# Mostrar los resultados
echo "Suma: $suma"
echo "Producto: $producto"
echo "Mayor valor: $max"
echo "Menor valor: $min"