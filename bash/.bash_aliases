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
#alias ls='ls -hF --color=tty'                 # classify files in colour
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
alias npp='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias sublime-text='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias notepad='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias edit='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'
alias e='C:/Program\ Files/Sublime\ Text\ 2/sublime_text.exe'




#    SSH TUNNELS    #
alias sshtunnel-lnxdev='ssh -f bwagner@lnxdev.fahlgrengrip.com -L 13306:localhost:3306 -N'
alias sshtunnel-u01='ssh -f bwagner@staging-u01.fahlgrendigital.com -L 13306:localhost:3306 -N'
alias sshtunnel-fm='ssh -f bwagner@staging-w01.fahlgrendigital.com -L 11433:localhost:1433 -N'


#    COMMON CD SHORTCUTS    #
alias cdp='cd C:/xampp/htdocs/projects'
alias cd-cooper='cd C:/inetpub/wwwroot/cooper-kentico/site'
alias cd-fpc='cd C:/inetpub/wwwroot/franklinparkconservatory/site/web-root'
alias cd-toledo='cd C:/inetpub/wwwroot/toledoregion/web-root'
alias cd-stage='cd //WEB-STAGING/wwwroot/'

#    HIDE FILES RECURSIVELY    #
alias hide-files='attrib /d /s +h'  # ...specify filename/extension
alias grep='grep --color'
