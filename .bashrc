#!/bin/bash
# Bash environment inspired from rtomayko's

# Variables
: ${HOME=~}

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

