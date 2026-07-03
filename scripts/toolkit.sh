#!/bin/bash

clear

echo "=========================================="
echo "       Linux Admin Toolkit v1.0"
echo "=========================================="
echo ""
echo "1. System Health"
echo "2. CPU Monitor"
echo "3. Memory Monitor"
echo "4. Disk Monitor"
echo "5. Network Information"
echo "6. Running Processes"
echo "7. Backup Manager"
echo "8. Directory Report"
echo "9. Uptime Checker"
echo "10. Exit"
echo ""

read -p "Enter your choice: " choice

case $choice in
    1) ./system_health.sh ;;
    2) ./cpu_monitor.sh ;;
    3) ./memory_monitor.sh ;;
    4) ./disk_monitor.sh ;;
    5) ./network_info.sh ;;
    6) ./process_monitor.sh ;;
    7) ./backup_manager.sh ;;
    8) ./directory_report.sh ;;
    9) ./uptime_checker.sh ;;
    10) echo "Thank you for using Linux Admin Toolkit."; exit ;;
    *) echo "Invalid Choice!" ;;
esac
