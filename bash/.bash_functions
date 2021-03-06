# ------------------------------- #
#        My Bash Functions        #
# ------------------------------- #
# Check me out on GitHub @blizzrdof77

# GitHub Repo:
# https://github.com/blizzrdof77/useful-code-snippets.git



## --------------------- ##
 #    -- scandir --      #
## --------------------- ##
scandir() {
  i=0
  while read line
  do
      array[ $i ]="$line"        
      (( i++ ))
      echo "${array[1]}"
  done < <(ls -ls)
}

## ------------------------------------------------ ##
 #                   -- su --                       #
 #                                                  #
 #   since there are no 'real' users in  winders,   #
 # this initiates a remote ssh connection.  with no # 
 # arguments, it connects to the most commonly used #
 # server (the 1st if condition). each 'elif' entry #
 #       is for a different server/location         #
 #                                                  #
 #         EXAMPLE USAGE: su -s1                    #
## ------------------------------------------------ ##
su() {
  PORT=22
  if [ -z "$1" ]; then
    HOST="remotehost"
    USER="user"
    PORT="22"
  elif [ "$1" = "-s1" ]; then
    USER="user"
    HOST="remotehost"
    PORT="22"
  elif [ "$1" = "-s2" ]; then
    USER="user"
    HOST="remotehost-secondary"
    PORT="21904"
  else
  # declare -a arr=("element1" element2 element3)

  # ## now loop through the above array
  # for i in ${arr[@]}
  # do
  #    echo $i # or do whatever with individual element of the array
  # done
    USER=$1
    HOST="remotehost"
  fi

  if [ -z "$2" ]; then
    HOST="remotehost"
  else
    if [ "$2" = "-h" ]; then
      HOST=$3
    elif [ "$2" = "-p" ]; then
      PORT=$3
    else
      PORT=$2
    fi
  fi
    
  CMD="ssh $USER@$HOST -p$PORT"
  echo $CMD
  $CMD 
}

## ------------------------- ##
 #        -- sudo --         #
 #   ignore sudo in cygwin   #
## ------------------------- ##
sudo() {
  if [ -z "$1" ]; then
    echo "sudo what, bitch?"
  else
    if [ "$1" = "-i" ]; then
      echo "windows blows, but we can pretend."
      timeout3 -t 1 -i 1 -d 1 echo "."
      timeout3 -t 1 -i 1 -d 1 echo ".."
      timeout3 -t 1 -i 1 -d 1 echo "..."
      echo "okay. now you're running commands as root (sudo)"
    else
      CMD=${*}
      $CMD
    fi
  fi
}

##--------------------------- ##
 #     -- start-tunnel --     #
 #  initialize an ssh tunnel  #
 #          $1 = host         #
 #          $2 = port         #
##--------------------------- ##
start-tunnel() { 
  if [ -z "$1" ]; then
    echo "username and host address (user@remotehost):"
    read HOST
  else
    HOST=$1
  fi

  if [ -z "$2" ]; then
    echo "port:"
    read PORT
  else
    if [ "$2" = "-w" ]; then
      PORT=1433
    elif [ "$2" = "-l" ]; then
      PORT=3306
    elif [ "$2" = "-p" ]; then
      PORT=$3
    else
      PORT=$2
    fi
  fi
    
  CMD="ssh -f $HOST -L 1$PORT:localhost:$PORT -N"
  echo $CMD
  $CMD 
}

## ------------------------------ ##
 #          -- findit --          #
 #  find file w/ pattern in name  #
 #          $1 = search string    #
##------------------------------- ##
# findit (){
#    if [ -z "$1" ];then
#       echo "Please pass an argument that you want to search for"
#    else
#       find . -iname "*$1*" -print
#    fi
# }

## ---------------------------- ##
 #          -- swap --          #
 #         swap filenames       #
 #         $1 = filename 1      #
 #         $2 = filename 2      #
##----------------------------- ##
function swap()
{
    local TMPFILE=tmp.$$
    [ $# -ne 2 ] && echo "swap: 2 arguments needed" && return 1
    [ ! -e $1 ] && echo "swap: $1 does not exist" && return 1
    [ ! -e $2 ] && echo "swap: $2 does not exist" && return 1
 
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

##------------------------------------ ##
 #        -- gitorious-init --         #
 # initialize git repo with gitorioius #
 #          $1 = git repo URL          #
##------------------------------------ ##
gitorious-init() { 
  REPO=$1
  
  git init
  git remote add origin "$REPO"
  git add .
  git add -u
  git commit -m "initialize git repo"
  git push origin master  
}
