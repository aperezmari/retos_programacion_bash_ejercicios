#!/bin/bash

# ================================
# Título del Programa: FizzBuzz
# Descripción: Cuando el número es multimo de 3 vamos a ver por consola "Fizz", cuando es multiplo de 5 "Buzz"
#              y si es de los dos nos devolvera "FizzBuzz", dejamos fuera el 0 aunque es divisible por ambos
# Autor: Allen
# Fecha: 24/10/24
# ================================

for i in {0..100}; do
    resto3=$((i % 3))
    resto5=$((i % 5))

    if [ "$((i % 3))" -eq 0 ] && [ "$((i % 5))" -eq 0 ] && [ "$i" -ne 0 ] ; then
        echo 'FizzBuzz'
    elif [ "$resto3" -eq 0 ] && [ "$resto5" -ne 0 ] && [ "$i" -ne 0 ]; then
        echo 'Fizz'
    elif [ "$resto3" -ne 0 ] && [ "$resto5" -eq 0 ] && [ "$i" -ne 0 ]; then
        echo 'Buzz'
    else
        echo $i
    fi
done