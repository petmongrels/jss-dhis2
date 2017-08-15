#!/usr/bin/env bash
SCRIPT_DIR=$(dirname "$0")
DAYNAME=$(date +%a)
BACKUP_FILE_PATH=${SCRIPT_DIR}/backup/dhis2_${DAYNAME}.sql
echo "[backup] Backing up postgres databases at ${BACKUP_FILE_PATH}" >> ${SCRIPT_DIR}/log/backup.log 2>&1 &
pg_dump dhis2 > ${SCRIPT_DIR}/backup/dhis2_${DAYNAME}.sql
echo "[backup] Backing complete" >> ${SCRIPT_DIR}/log/backup.log 2>&1 &