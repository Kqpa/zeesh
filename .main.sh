DIRECTORY=~/.shell-scripts # Default directory is `~/.shell-scripts`
DEBUG="off" # on turns debug on, off turns debug off

# Sources all of the scripts on the repository

UNIX_TIME=$(date '+%s')

for sh ($DIRECTORY/**/*.sh); do
  
    if [[ $DEBUG == "on" ]]; then

      if [ -d "$DIRECTORY/.debug" ]; then; else; mkdir $DIRECTORY/.debug; fi
      
      touch $DIRECTORY/.debug/$UNIX_TIME.log

        if source $sh; then
        
          echo "[SHELL: '$(basename ${SHELL:u})'] - [LOGFILE: '$UNIX_TIME'] - [LOADED: '$(basename $sh)' from '$(basename $(dirname $sh))']" >> $DIRECTORY/.debug/$UNIX_TIME.log
        
        else

          echo "\n<------------>" >> $DIRECTORY/.debug/$UNIX_TIME.log
          echo "[SHELL: '$(basename ${SHELL:u})'] - [LOGFILE: '$UNIX_TIME'] - [FAILED TO LOAD: '$(basename $sh)' from '$(basename $(dirname $sh))']" >> $DIRECTORY/.debug/$UNIX_TIME.log
          printf "ERROR: " >> $DIRECTORY/.debug/$UNIX_TIME.log
          source $sh &>> $DIRECTORY/.debug/$UNIX_TIME.log
          echo "<------------>\n" >> $DIRECTORY/.debug/$UNIX_TIME.log

        fi

    elif [[ $DEBUG == "off" ]]; then; source $sh; fi 

done