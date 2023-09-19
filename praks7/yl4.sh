#!/bin/bash
# Skript v2ljastab vastavalt praegusele kellaajale, missugust tervitust saata.

nimi=$USER
aeg=`date +%H`

# [6;12)
if [ $aeg -ge 6 ] && [ $aeg -lt 12 ]
then
    echo "Tere hommikust, ${nimi^}!"

# [12;18)
elif [ $aeg -ge 12 ] && [ $aeg -lt 18 ]
then
    echo "Tere p2evast, ${nimi^}!"
    
# [18;22)
elif [ $aeg -ge 18 ] && [ $aeg -lt 22 ]
then
    echo "Tere ohtust, ${nimi^}!"
    
# [22;24]
elif [ $aeg -ge 22 ] && [ $aeg -le 24 ]
then
    echo "Head ood, ${nimi^}!"

# [0;6)
elif [ $aeg -ge 0 ] && [ $aeg -lt 6 ]
then
    echo "Head ood, ${nimi^}!"

# Vea korral veateade.
else
    echo "Tekkis viga."
fi
