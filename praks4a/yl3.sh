#!/bin/bash
# Skript kysib, missugust kataloogi soovitakse varuandada ning see varundatakse backup kausta.

# Loeb sisse varundatava kataloogi teekonna.
read -p "Varundatava kataloogi nimi (teekond): " teekond

# Saab teekonnast k2tte katalooginime.
kataloog=$(basename -- $teekond)

# Koostab failinime.
failinimi="$kataloog.backup.tar.gz"

# Varundab faili.
tar -czf backup/$failinimi $teekond

# Kinnitab backupi onnestumisest.
echo "Kataloogi" $kataloog " backup_i nimi on" $failinimi "ja ta asub /home/$USER/skriptimine/praks4a/backup/ kataloogis."
