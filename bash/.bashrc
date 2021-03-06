export VISUAL='vim'
export EDITOR="$VISUAL"
export SHELL='/bin/bash'

# Don't save less history to file
export LESSHISTFILE='-'

# Coloured GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;34:caret=01;32:locus=01:quote=01'

# Colour man pages nicely
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[0;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[37;44m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;35m'

# Configure bash prompt
PS1='\[\e[0;34m\]\u@\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# Remember git credentials
alias gitplz="git config --global credential.helper 'cache --timeout=3600'"

# Add colours to ls and put directories first
alias ls='ls --color=auto --group-directories-first'

# Additional ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add colours to grep and diff
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# Clean up unused packages
alias clean='sudo pacman -R $(pacman -Qdtq)'

#alias j='autojump'
alias m='mpc'

alias r='reset'
alias c="echo -en '\0033\0143'"

alias h="cd ~"
alias q="exit"
alias d="disown; exit"
alias o="xdg-open"

alias gst="git status"
alias gpll="git pull"
alias gpsh="git push"
alias ga="git add"
alias gc="git commit -m"

alias play="mpc searchplay title"
alias by="mpc list title artist"

function profile {
  CPUPROFILE="$1".pprof LD_PRELOAD=/usr/lib/libprofiler.so $*
}

# Block a website by adding entries for it in the hosts file
function block() {
  blockh $* | sudo tee -a /etc/hosts > /dev/null
}

# Helper
function blockh() {
  fst="0.0.0.0"
  snd="::0"
  for i in "$@"
  do
    echo ""
    echo "$fst www.$i"
    echo "$fst $i"
    echo "$snd www.$i"
    echo "$snd $i"
  done
}

# List contents after call to cd
function cd()
{
   builtin cd "$*" && ls
}

source /etc/profile.d/autojump.bash
source ~/.cargo/env
