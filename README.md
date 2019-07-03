# dotfiles


``` bash
curl -L https://git.io/fjrcr | sh
```

<br>

## Note


注意: `bin/dotfile.sh`中的设置最好自己选择后再建立软连接,或者直接拖到对应的配置文件夹中:
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

---

<br>

![img1](Preview/2019-07-03%2012-12-21.png)
