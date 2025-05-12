#!/bin/bash

while true; do
    echo "Elige: piedra, papel o tijeras (o escribe 'salir' para terminar el juego :D):"
    read usuario

    if [ "$usuario" == "salir" ]; then
        echo "¡Gracias por jugar!"
        exit 1
    fi

    if [[ "$usuario" != "piedra" && "$usuario" != "papel" && "$usuario" != "tijeras" ]]; then
        echo "lige entre piedra, papel o tijeras."
        continue
    fi

    opciones=("piedra" "papel" "tijeras")
    random=$((RANDOM % 3))
    maquina="${opciones[$random]}"
    echo "La máquina elige: $maquina"

    if [ "$usuario" == "$maquina" ]; then
        echo "Empate."
    elif [ "$usuario" == "piedra" ] && [ "$maquina" == "tijeras" ]; then
        echo "Ganaste! Piedra gana a tijeras."
    elif [ "$usuario" == "papel" ] && [ "$maquina" == "piedra" ]; then
        echo "Ganaste! Papel gana a piedra."
    elif [ "$usuario" == "tijeras" ] && [ "$maquina" == "papel" ]; then
        echo "Ganaste! Tijeras gana a papel."
    else
        echo "Perdiste! $maquina gana a $usuario."
    fi
done