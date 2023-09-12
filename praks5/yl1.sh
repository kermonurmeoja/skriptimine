#!/bin/bash
# Skript arvutab t2isnurkse kolmnurga hypotenuusi kylje a ja b pohjal. Voimalik arvutada komaarvudega.

echo
echo "==== HYPOTENUUSI ARVUTAMINE  ===="

read -p "Sisesta kylje a v22rtus: " a
read -p "Sisesta kylje b v22rtus: " b

a_ruut=$(($a ** 2))
b_ruut=$(($b ** 2))
c_ruut=$(($a_ruut + $b_ruut))
c=`echo "scale=2;sqrt($c_ruut)" | bc`

echo "c =" $c
echo
