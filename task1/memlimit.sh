#!/bin/bash

echo "Please input the memory limit"

read memory_limit

total=$(free|awk '/^Mem:/{print $2}')

if [ $total -gt $memory_limit ];
then
	echo system has more memory than given memory
else
	echo system has less memory than given memory
fi
