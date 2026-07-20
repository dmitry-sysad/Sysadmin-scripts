#!/bin/bash
BACKUP_DIR="./my_docs"
DATE=$(date +%Y-%m-%d)
mkdir -p $BACKUP_DIR
echo "Создаю бэкап в файл backup_$DATE.tar.gz"
tar -czf "backup_$DATE.tar.gz" $BACKUP_DIR 2>/dev/null
echo "Готово! Файл: backup_$DATE.tar.gz"