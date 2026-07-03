#!/bin/bash

clear

echo "========================================="
echo "           CPU MONITOR"
echo "========================================="
echo ""

echo "Current CPU Usage:"
top -l 1 | grep "CPU usage"

echo ""
echo "Top 10 CPU-consuming processes:"
echo ""

ps -Ao pid,%cpu,comm | sort -k2 -nr | head -11

echo ""
read -p "Press Enter to continue..."
