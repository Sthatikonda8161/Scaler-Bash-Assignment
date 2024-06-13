#!/bin/bash

#######################################
# Author: Saikiran
# Date - Jun 12, 2024
#
#This is a script for quesion 1
########################################




logfile=$1

totalrequest=$(wc -l $logfile | awk -F" " '{print $1}'  )

sucessfulrequest=$(cat $logfile | awk -F" " '{print $9}' |  grep -E '^2[0-9]{2}$' | wc -l )

sucessPercentage=$((sucessfulrequest*100/totalrequest))

activeuser=$(cat $1 | awk '{print $1}' | sort | uniq -c | sort -nr | head -1 | awk '{print $2}')


echo "Sucessful requests:$sucessfulrequest"

echo "Total requests:$totalrequest"

echo "success percentage:$sucessPercentage%"

echo "Most Active User:$activeuser"
