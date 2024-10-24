#!/bin/bash

# ================================
# Título del Programa: Capicua
# Descripción: Recibe una palabra o numero y comprueba si es igual al leerla al reves.
# Autor: Allen
# Fecha: 24/10/24
# ================================
string=$1
longitud=${#string}
invertido=""

for (( i=$longitud - 1; i>-1; i-- )); do
    invertido="$invertido${string:$i:1}"
done

if [ "$invertido" = "$string" ]; then
    echo "Es capicua"
else
    echo "No es capicua"
fi