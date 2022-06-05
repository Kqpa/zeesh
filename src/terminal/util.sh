autoload -U colors && colors

setopt prompt_subst

case $__ZSH_PROMPT in

    "classic") __load_classic_prompt ;;
    "minimal") __load_minimal_prompt ;;
    "default") __load_default_prompt ;;
    "random") __load_random_prompt ;;
    *) echo "'$__ZSH_PROMPT' is not a theme, applying default theme." && __load_default_prompt ;;

esac

case $__TTY_THEME in

    "default") __load_default_tty ;;
    "dracula-dark") __load_dracula_dark_tty ;;
    "soft-dark") __load_soft_dark_tty ;;
    "solarized-dark") __load_solarized_dark_tty ;;
    "solarized-light") __load_solarized_light_tty ;;
    *) echo "'$__TTY_THEME' is not a tty theme, applying default theme." && __load_default_tty ;;

esac