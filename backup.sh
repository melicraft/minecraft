#!/usr/bin/env bash
NOW=$(date +"%d/%m/%Y %T")
printf "Start Backup Job $NOW"
git add .
git commit -m "Auto Backup Server $NOW" 
git push 
printf "Backup Finished"
