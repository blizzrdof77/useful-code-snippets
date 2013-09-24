# ----------------------------- #
#      Useful Windows Shit      #
#      -------------------      #
#        13 August 2013         #
#       Benjamin Wagner         #
# benjamin.j.wagner.1@gmail.com #
# ----------------------------- #
# - This file contains useful system information, commands, hacks, etc 
#   for Windows OS (based on using Windows 7)

# -----------------------------------------------------------#
# Check me out on GitHub @blizzrdof77                        #
# GitHub Repo:                                               #
# https:#github.com/blizzrdof77/useful-code-snippets.git    #
# ---------------------------------------------------------- #


# ----------------- # 
#  USEFUL COMMANDS  #
# ----------------- # 

## - CREATE SYMBOLIC LINK - ##
   #... Open cmd.exe as Administrator and CD to directory
mklink /D "LinkName" "C:\Path\To\Target\Location" 



# -------------------------------------------------- #
#  FILESYSTEM DIRECTORIES & ENVIRONMENTAL VARIABLES  #
# -------------------------------------------------- #

## - USER PROFILE DIRECTORY - ##
%USERPROFILE% # 'C:/Users/CurrentUser/'

## - APPLICATION DATA - ##
%APPDATA%  # "C:/Users/CurrentUser/AppData/Roaming"
%APPDATA%\microsoft\windows\libraries  # "C:\Users\CurrentUser\AppData\Roaming\Microsoft\Windows\Libraries"

## - INTERNET DATA - ##
%USERPROFILE%\Cookies  # Cookies
%USERPROFILE%\Local Settings\Temporary Internet Files # Internet Cache



# ------------------------------- #
#  USEFUL TWEAKS/TRICKS/COMMANDS  #
# ------------------------------- #
## Using Dropbox to sync Sublime Text settings across Windows computers
## * Run windows cmd.exe as an administrator, then:
cd "C:\Users\{USER}\AppData\Roaming\Sublime Text 3"
mklink /D "Packages" "C:\Users\{USER}\Dropbox\Sublime Text 3\Packages"
mklink /D "Installed Packages" "C:\Users\{USER}\Dropbox\Sublime Text 3\Installed Packages"
mklink /D "Pristine Packages" "C:\Users\{USER}\Dropbox\Sublime Text 3\Pristine Packages"
