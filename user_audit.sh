#!/bin/bash

REPORT="$HOME/linux-automation-toolkit/reports/user_report.txt"

echo "Linux User Audit" > "$REPORT"
echo "Date: $(date)" >> "$REPORT"

echo "========================" >> "$REPORT"

awk -F: '{
    print "Username: " $1
    print "UID: " $3
    print "Home: " $6
    print "Shell: " $7
    print "----------------"
}' /etc/passwd >> "$REPORT"

echo "User audit completed"