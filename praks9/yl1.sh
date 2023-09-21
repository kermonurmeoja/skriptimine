#!/bin/bash
# Skript v2ljastab 5 rida, kus on 5 t2rni.

# loob read
for (( i = 1; i <= 5; i++ ))
do
    # rea algusesse number
    echo -n "$i."
    #loob ridade sisu
    for (( j = 1 ; j <= 5; j++ ))
    do
          echo -n " * "
    done
  # reavahetus
  echo ""
done
