#!/bin/bash

output=$HOME/research/sys_info.txt
if [ ! -d $HOME/research ]
then
mkdir $HOME/research
fi
echo "executable files" >> $output && sudo find /home -type f -perm 777 >> $output
echo "top 10 proccesses" >> $output && ps aux --sort %mem | awk '{print $1, $2, $3, $4, $11}' | head >> $output 
echo "System Manifest" >> $output && date >> $output && uname -a >> $output
ip addr | grep inet | tail -2 | head -1 >> $output && hostname >> $output
