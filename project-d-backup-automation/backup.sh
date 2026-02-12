#!/bin/bash

# Project D: Automated Backup Script 

SOURCE_DIR="$HOME/linux-survival-toolkit"
BACKUP_DIR="$HOME/backups"

# Create backup directory if it doesn't exists
mkdir -p "$BACKUP_DIR"

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

#Backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

LOG_FILE="$HOME/backup.log"

if [ $? -eq 0 ]; then
	echo "$(date +"%Y-%m-%d %H:%M:%S") Backup successful: $BACKUP_FILE" >> "$LOG_FILE"
else
	echo "$(date +"%Y-%m-%d %H:%M:%S") Backup failed." >> "$LOG_FILE"
fi
