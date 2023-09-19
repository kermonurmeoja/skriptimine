#!/bin/bash
# Skript kysib t2isarvu ning arvutab sisestatud arvude summa.

read -p "Sisesta suvaline t2isarv: " arv

# j2tame arvu hilisemaks meelde
arvm2lus=$arv
# loome muutuja summa
summa=0

# kui arv ei vordu nulliga, siis
while [ $arv -ne 0 ]
do
  # saame arvust k2tte viimase nr-i
  number=$((arv%10))
  # liidame selle numbri summale
  summa=$((summa+number))
  # jagame arvu 10-ga, et eemaldada viimane nr
  arv=$((arv/10))
done

echo "Arvu $arvm2lus numbrite summa on $summa"
