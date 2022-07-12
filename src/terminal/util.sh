__ZEESH_UTIL_INFO="[\e[32mzeesh\u001b[0m::\u001b[32mutil\033[0m]:"

case $__ZSH_PROMPT in

    "classic") __load_classic_prompt ;;
    "minimal") __load_minimal_prompt ;;
    "default") __load_default_prompt ;;
    "random") __load_random_prompt ;;
    *) echo "$__ZEESH_UTIL_INFO $__ZSH_PROMPT: not a prompt, applying default prompt" && __load_default_prompt ;;

esac

case $__TTY_THEME in

    "default") __load_default_tty ;;
    "dracula-dark") __load_dracula_dark_tty ;;
    "soft-dark") __load_soft_dark_tty ;;
    "solarized-dark") __load_solarized_dark_tty ;;
    "solarized-light") __load_solarized_light_tty ;;
    *) echo "$__ZEESH_UTIL_INFO $__TTY_THEME: not a tty theme, applying default tty theme" && __load_default_tty ;;

esac