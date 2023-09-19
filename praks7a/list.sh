#!/bin/bash
# Skripti v2ljastab, missugused failityybid on kaustas, kus hetkel oled.

echo
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
    # kas tegu on failiga
    if [ -f $i ]
    then
      echo "$i: fail"
      faile=$((faile+1))
    # kas tegu on lingiga
    elif [ -L $i ]
    then
      echo "$i: link"
      linke=$((linke+1))
    # kas tegu on kataloogiga
    elif [ -d $i ]
    then
      echo "$i: kataloog"
      katalooge=$((katalooge+1))
    fi
  fi
done

echo "Selles kataloogis on $faile fail(i), $linke link(e), $katalooge kataloog(i)."
echo 
