#!/bin/bash

#ADMIN= "aneesh.mullapudi@gmail.com"
echo "Disk information"
df

echo 'please input the disk%'
read X
a= 'no'
percent=$(! df -P | awk '{print $5}' | sed 's/.$//') # get disk usage% of all the partitions and store it in array
for p in ${percent[@]:10} 
do
	if [ $p -gt $X ];
	then
		echo 'disk usage exceeded sending mail to admin'
		a='yes'
		break
	fi
done
if [ $a = 'yes' ];
then
	mail -s "diskspace exceeded" aneesh.mullapudi@gmail.com # if mailutils is configured this should work
fi
