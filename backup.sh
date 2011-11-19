#!/bin/bash

#Create mysql backup.$(date +%Y-%m-%d) appends the current date to the file name.
mysqldump --opt -Q -u dbusername --password=dbpassword dbname > ~/sql-$(date +%Y-%m-%d).sql
#Zips the sql backup file and public_html file together and appends the date to the file name.
zip -r _backup/backup-$(date +%Y-%m-%d)  sql-$(date +%Y-%m-%d).sql public_html
#Removes the sql file after zipping as there is no need for it lying around.
rm sql-$(date +%Y-%m-%d).sql
#Lists file's after the last 7 days and xargs parses them by lines to remove them for space management.
ls -t _backup/backup-*.zip | sed -e ‘1,7d’ | xargs -d '\n' rm