# ~/.bashrc: executed by bash(1) for non-login shells.

HISTTIMEFORMAT='%y/%m/%d %H:%M:%S  '
HISTSIZE=65535
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

alias ll='ls -alF'


