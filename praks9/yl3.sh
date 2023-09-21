#!/bin/bash
# Skript v2ljastab ristkyliku, kus vastavalt kasutaja sisendile x rida ja  y t2rni.

# loeb andmed sisse
read -p "Sisesta ridade arv: " rida
read -p "Sisesta t2rnide arv reas: " tarn

# loob read
for (( i = 1; i <=$rida; i++ ))
do
    # rea algusesse number
    echo -n "$i."
    #loob ridade sisu
    # esimene voi viimane rida
    if [ $i == 1 ] || [ $i == $rida ]
    then
      # tervele reale t2rnid
      for (( j = 1 ; j <= $tarn; j++ ))
      do
        echo -n " * "
      done
    else
      # sisuread
      for (( j = 1; j <= $tarn; j++ ))
      do
        # esimene voi viimane rida
        if [ $j == 1 ] || [ $j == $tarn ]
        then
          echo -n " * "
        else
          echo -n "   "
        fi
      done
    fi
  # reavahetus
  echo ""
done
