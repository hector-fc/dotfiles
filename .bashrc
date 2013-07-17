# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

setterm -blength 0

export BASHRC="$HOME/.bashrc"
export EDITOR="vim"

#### CUTEr
ROOTCUTER="$HOME/Libraries"

export CUTER="$ROOTCUTER/cuter2"
export MYCUTER="$CUTER/CUTEr.large.pc.lnx.gfo"
export SIFDEC="$ROOTCUTER/sifdec2"
export MYSIFDEC="$SIFDEC/SifDec.large.pc.lnx.gfo"
export MASTSIF="$ROOTCUTER/mastsif"
export MANPATH="$CUTER/common/man:$SIFDEC/common/man:$MANPATH"
export PATH="$MYCUTER/bin:$MYSIFDEC/bin:$PATH"
####

#### IPOPT
IPOPTDIR="$HOME/Libraries/CoinIpopt"
####

#### dcicpp
export GOTOBLASDIR="$HOME/Libraries/GotoBLAS2"
export GOTOBLASLIBS="$GOTOBLASDIR/libgoto2.a $GOTOBLASDIR/libgoto2.so -lgfortran -lgfortranbegin"

LIBSDIR="$HOME/Libraries"
METISDIR="${LIBSDIR}/metis-5.0.2"
TIMDAVISDIR="${LIBSDIR}"
CHOLMODDIR="$TIMDAVISDIR/CHOLMOD"
AMDDIR="$TIMDAVISDIR/AMD"
CAMDDIR="$TIMDAVISDIR/CAMD"
COLAMDDIR="$TIMDAVISDIR/COLAMD"
CCOLAMDDIR="$TIMDAVISDIR/CCOLAMD"
SSCONFIGDIR="$TIMDAVISDIR/SuiteSparse_config"
BMDIR="$LIBSDIR/base_matrices"
DCICPPDIR="$LIBSDIR/dcicpp"

TIMDAVISLIB="$CHOLMODDIR/Lib:$AMDDIR/Lib:$CAMDDIR/Lib:$COLAMDDIR/Lib:$CCOLAMDDIR/Lib:$SSCONFIGDIR"
METISLIB="$METISDIR"
BMLIB="$BMDIR/Lib"
CUTERLIB="$MYCUTER/double/lib"
DCICPPLIB="$DCICPPDIR/Lib"

TIMDAVISI="$CHOLMODDIR/Include:$SSCONFIGDIR"
METISI="$METISDIR/Lib"
BMI="$BMDIR/Include"
CUTERI="$CUTER/common/include"
DCICPPI="$DCICPPDIR/Include"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib:$TIMDAVISLIB:$METISLIB:$BMLIB:$CUTERLIB:$GOTOBLASDIR:$DCICPPLIB:$MUMPSLIB"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib:$TIMDAVISLIB:$METISLIB:$BMLIB:$CUTERLIB:$GOTOBLASDIR:$DCICPPLIB:$MUMPSLIB"
export LIBPATH="$LIBPATH:/usr/local/lib:$TIMDAVISLIB:$METISLIB:$BMLIB:$CUTERLIB:$GOTOBLASDIR:$DCICPPLIB:$MUMPSLIB"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$TIMDAVISI:$METISI:$BMI:$CUTERI:$DCICPPI:$MUMPSI"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$TIMDAVISI:$METISI:$BMI:$CUTERI:$DCICPPI:$MUMPSI"
export INCLUDE_PATH="$INCLUDE_PATH:$TIMDAVISI:$METISI:$BMI:$CUTERI:$DCICPPI:$MUMPSI"
####

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

date +"%a - %d/%m/%y - %H:%M:%S"
if [ -x /bin/todo -o -x /usr/bin/todo ]; then
  todo
else 
  if [ -x /bin/task -o -x /usr/bin/task ]; then
    task
  fi
fi
#echo -e "\e[0;32m$USER@$HOSTNAME"

if [ -f ~/.bash_prompt -a -n "$DISPLAY" ]; then
  source ~/.bash_prompt
else
  PS1='[\t]\w\n\u@\H\$ '
fi
