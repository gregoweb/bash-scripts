# backup.sh
Backup daily and monthly in tar.bz2  
Weekdays(7) and month(12) max 19 backups  

usage :  
**./backup.sh DirectoryToSave DestinationPath ArchiveName**  

example :  
**./backup.sh /home/minecraft /home/backup minecraft**  

restore tar jxvf /path/backupname.tar.bz2  -C / 
