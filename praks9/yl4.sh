#!/bin/bash
# Skript v2ljastab vastavalt kasutaja sisendile x rida kasvavas j2rjekorras.

# loeb andmed sisse
read -p "Sisesta ridade arv: " arv

# loob read
for (( i = 1; i <=$arv; i++ ))
do
    # rea algusesse number
    echo -n "$i."
    #loob ridade sisu
    for (( j = 1; j <= i; j++  ))
    do
      echo -n " * "
    done
  # reavahetus
  echo ""
done
