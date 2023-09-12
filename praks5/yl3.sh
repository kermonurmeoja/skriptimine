#!/bin/bash
# Skript arvutab, mis p2eval reisilt saabutakse, arvestades 2ramineku p2eva ja reisi kestust.

echo
echo "==== MIS P2EVAL TULED REISILT?  ===="
echo "Voti: Pyhap2ev on 0, esmasp 1, teisip 2 ja laup 6."

read -p "Sisesta, millal soidad ara: " alg
read -p "Sisesta oopaevade arv: " lisa

lopp=`echo "($alg+$lisa)%7" | bc` 

echo "Tagasi oled p2eval nr" $lopp
echo
