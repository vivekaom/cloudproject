#!/bin/bash

#make sure the file is not run under root
if [ ! $UID = 0]
 then echo "Please refrain from running this script as root"
fi

#check for research directory
if [ ! -d $HOME/research]
  then mkdir $HOME/research
fi

if [ ! -f $HOME/research/sys_info.txt]
  then touch $HOME/research/sys_info.txt
fi

#variables
output=$HOME/research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
execs=$(find /home -type f -perm 777)

echo "A quick system audit script"
date
echo "machine type info"
echo $MACHTYPE
echo -e "uname info: $(uname -a) \n"
echo -e "ip info:" $ip " \n"
echo "host name: $(hostname -s)"
echo "DNS Servers: " >>$output
cat /etc/resolv.conf >>$output
echo -e "\nMemory Info:" >>$output
free >>$output
echo -e "\nCPU Info:" >>$output
lscpu | grep CPU >>$output
echo -e "\nDisk Usage:" >>$output
df -H | head -2 >>$output
echo -e "\nWho is logged in: \n $(who -a) \n" >>$output
echo -e "\nExec Files:" >>$output
$execs >>$output
echo -e "\nTop 10 Processes" >>$output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >>$output

