#!/bin/bash

LOG="$HOME/linux-automation-toolkit/logs/process.log"

echo "Process Report: $(date)" >> "$LOG"

ps -eo pid,comm,%cpu,%mem \
    --sort=-%cpu | head -11 >> "$LOG"

echo "========================" >> "$LOG"