#!/bin/bash

#######################################
# Author: Saikiran
# Date - Jun 12, 2024
#
#This is a script for quesion 3
########################################


service="$1"

# Check service status
status=$(systemctl is-active "$service" 2>/dev/null)


if [ "$status" = "active" ]; then
    echo "$service is running."
elif [ "$status" = "inactive" ]; then
    echo "$service is not running."
else
    echo "Failed to determine the status of $service."
fi
