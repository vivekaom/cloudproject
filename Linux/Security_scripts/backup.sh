#!/bin/bash

#make a var/backup directory if it does not exist
mkdir -p /var/backup

#create a backup of the /home directory 
tar cvf /home/var/backup/home.tar /home

#move the backup and rename it 
mv /var/backup/home.tar /var/backup/home.12032021.tar

#make an archive of the /home directory, just in case!
tar cvf /var/backup/system.tar /home 

#list all the files in the /var/backup folder and print them to a file
ls -lh /var/backup > /var/backup/file_report.txt

#print the free memory on the system to a file
free -h > /var/backup/disk_report.txt
