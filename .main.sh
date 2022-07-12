# Entry point to zeesh

__ZEESH_DIR="${${(%):-%x}%/*}"
__ZEESH_VERSION="0.1.4" # NOTE: Don't forget to update the version on the configuration file
__ZEESH_DEBUG_FILE_NAME="zeesh-debug-$(date +%Y-%m-%d_%H-%M-%S)"

autoload -U colors && colors && \
setopt prompt_subst && \
setopt interactivecomments

# Sourcing everything in zeesh

source $__ZEESH_DIR/config.sh

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

# Loading terminal theming

__ZEESH_LOAD_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}zsh-load${reset_color}]:"

case $__ZSH_PROMPT in

    "classic") __load_classic_prompt ;;
    "minimal") __load_minimal_prompt ;;
    "default") __load_default_prompt ;;
    "random") __load_random_prompt ;;
    *) echo "$__ZEESH_LOAD_INFO $__ZSH_PROMPT: not a prompt, applying default prompt" && __load_default_prompt ;;

esac

case $__TTY_THEME in

    "default") __load_default_tty ;;
    "dracula-dark") __load_dracula_dark_tty ;;
    "soft-dark") __load_soft_dark_tty ;;
    "solarized-dark") __load_solarized_dark_tty ;;
    "solarized-light") __load_solarized_light_tty ;;
    *) echo "$__ZEESH_LOAD_INFO $__TTY_THEME: not a tty theme, applying default tty theme" && __load_default_tty ;;

esac

if [[ $__RANDOM_CANDY == "on" ]]; then; random-candy; fi
