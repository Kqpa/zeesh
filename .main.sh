__ZEESH_DIR="${HOME}/.zsh/zeesh" # Default directory is `~/.zsh/zeesh`
__ZEESH_DEBUG="off" # on turns debug on, off turns debug off

# Sources all of the scripts on the repository

__ZEESH_DEBUG_FILE_NAME="zeesh-debug-$(date +%Y-%m-%d_%H-%M-%S)"

for sh ($__ZEESH_DIR/**/*.sh); do
  
    if [[ $__ZEESH_DEBUG == "on" ]]; then

      if [ ! -d "$__ZEESH_DIR/.debug" ]; then; mkdir $__ZEESH_DIR/.debug; fi
      
      touch $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log

        if source $sh; then
        
          echo "[SHELL: '$(basename ${SHELL:u})'] - [LOGFILE: '$__ZEESH_DEBUG_FILE_NAME'] - [LOADED: '$(basename $sh)' from '$(basename $(dirname $sh))']" >> $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log
        
        else

          echo "\n<------------>" >> $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log
          echo "[SHELL: '$(basename ${SHELL:u})'] - [LOGFILE: '$__ZEESH_DEBUG_FILE_NAME'] - [FAILED TO LOAD: '$(basename $sh)' from '$(basename $(dirname $sh))']" >> $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log
          printf "ERROR: " >> $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log
          source $sh &>> $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log
          echo "<------------>\n" >> $__ZEESH_DIR/.debug/$__ZEESH_DEBUG_FILE_NAME.log

        fi

    elif [[ $__ZEESH_DEBUG == "off" ]]; then; source $sh; fi

done
