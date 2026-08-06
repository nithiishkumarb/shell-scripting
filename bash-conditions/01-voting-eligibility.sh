#!/bin/bash
#
#
##################################################
# Author: Nithish kumar
# date: 06-08-2026
#
# This script is to check the voting eligibility which is using a [ ... ] (Standard Test) if confition method
#
#################################################


echo "Check whether you are eligible for Voting"

read -p "Enter your age:" age


if [ $age -gt 18 ]
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi
