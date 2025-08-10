#!/bin/bash

# Define the backup directory
BACKUP_DIR="/backup/user_management_backups"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Define the current date for the backup filename
DATE=$(date +%Y-%m-%d)

# 1. Backup User Home Directories
echo "Starting backup of user home directories..."
tar -czvf "$BACKUP_DIR/home_backup_$DATE.tar.gz" /home

if [ $? -eq 0 ]; then
    echo "Successfully backed up /home directory to $BACKUP_DIR/home_backup_$DATE.tar.gz"
else
    echo "Error: Failed to backup /home directory."
fi

echo "---"

# 2. Backup User Configuration Files
echo "Starting backup of user configuration files (/etc/passwd, /etc/shadow, etc.)..."
tar -czvf "$BACKUP_DIR/etc_backup_$DATE.tar.gz" /etc/passwd /etc/shadow /etc/group /etc/gshadow

if [ $? -eq 0 ]; then
    echo "Successfully backed up /etc files to $BACKUP_DIR/etc_backup_$DATE.tar.gz"
else
    echo "Error: Failed to backup /etc files."
fi

echo "---"

echo "Backup process completed."
