#!/bin/bash

BASE="$HOME/linux-automation-toolkit"

while true
do

clear

echo "================================"
echo " LINUX AUTOMATION TOOLKIT"
echo "================================"

echo "1. System Monitoring"
echo "2. Disk Cleanup"
echo "3. Backup Automation"
echo "4. Service Monitoring"
echo "5. User Audit"
echo "6. Process Monitoring"
echo "7. Exit"

echo "================================"

read -p "Enter your choice: " choice

case $choice in

1)
bash "$BASE/scripts/system_monitor.sh"
;;

2)
bash "$BASE/scripts/disk_cleanup.sh"
;;

3)
bash "$BASE/scripts/backup.sh"
;;

4)
bash "$BASE/scripts/service_monitor.sh"
;;

5)
bash "$BASE/scripts/user_audit.sh"
;;

6)
bash "$BASE/scripts/process_monitor.sh"
;;

7)
echo "Exiting toolkit"
exit 0
;;

*)
echo "Invalid choice"
;;

esac

read -p "Press Enter to continue"

done