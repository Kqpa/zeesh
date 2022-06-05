function __load_random_tty() {

    __ZEESH_RANDOMTTY_INFO="[\e[32mzeesh\u001b[0m::\u001b[32mrandom-tty\033[0m]:"
    __RANDOM_TTY=$(( $RANDOM % 4 + 1 ))

  case $__RANDOM_TTY in

    "1") __load_dracula_dark_tty ;;
    "2") __load_soft_dark_tty ;;
    "3") __load_solarized_light_tty ;;
    "4") __load_solarized_dark_tty ;;
    *)    echo "$__ZEESH_RANDOMTTY_INFO an unexpected error occured while loading a random tty theme, loading default tty theme" && __load_default_tty ;;
  
  esac

}