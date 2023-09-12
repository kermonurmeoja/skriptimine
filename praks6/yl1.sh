#!/bin/bash
# Skript vastavalt sisendile v2ljastab, kas tegu on paaris voi paaritu arvuga.

echo
read -p "Sisesta t2isarv: " arv
jaak=$(($arv%2)) # 0 korral paaris, 1 korral paaritu.

if [ $jaak -eq 0 ]
then
  # Kui on paarisarv.
  echo "Arv $arv on paaris."
else
  # Kui on paaritu arv.
  echo "Arv $arv on paaritu."
fi
echo
