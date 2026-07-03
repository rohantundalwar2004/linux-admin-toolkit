#!/bin/bash

echo "========================================="
echo "          BACKUP MANAGER"
echo "========================================="

echo
read -p "Enter source directory: " SOURCE

read -p "Enter backup directory: " DEST

if [ ! -d "$SOURCE" ]; then
    echo "Source directory not found."
    exit 1
fi

mkdir -p "$DEST"

BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$DEST/$BACKUP_NAME" "$SOURCE"

echo
echo "Backup completed successfully."
echo "Backup saved at:"
echo "$DEST/$BACKUP_NAME"
