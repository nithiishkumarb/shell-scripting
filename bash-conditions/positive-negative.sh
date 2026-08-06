#!/bin/bash


read -p "Enter the number: " number

if [ $number -gt 0 ]
then 
	echo "Positive"
elif [ $number -lt 0 ]
then 
	echo "Negative"
else
	echo "0"
fi
