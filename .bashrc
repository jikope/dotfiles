#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias svim='sudo vim'
alias hvim='sudo -u http vim'
alias xdm='/opt/xdman/xdman'
alias PacketTracer='/opt/pt/bin/PacketTracer7'
alias ydl='youtube-dl'
alias man2pdf='/home/bima/script/man2pdf'
alias hh='ranger'

#Movement 
alias cw='cd /srv/http/'
alias ca='cd /Media/Data/Jejepangan/Anime/'
alias cv='cd /home/bima/Downloads/Video'
alias cm='cd /home/bima/Downloads/Music'
alias cwd='cd $dev'

#Web 
alias startLEMP='sudo systemctl start nginx | sudo systemctl start php-fpm | sudo systemctl start mysqld'
alias restartLEMP='sudo systemctl restart nginx | sudo systemctl restart php-fpm | sudo systemctl restart mysqld'
alias stopLEMP='sudo systemctl stop nginx | sudo systemctl stop php-fpm | sudo systemctl stop mysqld'
alias startLAMP='sudo systemctl start httpd | sudo systemctl start mysqld'
alias restartLAMP='sudo systemctl restart httpd | sudo systemctl restart mysqld'
alias stopLAMP='sudo systemctl stop httpd | sudo systemctl stop mysqld'

#Remote 
alias remosr='sudo systemctl start xrdp | sudo systemctl start xrdp-sesman'
alias remost='sudo systemctl stop xrdp | sudo systemctl stop xrdp-sesman'
alias remore='sudo systemctl restart xrdp | sudo systemctl restart xrdp-sesman'

#PS1='[\u@\h \W]\$ '
PS1='\[\033[00;34m\]console \[\033[01;34m\]\w\[\033[01;33m\] >\[\033[00;32m\]///\[\033[01;33m\]< \[\033[01;35m\]'
#export PATH="$PATH:$(du "$HOME/script/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export PATH="${PATH}:${HOME}/.script/"
export PATH="${PATH}:$HOME/.config/composer/vendor/bin"

export dev="/Media/Data/Laravel/MangaReader/"

## POWERLINE
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh
