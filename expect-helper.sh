#!/bin/bash
# Collect the current user's ssh and enable passwords, then spawns the expect script
echo -n "Enter the telnet username "
#read -s -e username
echo -ne '\n'
echo -n "Enter the telnet password for $username "
#read -s -e password
echo -ne '\n'
echo -n "Enter the Enable password "
#read -s -e enablepassword
echo -ne '\n'

# Feed the expect script a device list & the collected passwords
for device in `cat device-list.txt`; do 
	#expect -f configure-legacy-kit.exp 'cisco' $device 'cisco' 'cisco'  
	expect -f configure-legacy-kit.exp $username $device $password $enablepassword
done


