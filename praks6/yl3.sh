#!/bin/bash
# Ylesandeks analyysida skripti.

# Antakse muutujale algv22rtus.
osch=0

# Prinditakse kysimused v2lja.
echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
echo -n "Select your os choice [1 or 2]? "
read osch

# Kui valiti 1, siis ... 
if [ $osch -eq 1 ] ; then
     echo "You Pick up Unix (Sun Os)"
# Kuid kui valiti miskit muud
else #### nested if i.e. if within if ######
       # Kui valiti 2, siis ...
       if [ $osch -eq 2 ] ; then
             echo "You Pick up Linux (Red Hat)"
      # Ja kui oli yldse miskit muud ... 
      else
             echo "What you don't like Unix/Linux OS."
       fi
fi
