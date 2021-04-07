#!/bin/bash

# INSTRUCTIONS: Edit the following placeholder command and output filepaths
# For example: cpu_usage_tool > ~/backups/cpuuse/cpu_usage.txt
# The cpu_usage_tool is the command and ~/backups/cpuuse/cpu_usage.txt is the filepath
# In the above example, the `cpu_usage_tool` command will output CPU usage information into a `cpu_usage.txt` file.
# Do not forget to use the -h option for free memory, disk usage, and free disk space

#variables
output1=('./free_mem.txt')
output2=('./disk_use.txt')
output3=('./open_list.txt')
output4=('./free_disk.txt')

# Free memory output to a free_mem.txt file
echo "Free Memory" > $output1
echo "" >> $output1
free -h | sed '2q;d' | awk '{print $1,$4}' >> $output1

# Disk usage output to a disk_usage.txt file
echo "Disk Usage" > $output2
echo "" >> $output2
df -h / | sed '2q;d' | awk '{print $5}' >> $output2

# List open files to a open_list.txt file
echo "List of Open Files" > $output3
echo "" >> $output3
date >> $output3
echo "" >> $output3
lsof >> $output3

# Free disk space to a free_disk.txt file
echo "Free Disk Space" > $output4
echo "" >> $output4
df -h / | sed '2q;d' | awk '{print $3}' >> $output4
