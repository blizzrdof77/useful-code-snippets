# ------------------------------- #
#         My Bash Aliases         #
# ------------------------------- #
# Check me out on GitHub @blizzrdof77

# GitHub Repo:
# https://github.com/blizzrdof77/useful-code-snippets.git


# ------------------------ # 
#    DIRECTORY LISTINGS    #
# ------------------------ #
# Some shortcuts for different directory listings...
#alias ls='ls -hF --color=tty'                 
#classify files in colour
#alias dir='ls --color=auto --format=vertical'

# edit .bashrc and return to directory
alias bash-config='cd ~/;npp .bashrc;cd -'


# ------------------------------- ## 
#    CUSTOMIZE COMMAND DEFAULTS    #

alias ls='/bin/ls -Fal --color=tty --show-control-chars'
alias apt-get='apt-cyg'

# ------------------------- ## 
#    TEXT EDITOR COMMANDS    #
# Specify name of file to be edited
# change all default editor commands to use text editor of choice
alias npp='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias sublime-text='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias notepad='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias edit='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias e='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'


# ------------------------- ## 
#        SSH TUNNELS         #
alias sshtunnel-linuxhost='ssh -f user@remote-server.com -L 13306:localhost:3306 -N'
alias sshtunnel-windershost='ssh -f user@remote-server.com -L 11433:localhost:1433 -N'
alias sshtunnel-favorite1='ssh -f user@remote-server.com -L 13306:localhost:3306 -N'


# ------------------------- ## 
#    COMMON CD SHORTCUTS    #
# change to default projects directory 
alias cdp='cd /path/to/projects'
alias cd-site1='cd /path/to/projects/site1'
alias cd-site2='cd /path/to/projects/site2'


# ---------------------- ## 
#      MISCELLANEOUS      #
alias hide-files='attrib /d /s +h'  # ...specify filename/extension
alias grep='grep --color'
