alias ls='ls -G'
alias ll='ls -lah'
alias la='ls -a'

# file color settings
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad 

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="[\[$(tput setaf 5)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 3)\]\W\[$(tput setaf 7)\]]\[$(tput setaf 7)\]\\$\[$(tput sgr0)\]"

