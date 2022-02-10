#!/bin/bash

nums=$(echo {0..9})

for num in ${nums[@]}
  do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
   echo $num
  fi
 done
