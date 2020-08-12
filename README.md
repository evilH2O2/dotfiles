# dotfiles

<br/>

```bash
git clone -b Mac https://github.com/evilH2O2/dotfiles.git
# or
git checkout Mac
```

<br/>

``` bash
curl -L https://git.io/fjrcr | sh
```

<br>

## Note


`bin/dotfile.sh`要有选择的进行设置,或者直接拖到对应的配置文件夹中:
``` bash
main(){
	vim
	rofi
	polybar
	bashrc
	zsh
	conky
	i3wm
	ncmpcpp
	# mpd
	neofetch
}
```

**NOTE**: 建立的是配置**目录**的软连接，建议将所需配置程序的配置目录(就上面的几个)删个遍，可以运行　`bin/delConfigFile.sh`

<br>

- Terminal Theme：
  - rxvt => [urxvt-snazzy](https://github.com/LeonGr/urxvt-snazzy)
  - gnome-terminal  => [gnome-terminal-snazzy](https://github.com/tobark/hyper-snazzy-gnome-terminal)
  - hyper => [hyper-snazzy](https://github.com/sindresorhus/hyper-snazzy)

- Gedit Theme:
  - [Dracula Theme](https://draculatheme.com/gedit/)
  
- Sublime Code Theme:
  - [Dracula Theme](https://draculatheme.com/sublime/)

---

<br>

![img1](Preview/2019-07-03%2020-54-10.png)

![img](Preview/2019-07-05%2019-50.gif)
