#!/bin/bash


########################################################
# Author: Nithish
# Date: 03-08-2026
#
#  This script output is for node health monitoring
#
#  version: v1
########################################################


set -x # debug mode

# Storage space
df -h

# RAM space
free -h

# Number of processors
nproc


# List of process
ps -aux
