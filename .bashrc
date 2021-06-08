#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -l'
alias cls='clear'
alias py='python'
PS1='[\u@\h \W]\$ '
neofetch
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

export SPICETIFY_INSTALL="~/spicetify-cli"
export PATH="../../scripts/styli.sh:$PATH"
export PATH="SPICETIFY_INSTALL:$PATH"
