## --- My alias | cbarange | September 11th 2020 ---
alias cd.='cd ..'
# cd Documents
alias cdd='cd $HOME/Documents/'
alias cdc='cd $HOME/Documents/EPSI/'
# cd workspace
alias cdw='cd $HOME/Documents/EPSI/workspace'
## --- === ---

## --- Usefull Common Alias ---
# Source : https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
#my default browser
alias browser=google-chrome

# Usefull
alias wget='wget -c'
alias myip="curl http://ipecho.net/plain; echo"
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '

# Some randoms tools
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias ports='netstat -tulanp'
alias count='find . -type f | wc -l'
alias cpv='rsync -ah --info=progress2'
alias getpass="openssl rand -base64 20"
alias untar='tar -zxvf '


## Git
alias gac="git add . && git commit -a -m "

# Python
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias www='python -m SimpleHTTPServer 8000'

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## set some other defaults ##
alias df='df -H'
alias du='du -ch'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Create parent folder not already exists
alias mkdir='mkdir -pv'

# install  colordiff package :)
alias diff='colordiff'

# Make mount command output pretty and human readable format
alias mount='mount |column -t'

# handy short cuts #
alias h='history'
alias j='jobs -l'

# Set viw as default
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# get web server headers #
alias header='curl -I'
 
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

## Add Safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# distro specific  - Debian / Ubuntu and friends #
# install with apt-get
alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"
 
# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade'


# also pass it via sudo so whoever is admin can reload it without calling you #
#alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
#alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'
#alias lightyload='sudo /etc/init.d/lighttpd reload'
#alias lightytest='sudo /usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf -t'
#alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
#alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'

## play video files in a current directory ##
# cd ~/Download/movie-name
# playavi or vlc
#alias playavi='mplayer *.avi'
#alias vlc='vlc *.avi'
 
# play all music files from the current directory #
#alias playwave='for i in *.wav; do mplayer "$i"; done'
#alias playogg='for i in *.ogg; do mplayer "$i"; done'
#alias playmp3='for i in *.mp3; do mplayer "$i"; done'
 
# play files from nas devices #
#alias nplaywave='for i in /nas/multimedia/wave/*.wav; do mplayer "$i"; done'
#alias nplayogg='for i in /nas/multimedia/ogg/*.ogg; do mplayer "$i"; done'
#alias nplaymp3='for i in /nas/multimedia/mp3/*.mp3; do mplayer "$i"; done'
 
# shuffle mp3/ogg etc by default #
#alias music='mplayer --shuffle *'


## All of our servers eth1 is connected to the Internets via vlan / router etc  ##
#alias dnstop='dnstop -l 5  eth1'
#alias vnstat='vnstat -i eth1'
#alias iftop='iftop -i eth1'
#alias tcpdump='tcpdump -i eth1'
#alias ethtool='ethtool eth1'
 
# work on wlan0 by default #
# Only useful for laptop as all servers are without wireless interface
#alias iwconfig='iwconfig wlan0'

## pass options to free ##
#alias meminfo='free -m -l -t'
 
## get top process eating memory
#alias psmem='ps auxf | sort -nr -k 4'
#alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
#alias pscpu='ps auxf | sort -nr -k 3'
#alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
#alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
#alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'







