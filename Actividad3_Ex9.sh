#!/bin/bash

WebIES="https://agora.xtec.cat/ies-sabadell"  


while ! curl -s --head --request GET "$WebIES" | grep "200 OK" > /dev/null; do
    echo "No se puede establecer conexion con la web del ies sabadell"
    sleep 5  
done

echo "Conexio establecida. Abriendo la web del ies sabadell"
xdg-open "$WebIES"
