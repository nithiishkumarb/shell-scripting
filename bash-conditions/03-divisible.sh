#!/bin/bash


####################################
# Author : Nithish kumar
# Date : 06-08-2026
#
# Print all numbers divisible by
# 3 or 5, but not divisible by 15.
###################################

echo "Print all the numbers that are divisble by 3 & 5 but not by 15 upto given range"

read -p "Enter the upto range:" range

for (( i=1;i<=$range;i++ ))
do
  if ((( $i%3==0 )) || (( $i%5==0 ))) && (( $i%15!=0))
  then 
	  echo $i
  fi

done

