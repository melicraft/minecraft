#!/bin/sh
printf "Start Backup Job"
git add .
git commit -m 'Auto Backup Server ${$(date +'%d-%m-%Y')}' 
git push 
printf "Backup Finished"
