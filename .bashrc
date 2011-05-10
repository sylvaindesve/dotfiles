#!/bin/bash
# Bash environment inspired from rtomayko's

# Variables
: ${HOME=~}

# ----------------------------------------------------------------------
# SHELL OPTIONS
# ----------------------------------------------------------------------

# shell opts. see bash(1) for details
shopt -s cdspell >/dev/null 2>&1
shopt -s extglob >/dev/null 2>&1
shopt -s histappend >/dev/null 2>&1
shopt -s no_empty_cmd_completion >/dev/null 2>&1

# default umask
umask 0022

# ----------------------------------------------------------------------
# PATH
# ----------------------------------------------------------------------

PATH="/usr/local/bin:$PATH"

test -d "$HOME/bin" &&
PATH="$HOME/bin:$PATH"

# ----------------------------------------------------------------------
# ALIASES
# ----------------------------------------------------------------------

alias la="ls -la"

