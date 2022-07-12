function __load_soft_dark_tty() {

    if [[ "$TERM" == "linux" ]]; then

        echo -en "\e]P0232323" # Black
        echo -en "\e]P82B2B2B" # Dark grey
        echo -en "\e]P1D75F5F" # Dark red
        echo -en "\e]P9E33636" # Red
        echo -en "\e]P287AF5F" # Dark green
        echo -en "\e]PA98E34D" # Green
        echo -en "\e]P3D7AF87" # Brown
        echo -en "\e]PBFFD75F" # Yellow
        echo -en "\e]P48787AF" # Dark blue
        echo -en "\e]PC7373C9" # Blue
        echo -en "\e]P5BD53A5" # Darkmagenta
        echo -en "\e]PDD633B2" # Magenta
        echo -en "\e]P65FAFAF" # Darkcyan
        echo -en "\e]PE44C9C9" # Cyan
        echo -en "\e]P7E5E5E5" # Lightgrey
        echo -en "\e]PFFFFFFF" # White
        clear                  # For background artifacting

    fi

}
