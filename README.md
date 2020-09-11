# PopOs Configuration 
> cbarange | September 11th 2020
---

## SSH


## File Explorer

```bash
echo ~/.bashrc >> alias open='nautilus . &'
``` 

## Mouse Scroll Wheel

check for `mouse_wheel_speed.sh`, work only for "real" mouse, no trackpad support

## Navigation 

#### Application through Virtual Desktop
> Disable Alt+Tab acces for applications outside of current virtual desktop
```bash
gsettings set org.gnome.shell.app-switcher current-workspace-only true
```
#### Alt+Tab between windows not between Application
> Enable Alt+Tab to reach different windows of the same application
1. Go in **Setting** and **Keyboard Shortcut**
2. Go in part **Navigation** and set *alt+tab* for **Switch windows** option 	

## Alias Commands

check for `common_alias.sh`
```bash
wget https://raw.githubusercontent.com/cbarange/popos-conf/master/common_alias.sh -O ~/.bash_aliases
echo -e "if [ -f ~/.bash_aliases ]; then \n" \
	". ~/.bash_aliases \n" \
	"fi \n" \
	>> ~/.bashrc
source ~/.bashrc
```


