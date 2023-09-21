#!/bin/bash
# Skript v2ljastab vastavalt kasutaja sisendile x rida, kus on y t2rni.

# loeb andmed sisse
read -p "Sisesta ridade arv: " rida
read -p "Sisesta t2rnide arv reas: " tarn

# loob read
for (( i = 1; i <=$rida; i++ ))
do
    # rea algusesse number
    echo -n "$i."
    #loob ridade sisu
    for (( j = 1 ; j <= $tarn; j++ ))
    do
          echo -n " * "
    done
  # reavahetus
  echo ""
done
