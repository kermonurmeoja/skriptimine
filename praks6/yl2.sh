#!/bin/bash
# Skript kysib sisendit, mitu reisijat on kokku ja mitu kohta on bussis.
# Tulemusena v2ljastatakse, mitut bussi l2heb vaja, et koik peale mahuks.

echo
# Kysib sisendit.
read -p "Mitu reisijat on grupis? " reisijaid
read -p "Mitu kohta on bussis? " kohti
busse=$(($reisijaid / $kohti))

# Kui reisijate arv on v2iksem kui kohtade arv.
if [ $reisijaid -lt $kohti ]
then
  yle=$(($kohti - $reisijaid))
  echo "Koik mahuvad 1 bussi peale. Vabaks j22b $yle kohta."
# Kui reisijate arv on vordne kohtade arvuga.
elif [ $reisijaid -eq $kohti ]
then
  echo "Kokku on vaja $busse bussi, koik kohad on t2idetud."
# Kui reisijaid on rohkem kui kohti.
else
  # Kui reisijate arv on suurem kui kohtade arv, kuid kohti jagub.
  if [ $(($reisijaid % $kohti)) -eq 0 ]
  then
    busse=${busse%.*}
    echo "Kokku on vaja $busse bussi, koik kohad on t2idetud."
  # Kui reisijate arv on suurem kui kohtade arv, kuid kohti ei jagu.
  else
    busse=$(($busse+1))
    echo "Kokku on vaja $busse bussi."
  fi
fi
echo
