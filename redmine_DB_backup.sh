#!/bin/bash
cd /home/bitnami/backto
Date=$(date +"%m-%d-%Y-T-%H-%M-%S")
echo $Date
./mysqldump -ubitnami -p[[DBpassword]] bitnami_redmine > /home/bitnami/backupbox/redmine_backup_$Date.sql
cd /home/bitnami/backupbox
#tar -cvzf redmine_backup_$Date.tar.gz redmine_backup_$Date.sql
chmod 755 redmine_backup_$Date.sql
#rm redmine_backup_$Date.sql
