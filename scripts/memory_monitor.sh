#!/bin/bash

clear

echo "========================================="
echo "           MEMORY MONITOR"
echo "========================================="
echo ""

echo "Memory Statistics:"
echo "-----------------------------------------"

vm_stat

echo ""
echo "Top 10 Memory-Consuming Processes:"
echo ""

ps -Ao pid,%mem,comm | sort -k2 -nr | head -11

echo ""
read -p "Press Enter to continue..."
