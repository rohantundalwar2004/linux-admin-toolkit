#!/bin/bash

echo "========================================="
echo "        SYSTEM HEALTH REPORT"
echo "========================================="

echo ""
echo "Hostname        : $(hostname)"
echo "Current User    : $(whoami)"
echo "Operating System: $(uname)"
echo "Kernel Version  : $(uname -r)"
echo "System Uptime   : $(uptime)"
echo ""

echo "------------- CPU Usage -------------"
top -l 1 | grep "CPU usage"

echo ""
echo "------------- Memory Usage ----------"
vm_stat

echo ""
echo "------------- Disk Usage ------------"
df -h

echo ""
echo "------------- Current Date ----------"
date
