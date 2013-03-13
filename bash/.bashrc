# ------------------------------- #
#            My.Bashrc            #
#          13 March 2013          #
#         Benjamin Wagner         #
#  benjamin.j.wagner.1@gmail.com  #
# ------------------------------- #
# -----------------------------------------
# Check me out on GitHub @blizzrdof77
# GitHub Repo:
# https://github.com/blizzrdof77/useful-code-snippets.git
# ~/.bashrc: executed by bash for interactive shells.
# -----------------------------------------

#   [[ -z $1 ]] && the_new_dir=$HOME
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# ---------------
#  Shell Options
# ---------------
# Don't wait for job termination notification
set -o notify

# --------------------
#  Completion options
# --------------------
# These completion tuning parameters change the default behavior of bash_completion:
# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion
# Ignore case on autocomplete
set completion-ignore-case on 

# -----------------
#  History Options
# -----------------
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"

# -------------------------- # 
#    Make Bash 8-bit Clean   #
# -------------------------- # 
set meta-flag on
set convert-meta off
set output-meta on
alias path='echo -e ${PATH//:/'


# -------------
# Bash Aliases
# -------------
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# ---------------
# Bash Functions
# ---------------
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi
