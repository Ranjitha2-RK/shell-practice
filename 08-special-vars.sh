#!/bin/bash

#Important for the interviews

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "Script name: $0"
echo "Current directory: $PWD"
echo "Who is running this: $USER"
echo "Home directory of user: $HOME"
echo "PID of this script: $$"

#sleep 50 & => it going to back ground
#ps -ef| grep sleep
#ec2-user   21943   21913  0 17:45 ?        00:00:03 bash -c while true; do sleep 1;head -v -n 8 /proc/meminfo; head -v -n 2 /proc/stat /proc/version /proc/uptime /proc/loadavg /proc/sys/fs/file-nr /proc/sys/kernel/hostname; tail -v -n 32 /proc/net/dev;echo '==> /proc/df <==';df -l;echo '==> /proc/who <==';who;echo '==> /proc/end <==';echo '##Moba##'; done
#ec2-user   39431       1  0 18:33 pts/0    00:00:00 sleep 50
#ec2-user   39723   21943  0 18:34 ?        00:00:00 sleep 1
#ec2-user   39725   21916  0 18:34 pts/0    00:00:00 grep --color=auto sleep

sleep 50 &

echo "PID of the last comand in background is: $!"