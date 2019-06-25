#!/usr/bin/env bash

# From : https://github.com/adi1090x/dots/blob/master/usr/bin/check-network


count=0
#disconnected=""
#disconnected2=""
#wireless_connected=""
#ethernet_connected=""
disconnected="睊" # \uf00d
disconnected2="ﲁ"
wireless_connected="直" #\uf1eb
ethernet_connected="說" # echo -e "\uf9a1"

# TODO : https://fontawesome.com/v4.7.0/icons/#

ID="$(ip link | awk '/state UP/ {print $2}')"

while true; do
    if (ping -c 1 archlinux.org || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
        if [[ $ID == e* ]]; then
            echo "$ethernet_connected" ; sleep 25
        else
            echo "$wireless_connected" ; sleep 25
        fi
    else
        echo "$disconnected" ; sleep 0.5
        echo "$disconnected2" ; sleep 0.5
    fi
done