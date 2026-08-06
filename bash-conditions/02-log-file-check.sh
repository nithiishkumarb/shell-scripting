#!/bin/bash
#
########################################
# Author : Nithish kumar
# Date : 06-08-2026
#
# This script is used to check there the given file is log file or not using [[...]] (String & Pattern Matching)
# ######################################


echo "Check whether the file is log file or not"

read -p "Enter the file name:" file_name

if [[ $file_name == *.log ]]
then 
	echo "Given file is a log file"
else
	echo "It is not a log file"
fi
