#!/bin/sh
printf "Start Backup Job"
sudo chown -R roque: /srv/minecraft
git add .
git commit -m 'Auto Backup Server ${$(date +'%d-%m-%Y')}' 
git push 
sudo chown -R minecraft.minecraft /srv/minecraft
sudo setfacl -R -m u:minecraft:rwx /srv/minecraft
printf "Backup Finished"
