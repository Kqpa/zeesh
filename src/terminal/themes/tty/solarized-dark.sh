function __load_solarized_dark_tty() {

    if [ "$TERM" = "linux" ]; then

        echo -en "\033]P0002b36"
        echo -en "\033]P1dc322f"
        echo -en "\033]P2859900"
        echo -en "\033]P3b58900"
        echo -en "\033]P4268bd2"
        echo -en "\033]P56c71c4"
        echo -en "\033]P62aa198"
        echo -en "\033]P793a1a1"
        echo -en "\033]P8657b83"
        echo -en "\033]P9dc322f"
        echo -en "\033]PA859900"
        echo -en "\033]PBb58900"
        echo -en "\033]PC268bd2"
        echo -en "\033]PD6c71c4"
        echo -en "\033]PE2aa198"
        echo -en "\033]PFfdf6e3"
        clear # For background artifacting
    
    fi

}