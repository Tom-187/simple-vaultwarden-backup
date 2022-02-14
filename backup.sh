#!/bin/bash
compressed_name="/vw-data/$(date "+%d.%m.%y___%H:%M:%S" ).tar.gz"
dest_folder="/home/pi/docker-stuff/backups"
source_folder="/vw-data"

##Folder to be backed up: /vw-data
##Move .tar.gz to /home/pi/docker-stuff/backups

echo -----------------------------------
echo
echo Toms-Backup-Script is starting now!
echo
echo -----------------------------------

tar -czvf $compressed_name $source_folder
mv $compressed_name $dest_folder

echo -----------------------------------
echo
echo Toms-Backup-Script has finished!
echo
echo -----------------------------------
