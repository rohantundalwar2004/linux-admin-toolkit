#!/bin/bash

echo "========================================="
echo "         DIRECTORY REPORT"
echo "========================================="
echo

read -p "Enter directory path: " DIR

if [ ! -d "$DIR" ]; then
    echo
    echo "Directory not found!"
    exit 1
fi

echo
echo "Directory Name:"
basename "$DIR"

echo
echo "Total Files:"
find "$DIR" -type f | wc -l

echo
echo "Total Directories:"
find "$DIR" -type d | wc -l

echo
echo "Largest 10 Files:"
find "$DIR" -type f -exec ls -lh {} + | sort -k5 -hr | head

echo
echo "Disk Usage:"
du -sh "$DIR"
