#!/bin/bash

TARGET="/tmp"
LOG="$HOME/linux-automation-toolkit/logs/cleanup.log"

echo "Cleanup started: $(date)" >> "$LOG"

echo "Files older than 7 days:" >> "$LOG"

find "$TARGET" -type f -mtime +7 -print >> "$LOG"

echo "Cleanup completed: $(date)" >> "$LOG"