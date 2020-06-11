#!/bin/sh
printf "Start Backup Job"
sudo chown -R roque: /srv/minecraft
git add .
NOW=$(date +"%d-%m-%Y")
git commit -m 'Auto Backup Server $NOW' 
git push 
chown -R minecraft.minecraft /srv/minecraft
setfacl -R -m u:minecraft:rwx /srv/minecraft
printf "Backup Finished"
