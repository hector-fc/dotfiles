#functions
function repeat() {
  while /bin/true; do clear; $1; sleep 0.3; done
}
function hexvalue() {
  printf '%x' $1
}
function typewrite() {
  echo $1 | pv -qL 10
}
function mkcd() {
  mkdir $1
  cd $1
}
function calc() {
  echo "scale=5; $1" | bc
}
function downfile() {
  wget codepad.org/$1/raw.txt -O $2
}
function fullpath() {
  echo $(pwd)/$1
}
function lsmp3 {
  if [ $# -eq 0 ]
  then 
    dir=.
  else
    if [ -d "$1" ]
    then
      dir=$1
    else
      dir=.
    fi
  fi
  find "$dir" -name "*.mp3" | sort
}

alias now="date +%Y.%m.%d_%H.%M.%S"
alias findswp='find . -name "*.sw[op]"'
alias freemonitor='while /bin/true; do clear; free; sleep 0.3; done'
alias uploadfile='wgetpaste -s codepad -C'

alias crawlssh='echo "Your pass is mypassAbel"; ssh -C -i /home/abel/Documentos/cszo_key -l crawl crawl.s-z.org'
alias skype='xhost +local: && sudo -u skype /usr/bin/skype'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias less='less -R'

alias git-diff='git diff --color-words'

alias updgrade='sudo aptitude update && sudo aptitude upgrade'
alias kissfm='mplayer -playlist http://www.crosshost.com.br/cbs/kiss/ouvir.m3u'
alias q='exit'
alias h='history'
alias ..='cd ..'
alias rmtemp='find . -name "*~" | while read file; do rm -f "$file"; done'
alias off='sudo shutdown -h now'
alias srcrc='source ~/.bashrc'

alias hdabelb='sudo mount -t vfat /dev/sdb1 /media/hdabel -o uid=1000 -o iocharset=utf8'
alias hdabelc='sudo mount -t vfat /dev/sdc1 /media/hdabel -o uid=1000 -o iocharset=utf8'
alias hdabeld='sudo mount -t vfat /dev/sdd1 /media/hdabel -o uid=1000 -o iocharset=utf8'
alias hdabele='sudo mount -t vfat /dev/sde1 /media/hdabel -o uid=1000 -o iocharset=utf8'
alias hdabelf='sudo mount -t vfat /dev/sdf1 /media/hdabel -o uid=1000 -o iocharset=utf8'

alias ls='ls -h --color=auto'
alias ll='ls -l --group-directories-first'
alias la='ls -A'
alias lla='ll -A'
alias lsdir='ls -d */'
alias lx='ls -lXB'
alias lsize='ls -lSr'
alias ltime='ls -ltcr'
alias ldate='ls -ltr'
alias lr='ls -lR'
alias tree='tree -Csu'
alias grep='grep --color'
alias l='ls'
alias list='ls -1'
alias lsexec='ls -F | grep "*"'

alias df='df -Th'
alias du='du -h'
alias dusort='du -s -BM * | sort -n'
alias free='free -m'
alias cache_clear='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches" '
alias sort='LC_ALL=C sort'

alias editbash='vim ~/.bashrc'
alias editalias='vim ~/.bash_aliases'

alias mkthislst='lsmp3 > this.lst'
alias playmp3='mpg123 -C'
alias randomplay='mpg123 -CZ'
alias randomplaythis='mpg123 -CZ --list this.lst'
alias playthis='mpg123 -C --list this.lst'

alias hdmimplayer='mplayer -ao alsa:device=hw=2.3'
alias vaapimplayer='mplayer -vo vaapi:gl -va vaapi'
alias ffta='sudo VisualBoyAdvance -4 -N ~/FFTA/Final\ Fantasy\ Tactics\ Advance.GBA'

alias pdfwidth='xpdf -z width'
alias pdfpage='xpdf -z page'

alias renamevtv='rename .[VTV]. . *'
alias ravenespeak='espeak -p0 -s120 "Quoth the raven: Nevermore"'

alias c='clear'

function exists() {
  if (grep -qs $1 *)
  then
    exit 0
  else
    exit 1
  fi
}
