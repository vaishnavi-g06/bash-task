#! /bin/bash

today=$(date "+%b %d")

for file in $(ls /var/log/ | grep -i "log")
do
if [[ ! -e $file ]]
then
    mkdir $file
fi


grep "$today"  /var/log/syslog | head -n 10 >> /home/remotestate/logfile/$(date +%d-%m-%Y)
done
