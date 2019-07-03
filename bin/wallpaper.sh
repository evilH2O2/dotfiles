pathDir="$HOME/Photos/wallpaper/"

Img=$(ls $pathDir | rofi -dmenu -i -p "Select:")

if [[ "$Img" != "" ]]; then
	feh --bg-fill $pathDir$Img
else
	exit 0
fi
