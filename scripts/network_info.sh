#!/bin/bash

clear

echo "========================================="
echo "        NETWORK INFORMATION"
echo "========================================="
echo ""

echo "Hostname:"
hostname

echo ""
echo "IP Address:"
ipconfig getifaddr en0 2>/dev/null || echo "Wi-Fi IP not available"

echo ""
echo "Network Interfaces:"
ifconfig | grep flags

echo ""
echo "Routing Table:"
netstat -rn | head -15

echo ""
read -p "Press Enter to continue..."
