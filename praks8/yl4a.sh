#!/bin/bash
# Skript v2ljastab esimese 20 t2isarvu kohta, kas tegu on algarvuga voi mitte.

for arv in {1..20}
do
  # kui arv on v2iksemvordne 1ga
  if [ $arv -le 1 ]
  then
    echo "$arv - ei ole algarv"
  else
    # alustame jagamist 2ga
    jagaja=2
    jaak=$((arv % jagaja))
    # juhul kui arvu polnud voimalik 2-ga t2ielikult jagada, siis votame arve edasi
    while [ $jaak -ne 0 ]
    do
      jagaja=$((jagaja + 1))
      jaak=$((arv % jagaja))
    done
    # kui jagaja ja arvu v22rtus on vordsed, siis on tegu algarvuga.
    if [ $arv -eq $jagaja ]
    then
      echo "$arv - on algarv"
    else
      echo "$arv - ei ole algarv"
    fi
  fi
done
