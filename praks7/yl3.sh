#!/bin/bash
# Skript v2ljastab vastavalt sisendile, missugust tervitust saata.

read -p "Sisesta aja v22rtus: " aeg

# [6;12)
if [ $aeg -ge 6 ] && [ $aeg -lt 12 ]
then
    echo "Tere hommikust"

# [12;18)
elif [ $aeg -ge 12 ] && [ $aeg -lt 18 ]
then
    echo "Tere p2evast"
    
# [18;22)
elif [ $aeg -ge 18 ] && [ $aeg -lt 22 ]
then
    echo "Tere ohtust"
    
# [22;24]
elif [ $aeg -ge 22 ] && [ $aeg -le 24 ]
then
    echo "Head ood!"

# [0;6)
elif [ $aeg -ge 0 ] && [ $aeg -lt 6 ]
then
    echo "Head ood!"

# veateade, kui ei sisestanud sobivat arvu.
else
    echo "Sisestasid arvu, mis ei yhti 24-tunnilise ajasysteemiga."
fi
