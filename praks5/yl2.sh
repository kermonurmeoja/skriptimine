#!/bin/bash
# Skript arvutab Heroni valemiga v2lja kolmnurga pindala, selleks kysib a, b ja c kylgede v22rtuseid.

echo
echo "==== KOLMNURGA PINDALA LEIDMINE KYLGEDEST  ===="

read -p "Sisesta kylje a v22rtus: " a
read -p "Sisesta kylje b v22rtus: " b
read -p "Sisesta kylje c v22rtus: " c

p=`echo "scale=2;($a+$b+$c)/2" | bc`
tehe=`echo "scale=2;$p*($p-$a)*($p-$b)*($p-$c)" | bc`
s=`echo "scale=2;sqrt($tehe)" | bc`

echo "S =" $s
echo
