#!/bin/bash

clear

echo "========================================="
echo "          UPTIME CHECKER"
echo "========================================="
echo ""

uptime

echo ""
echo "Boot Time"
echo "-----------------------------------------"
who -b 2>/dev/null || echo "Boot time information not available on this system."

echo ""
read -p "Press Enter to continue..."
