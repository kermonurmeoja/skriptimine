#!/bin/bash
# Skripti v2ljastab arvude 1-10 paarisarvude summa.

# Loon tyhja muutuja
summa=0

# tsykkel, mis genereerib numbrid 1-10. 
for i in {1..10}
do
  # kontrollime, kas tegu on paarisarvuga
  jaak=$((i % 2))
  if [ $jaak -eq 0 ]
  then
    summa=$((summa+$i))
  fi
done

echo "Arvude vahemikus 1 kuni 10 (k.a) paarisarvude summa on: $summa"
