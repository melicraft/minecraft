#!/bin/sh
NOW=$(date +"%d-%m-%Y")
printf "Start Backup Job $NOW"
sudo chown -R roque: /srv/minecraft
git add .
git commit -m "Auto Backup Server $NOW" 
git push 
sudo chown -R minecraft.minecraft /srv/minecraft
sudo setfacl -R -m u:minecraft:rwx /srv/minecraft
printf "Backup Finished"
