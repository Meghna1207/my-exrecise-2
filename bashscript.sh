#!/bin/bash

# Get disk usage percentage
disk_usage=$(df -h / | awk 'NR==2{print $5}' | cut -d'%' -f1)

# Check if disk usage is greater than 80%
if [ "$disk_usage" -gt 30 ]; then
                  # Log current time to diskusage.log file
                  echo $(date) $disk_usage >> /home/meghashah/diskusage.log
fi

# Output disk usage percentage to the terminal
echo "Disk usage: $disk_usage%"
~                                