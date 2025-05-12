#!/bin/bash

while true; do
    echo "Introduce una contraseña. Debe tener al menos 8 caracteres, 1 letra mayuscula y 1 digito:"
    read contrasena
    
    if [[ ${#contrasena} -ge 8 && "$contrasena" =~ [A-Z] && "$contrasena" =~ [0-9] ]]; then
        echo "Contraseña valida."
        exit 1
    else
        echo "Error, La contraseña debe tener al menos 8 caracteres, una letra mayuscula y un digito."
    fi
done