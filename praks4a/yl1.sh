#!/bin/bash
# Skript kysib kasutaja k2est nime ning synniaastat ning arvutab, kui vana kasutaja on. 

echo
# Kysib sisendiks nime.
read -p "Sisesta oma nimi: " nimi
echo "Tere tulemast, $nimi!"
echo

# Kysib sisendiks synniaastat.
read -p "Sisesta oma synniaasta: " synniaasta

# Arvutab v2lja vanuse.
vanus=$(($(date +"%Y") - $synniaasta))
echo "$nimi, sina oled $vanus aastat vana."
echo
