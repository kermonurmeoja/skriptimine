#!/bin/bash
# Skript kysib vanust ning seej2rel otsustab, missugusesse vahemikku vanus kuulub.

read -p "Sisesta vanus: " vanus

# vahemikus [0;11)
if [ $vanus -ge 0 ] && [ $vanus -lt 11 ]
then
    echo "Oled laps"
# vahemikus [11;18)
elif [ $vanus -ge 11 ] && [ $vanus -lt 18 ]
then
    echo "Oled nooruk"
# vahemikus [18;63)
elif [ $vanus -ge 18 ] && [ $vanus -lt 63 ]
then
    echo "Oled t2iskasvanu"
# vahemikus [63;...)
elif [ $vanus -ge 63 ]
then
    echo "Oled seenior"
# veateade, kui ei sisestanud arvu.
else
    echo "Sisestasid arvu, mis ei sobi vanuseks."
fi
