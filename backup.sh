#!/bin/bash

SOURCE="$HOME/Documents"
DEST="$HOME/linux-automation-toolkit/backups"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$DEST"

if [ ! -d "$SOURCE" ]; then
    echo "Source directory does not exist"
    exit 1
fi

tar -czf "$DEST/backup_$DATE.tar.gz" \
    -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"

if [ $? -eq 0 ]; then
    echo "Backup successful: $DATE"
else
    echo "Backup failed: $DATE"
    exit 1
fi