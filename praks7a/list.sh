#!/bin/bash
# Skripti v2ljastab, missugused failityybid on etteantud kaustas.

echo
# Kysib kataloogi nime
read -p "Sisesta kataloogi nimi: " kataloog

# kui sisestatud kataloog pole praegu tootav kataloog, liigume teise kataloogi
if [ "$kataloog" != "$(pwd)" ]
then
  cd "$kataloog"
fi

# loon muutujad
faile=0
katalooge=0
linke=0

for i in *
do
  # kui tegu on . voi .. kaustaga, siis ei arvesta seda
  if [ $i == "." ] || [ $i == ".." ]
  then
    continue
  else
    # kas tegu on lingiga
    if [ -L $i ]
    then
      echo "$i: link"
      linke=$((linke+1))
    # kas tegu on failiga
    elif [ -f $i ]
    then
      echo "$i: fail"
      faile=$((faile+1))
    # kas tegu on kataloogiga
    elif [ -d $i ]
    then
      echo "$i: kataloog"
      katalooge=$((katalooge+1))
    fi
  fi
done

echo "Kataloogis $kataloog on $faile fail(i), $linke link(e), $katalooge kataloog(i)."
echo 
