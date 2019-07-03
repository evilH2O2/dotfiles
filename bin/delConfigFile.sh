#!/usr/bin/sh


rofi="$HOME/.config/rofi"
polybar="$HOME/.config/polybar"
conky="$HOME/.config/conky"
i3wm="$HOME/.config/i3"
ncmpcpp="$HOME/.ncmpcpp"
neofetch="$HOME/.config/neofetch"

main(){
	rm -r $rofi
	rm -r $polybar
	rm -r $conky
	rm -r $i3wm
	rm -r $ncmpcpp
	rm -r $neofetch
}
main

# one(){
# 	while true
# 	do
# 		echo -e '1) rofi: ' $rofi
# 		echo -e '2) polybar: ' $polybar
# 		echo -e '3) conky: ' $conky
# 		echo -e '4) i3wm: ' $i3wm
# 		echo -e '5) ncmpcpp: ' $ncmpcpp
# 		echo -e '6) neofetch: ' $neofetch
# 		echo -e '0) Exit'
# 		echo -e "\n"
# 		read -p "所以，给我你的选择[1/2/3/4/5/6/0]： " number
# 		case $number in
# 			1 ) rm -r $rofi;;
# 			2 ) rm -r $polybar;;
# 			3 ) rm -r $conky;;
# 			4 ) rm -r $i3wm;;
# 			5 ) rm -r $ncmpcpp;;
# 			6 ) rm -r $neofetch;;
# 			0 ) exit 0;;
# 			*) echo -e "所以，你是不打算认真对我喽\n";;
# 		esac
# 	done
# }
