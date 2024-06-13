#!/bin/bash

#######################################
# Author: Saikiran
# Date - Jun 12, 2024
#
#This is a script for quesion 2
########################################


dir=$1

file_types=$(find "$dir" -type f | rev | cut -d. -f1 | rev | sort | uniq -c | sort -nr | awk '{print $2 ": "$1}')

echo "Count and file types in $dir:"
echo "$file_types"
