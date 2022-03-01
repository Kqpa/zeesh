DIRECTORY=~/.shell-scripts # Default directory is `~/.shell-scripts`
DEBUG="on" # on turns debug on, off turns debug off

# Sources all of the scripts on the repository

UNIX_TIME=$(date '+%s')

for sh ($DIRECTORY/**/*.sh); do
  
  source $sh

    if [[ $DEBUG == "on" ]]; then

      if [ -d "$DIRECTORY/.debug" ]; then; else; mkdir $DIRECTORY/.debug; fi
      
      touch $DIRECTORY/.debug/$UNIX_TIME.log
      echo "[SHELL: '$(basename $SHELL)'] - [LOGFILE: '$UNIX_TIME'] - LOADED: '$(basename $sh)' from '$(basename $(dirname $sh))'" >> $DIRECTORY/.debug/$UNIX_TIME.log

    fi

done