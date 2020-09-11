
# Shortcuts

https://support.system76.com/articles/pop-keyboard-shortcuts/

---

# Clipboard

```bash
sudo apt-get install xclip
``` 

## Use xclip clipboard

cat fruits.txt | xclip
xclip -o

## Use standard clipboard

```bash
cat fruits.txt | xclip -selection clipboard
``` 

## Pro Tips

alias c='xclip -selection clipboard'
alias v='xclip -o'


---

# Sublim Tools

## Sublim Text & Sublim merge

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install sublime-text
sudo apt-get install sublime-merge



## Tabine


1 - Install Package Control by pressing `Ctrl+Shift+P` and selecting Install Package Control.
2 - Install TabNine by pressing `Ctrl+Shift+P`  and selecting Package Control: Install Package and then TabNine.
https://www.tabnine.com/


---

# SSH

https://pop-planet.info/wiki/index.php/SSH

https://gist.github.com/jexchan/2351996

```bash
# Utilisation standard
ssh -p {port} {user}@{IP}

~/.ssh/config

ssh-keygen -t rsa -C "your_email@youremail.com"
cd ~/.ssh/
subl config
# Github
Host github.com
	HostName github.com
	User git
	PreferredAuthentications publickey
  IdentityFile ~/.ssh/github

git config --global user.name "cbarange"
git config --global user.email "cbarange.dev@gmail.com"

# Exemple de config ssh
Host server10
  Hostname 1.2.3.4
  IdentityFile ~/backups/.ssh/id_dsa
  user foobar
  Port 30000
  ForwardX11Trusted yes
  TCPKeepAlive yes
Host github.com
  User git
  Hostname github.com
  PreferredAuthentications publickey
  IdentityFile /home/user/.ssh/id_rsa
# Connexion ssh avec le nom de host
ssh server10

``` 



# Docker
https://docs.docker.com/engine/install/ubuntu/
```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


apt-cache madison docker-ce

sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
sudo docker run hello-world

``` 


# Install RDP Client :

https://remmina.org/how-to-install-remmina/
```bash
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret

sudo killall remmina

ppa:remmina-ppa-team/remmina-next-daily
``` 

# Connect to RDP


https://www.digitalcitizen.life/connecting-windows-remote-desktop-ubuntu
Docker ne permet de faire fonctionner une machine windows depuis une machine linux


# VirtualBox


https://support.system76.com/articles/windows-vm/
https://itsfoss.com/install-windows-10-virtualbox-linux/

> La doc virtual box est tres vieille
```bash
sudo apt install virtualbox
``` 





# TMUX
https://shortcutworld.com/tmux/linux/tmux_Shortcuts
```bash
sudo apt install tmux
``` 

# Conky

https://doc.ubuntu-fr.org/conky


# Cinnamon

https://support.system76.com/articles/desktop-environment/
https://support.system76.com/articles/touchpad/


# NodeJs

```bash
sudo apt install nodejs npm
echo "Node version : `node -v`" && echo "NPM version : `npm -v`"

# Yarn : https://classic.yarnpkg.com/en/docs/install/#debian-stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
yarn --version

# VueJs : https://cli.vuejs.org/guide/installation.html
sudo yarn global remove vue-cli
sudo yarn global add @vue/cli
vue create {PROJECT_NAME}
# ReactJs



# Angular

# 

# 

# 

# 


``` 

# Postman

postman
