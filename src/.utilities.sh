#-------------------------------------------------------------
# File & strings related functions:
#-------------------------------------------------------------
# Output a unique date string
function datestr () {
  echo $(date +%Y%m%d-%H%M%S);
}

# Find a file with a pattern in name:
function ff () { 
  find . -type f -iname '*'"$*"'*' -ls ;
}

# Extract compressed file helper
function extract () {
   if [ -f $1 ]; then
       case $1 in
        *.tar.bz2)      tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
        *.tar.gz)       tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
        *.tar.xz)       tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
        *.bz2)          bunzip2 $1 && cd $(basename "$1" /bz2) ;;
        *.rar)          unrar x $1 && cd $(basename "$1" .rar) ;;
        *.gz)           gunzip $1 && cd $(basename "$1" .gz) ;;
        *.tar)          tar xvf $1 && cd $(basename "$1" .tar) ;;
        *.tbz2)         tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
        *.tgz)          tar xvzf $1 && cd $(basename "$1" .tgz) ;;
        *.zip)          unzip $1 && cd $(basename "$1" .zip) ;;
        *.Z)            uncompress $1 && cd $(basename "$1" .Z) ;;
        *.7z)           7z x $1 && cd $(basename "$1" .7z) ;;
        *)              echo "${RED}don't know how to extract '$1'...${off}" ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

# Creates an archive (*.tar.gz) from given directory.
function maketar () { 
  tar cvzf "${1%%/}.tar.gz"  "${1%%/}/";
}

# Create a ZIP archive of a file or folder.
function makezip () {
  zip -r "${1%%/}.zip" "$1";
}

# Make your directories and files access rights sane.
function sanitize () {
  chmod -R u=rwX,g=rX,o= "$@";
}

#-------------------------------------------------------------
# Process / system related functions:
#-------------------------------------------------------------

# General system info
function ii () {
  clear
  echo -e "${yELLOW}Current date:${off} " ; date
  echo -e "\n${yELLOW}Machine stats:${off} " ; uptime
  echo -e "\n${yELLOW}Memory stats:${off} " ; top -l 1 | head -n 10 | grep PhysMem
  echo -e "\n${yELLOW}Diskspace:${off} " ; mydf /
  echo -e "\n${yELLOW}External IP:${off} "; dig +short myip.opendns.com @resolver1.opendns.com
  echo -e "\n${yELLOW}Interal IP(s):${off} " ; ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d: -f2 | awk '{print $2}'
  echo -e "\n${yELLOW}Name servers:${off} " ; cat /etc/resolv.conf | grep nameserver
  echo -e "\n${yELLOW}Internet speed test: ${off}" ; curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip
}

# Show my processes
function myps () {
  ps $@ -u $USER -o pid,%cpu,%mem,command;
}

# Pretty-print of 'df' output.
function mydf () {        
  for fs ; do
    if [ ! -d $fs ]
    then
      echo $fs" :No such file or directory" ; continue
    fi

    local info=( $(command df -P $fs | awk 'END{ print $2,$3,$5 }') )
    local free=( $(command df -Pkh $fs | awk 'END{ print $4 }') )
    local nbstars=$(( 20 * ${info[1]} / ${info[0]} ))
    local out="["
    for ((j=0;j<20;j++)); do
      if [ ${j} -lt ${nbstars} ]; then
        out=$out"*"
      else
        out=$out"-"
      fi
    done
    out=${info[2]}" "$out"] ("$free" free on "$fs")"
    echo $out
  done
}

#-------------------------------------------------------------
# GIT utilities:
#-------------------------------------------------------------

# Create git branch
function gmake () {
  if [ -n "$1" ]; then
    git checkout -b $1 && git push origin $1 && git push --set-upstream origin $1
  fi
}

# Delete remote & local branch
function gremove () {
  if [ -n "$1" ]; then
    git push origin --delete $1
    git branch -D $1
  fi
}

#-------------------------------------------------------------
# Misc utilities:
#-------------------------------------------------------------

# Repeat n times command.
function repeat () {
  local i max
  max=$1; shift;
  for ((i=1; i <= max ; i++)); do
    eval "$@";
  done
}

# Function to run upon exit of shell.
function _exit () {
  echo -e "${PURPLE}Peace is a state of mind.${off}"
}
trap _exit EXIT
