#!/bin/bash

SERVICES=("ssh" "cron")

LOG="$HOME/linux-automation-toolkit/logs/service.log"

for SERVICE in "${SERVICES[@]}"
do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "$SERVICE is RUNNING" >> "$LOG"
    else
        echo "$SERVICE is NOT RUNNING" >> "$LOG"
    fi
done

echo "Service check completed: $(date)" >> "$LOG"