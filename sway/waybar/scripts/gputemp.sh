#!/bin/bash
rawTemp=$(cat /sys/class/drm/card0/device/hwmon/hwmon*/temp1_input)
if [ $rawTemp = "0" ] 
then
   echo "N.A"
else
    echo "$(($rawTemp/1000)) °C"
fi
