#!/bin/bash
# Skript v2ljastab vastavalt kasutaja sisendile x rida, kus "o" on kahanevas j2rjekorras, t2rn kasvavas.

# loeb andmed sisse
read -p "Sisesta ridade arv: " arv

# loob read
for (( i = 1; i <=$arv; i++ ))
do
    # rea algusesse number
    echo -n "$i."

    #loob ridade sisu
    for (( j = 1; j <=$arv; j++ ))
    do
      if [ $j -le $(($arv-$i)) ]
      then
        echo -n " o "
      else
        echo -n " * "
      fi
    done

  # reavahetus
  echo ""
done
