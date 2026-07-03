#!/bin/bash

clear

echo "========================================="
echo "            DISK MONITOR"
echo "========================================="
echo ""

df -h

echo ""
echo "Largest directories in current location:"
echo ""

du -sh * 2>/dev/null | sort -hr | head

echo ""
read -p "Press Enter to continue..."
