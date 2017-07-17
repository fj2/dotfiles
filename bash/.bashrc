# shellcheck disable=SC1090
# Load aliases in from file
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

alias gitplz="git config --global credential.helper 'cache --timeout=3600'"

# Add colours to ls and put directories first
alias ls='ls --color=auto --group-directories-first'

# Add colours to grep, make it insensitive, add line numbers
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Add colours to diff
alias diff='diff --color=auto'

# Clean up unused packages
alias clean='sudo pacman -R $(pacman -Qdtq)'

# Additional ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias rf='rm -rf'
alias r='reset'
alias c="echo -en '\0033\0143'"

alias h="cd ~"
alias q="exit"
alias v="vim"
alias d="disown; exit"

alias gst="git status"
alias gpll="git pull"
alias gpsh="git push"
alias ga="git add"
alias gc="git commit -m"

# Don't save bash history to file
unset HISTFILE

# Don't save less history to file
export LESSHISTFILE='-'

# Ctrl+s doesn't break vim
stty -ixon -ixoff

# Coloured GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;34:caret=01;32:locus=01:quote=01'

# Colour man pages nicely
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[0;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[37;44m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;35m'

# List contents after call to cd
function cd()
{
   builtin cd "$*" && ls
}

# Set up bash prompt
PS1='\[\e[0;34m\]\u@$(~/.elapsed.sh)\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

PATH=$PATH:'/home/finn/voltdb-sgx/bin'
export PATH
export VISUAL=vim
export EDITOR="$VISUAL"
SHELL=/bin/bash
export SHELL

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PATH="/home/finn/perl5/bin${PATH:+:${PATH}}"; export PATH;
