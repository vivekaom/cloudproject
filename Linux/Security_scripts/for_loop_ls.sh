#!/bin/bash

#variable
ls_out=$(ls)

#for loop

for x in ${ls_out[@]}
do
 echo $x
done
