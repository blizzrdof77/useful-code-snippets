# ------------------------------- #
#        My Bash Functions        #
# ------------------------------- #
# Check me out on GitHub @blizzrdof77

# GitHub Repo:
# https://github.com/blizzrdof77/useful-code-snippets.git

##--------------------------- ##
##       START-TUNNEL         ##
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
    elif [ "$2" = "-a" ]; then
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
##             FINDIT             ##
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
##             SWAP             ##
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