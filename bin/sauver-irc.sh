#!/bin/bash

cd /var/lib/atheme
cible=/home/nadine/sauvegarde

aujourdhui=$(date +%Y-%m-%d)

tar czvf ${cible}/nickserv.${aujourdhui}.tgz services.db

ilya7jours=$(date -d "-7 day" +%Y-%m-%d)
#echo $ilya7jours
fichier7jours=${cible}/nickserv.${ilya7jours}.tgz

if [ -e $fichier7jours ]; then
   rm $fichier7jours
fi
