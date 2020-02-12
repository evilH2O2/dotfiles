#!/bin/bash


MENU=$(rofi -sep "|" -dmenu -i -p 'System' -location 5 -yoffset -50 -xoffset -10 -width 10 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 -font "mononoki 10" <<< " Lock| Logout| Reboot| Shutdown")
			case $MENU in
				*Lock) i3lock-fancy -t 'Input your passwd' ;;
				*Logout) 
					Cmd1=$(rofi -sep "|" -dmenu -i -p "Are You True?" -location 0 -lines 2 <<< "Yes [Y]|NO [N]")
						case $Cmd1 in
							Yes*) i3-msg exit;;
							NO*) exit
						esac 
						;;
				*Reboot) 
					Cmd1=$(rofi -sep "|" -dmenu -i -p "Are You True?" -location 0 -lines 2 <<< "Yes [Y]|NO [N]")
						case $Cmd1 in
							Yes*) systemctl reboot;;
							NO*) exit
						esac 
						;;
				*Shutdown) 
					Cmd2=$(rofi -sep "|" -dmenu -i -p "Are You True?" -location 0 -lines 2 <<< "Yes [Y]|NO [N]")
						case $Cmd2 in
							Yes*) systemctl -i poweroff;;
							NO*) exit
						esac 
						;;
esac

# systemctl -i poweroff
# systemctl reboot ;;
# i3-msg exit;;