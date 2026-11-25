#!/bin/bash

LOG="$HOME/linux-automation-toolkit/logs/system.log"

echo "================================" >> "$LOG"
echo "System Monitoring Report" >> "$LOG"
date >> "$LOG"

echo "Hostname: $(hostname)" >> "$LOG"

echo "Uptime:" >> "$LOG"
uptime >> "$LOG"

echo "Memory Usage:" >> "$LOG"
free -h >> "$LOG"

echo "Disk Usage:" >> "$LOG"
df -h >> "$LOG"

echo "CPU Load:" >> "$LOG"
top -bn1 | head -5 >> "$LOG"

echo "Monitoring completed"