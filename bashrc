#!/bin/bash
# Bash environment inspired from rtomayko's

# Variables
: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}

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
# PROMPT
# ----------------------------------------------------------------------

RED="\[\033[0;31m\]"
BROWN="\[\033[0;33m\]"
GREY="\[\033[0;97m\]"
BLUE="\[\033[0;34m\]"
PS_CLEAR="\[\033[0m\]"
SCREEN_ESC="\[\033k\033\134\]"

if [ "$LOGNAME" = "root" ]; then
    COLOR1="${RED}"
    COLOR2="${BROWN}"
    P="#"
else
    COLOR1="${BLUE}"
    COLOR2="${BROWN}"
    P="\$"
fi

prompt_simple() {
    unset PROMPT_COMMAND
    PS1="[\u@\h:\w]\$ "
    PS2="> "
}

prompt_compact() {
    unset PROMPT_COMMAND
    PS1="${COLOR1}${P}${PS_CLEAR} "
    PS2="> "
}

prompt_color() {
    PS1="${GREY}[${COLOR1}\u${GREY}@${COLOR2}\h${GREY}:${COLOR1}\W${GREY}]${COLOR2}$P${PS_CLEAR} "
    PS2="\[[33;1m\]continue \[[0m[1m\]> "
}

# ----------------------------------------------------------------------
# PATH
# ----------------------------------------------------------------------

PATH="/usr/local/bin:$PATH"

test -d "$HOME/bin" &&
PATH="$HOME/bin:$HOME/.rvm/bin:/usr/local/share/npm/bin:$PATH"

# sqlite
PATH="/usr/local/opt/sqlite/bin:$PATH"

# .local est le répertoire de Stack (Haskell)
test -d "$HOME/.local/bin" &&
PATH="$HOME/.local/bin:$PATH"

# ----------------------------------------------------------------------
# EDITOR
# ----------------------------------------------------------------------

# Test for vim or gvim
HAVE_VIM=$(command -v vim)

test -n "$HAVE_VIM" &&
EDITOR=vim ||
EDITOR=vi
export EDITOR

# ----------------------------------------------------------------------
# JAVASCRIPT INTERPRETER
# ----------------------------------------------------------------------

HAVE_NODE=$(command -v node)
if [ -n "$HAVE_NODE" ]; then
  JS_CMD=node
  export JS_CMD
fi

# ----------------------------------------------------------------------
# ALIASES
# ----------------------------------------------------------------------

# ----------------------------------------------------------------------
# BASH COMPLETION
# ----------------------------------------------------------------------

test -n "$PS1" && {
  test -f ~/.bash_completion &&
  . ~/.bash_completion
}

# override and disable tilde expansion
_expand() {
    return 0
}

# ----------------------------------------------------------------------
# LS
# ----------------------------------------------------------------------

# common ls options
LS_COMMON="-hBG"

# always use common ls options
test -n "$LS_COMMON" &&
alias ls="command ls $LS_COMMON"

# show files and dirs as a list
alias ll="ls -l"
# show hidden files
alias l.="ls -d .*"

# -------------------------------------------------------------------
# USER SHELL ENVIRONMENT
# -------------------------------------------------------------------

# Sourcing personal script
[ -r .extra ] && [ -f .extra ] && source .extra

# Use the color prompt by default when interactive
test -n "$PS1" &&
prompt_color

# -------------------------------------------------------------------
# RVM
# -------------------------------------------------------------------

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# -------------------------------------------------------------------
# NVM
# -------------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
