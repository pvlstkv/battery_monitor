#!/usr/bin/env bash

high_level=80
low_level=45
timeout=300 #seconds

  while true
    do
	ac_power=$(acpi -b | grep -c "Charging")
       export DISPLAY=:0.0
       battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
      if [[ $ac_power -eq 1 ]]; then
           if [[ $battery_level -ge $high_level ]]; then
              notify-send "Battery Full" "Level: ${battery_level}% "
              paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
           fi
       else
           if [[ $battery_level -le $low_level ]]; then
              notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
              paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
           fi
      fi
     sleep $timeout 
   done 

