#!/usr/bin/bash

Icon0=""

Battery=$(acpi | grep -Eo "[0-9]*%" | grep -Eo "[0-9]*")
Status=$(acpi -b | grep -w -o "Charging") 

if [[ $Battery -le 26 && $Battery != 00 ]]; then
	if [[ $Status != "Charging" ]]; then
		echo $Icon0
		rofi -e "电量不足，请尽快充电"
	fi
else
	echo ""
fi
