#!/bin/bash
# Backup daily and monthly in tar.bz2
# usage
# ./backup.sh DirectoryToSave DestinationPath ArchiveName
# example : 
# ./backup.sh /home/minecraft /home/backup minecraft
# restore tar jxvf /path/backupname.tar.bz2  -C / 
# Weekdays(7) and month(12) max 19 backups
DirectoryToSave=$1
DestinationPath=$2
ArchiveName=$3

# date du jour
backupdate=$(date +%d)
# changement de nom pour la sauvegarde mensuelle
if [ $backupdate = 01 ]
then
	backupdate=$(date +%m-%d)
else
	#jour de la semaine
	backupdate=$(date +%a)
fi
# si le fichier existe deja on efface
rm $DestinationPath/$ArchiveName-$backupdate.tar.bz2
# tar -cjf /destination/fichier.tar.bz2 /source1 /source2 /sourceN
# créé une archive bz2
# sauvegarde de /home
/bin/tar -cjf $DestinationPath/$ArchiveName-$backupdate.tar.bz2 $DirectoryToSave
