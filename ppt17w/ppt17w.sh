#!/bin/bash


#check current power limit
slowppt_limit=$(cat /sys/devices/pci0000:00/0000:00:08.1/0000:04:00.0/hwmon/hwmon5/power1_cap)
fastppt_limit=$(cat /sys/devices/pci0000:00/0000:00:08.1/0000:04:00.0/hwmon/hwmon5/power2_cap)

#adjust based on value
if [ "$slowppt_limit" -eq 15000000 ]; then 
	echo 17000000 > /sys/devices/pci0000:00/0000:00:08.1/0000:04:00.0/hwmon/hwmon5/power1_cap
fi

if [ "$fastppt_limit" -eq 15000000 ]; then
	echo 17000000 > /sys/devices/pci0000:00/0000:00:08.1/0000:04:00.0/hwmon/hwmon5/power2_cap
fi
