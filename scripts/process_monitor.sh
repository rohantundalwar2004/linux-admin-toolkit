#!/bin/bash

clear

echo "========================================="
echo "          PROCESS MONITOR"
echo "========================================="
echo ""

echo "Top 15 CPU Processes"
echo "-----------------------------------------"
ps -Ao pid,%cpu,%mem,comm | sort -k2 -nr | head -15

echo ""
echo "Top 15 Memory Processes"
echo "-----------------------------------------"
ps -Ao pid,%mem,%cpu,comm | sort -k2 -nr | head -15

echo ""
echo "Total Running Processes:"
ps -A | wc -l

echo ""
read -p "Press Enter to continue..."

