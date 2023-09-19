#!/bin/bash
# Skript v2ljastab sisendi pohjal, missuguse aastaajaga on tegemist.

read -p "Sisesta kuu number: " kuu

# kui tegemist on talvekuuga
if [ $kuu == "1" ] || [ $kuu == "2" ] || [ $kuu == "12" ]
then
    echo "Praegu on talv"

# kui on kevadkuu
elif [ $kuu == "3" ] || [ $kuu == "4" ] || [ $kuu == "5" ]
then
    echo "Praegu on kevad"

# kui on suvekuu
elif [ $kuu == "6" ] || [ $kuu == "7" ] || [ $kuu == "8" ]
then
    echo "Praegu on suvi"

# kui on sygiskuu
elif [ $kuu == "9" ] || [ $kuu == "10" ] || [ $kuu == "11" ]
then
    echo "Praegu on sygis"

# kui on vigane number
else
    echo "Viga kuu numbris."
fi
