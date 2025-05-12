
#!/bin/bash

positivo=0
negativo=0
cero=0

for num in "$@"; {
    if [[ "$num" =~ ^-?[0-9]+$ ]]; then
        if (( num > 0 )); then
            ((positivo++))
        elif (( num < 0 )); then
            ((negativo++))
        else
            ((cero++))
        fi
    else
        echo "'$num' no es un número válido."
    fi
}

echo "Numeros Positivos: $positivo"
echo "Numeros Negativos: $negativo"
echo "Ceros: $zero"