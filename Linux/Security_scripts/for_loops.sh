#!/bin/bash

states=('Washington' 'California' 'Deleware' 'Hawaii' 'New York')

for state in ${states[@]}
 do
   if [ $state == 'Hawaii' ];
    then
      echo "Hawaii is the best!"
     else
      echo "I'm not fond of Hawaii"
   fi
 done
