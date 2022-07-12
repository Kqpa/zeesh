function __load_solarized_light_tty() {

    if [[ "$TERM" == "linux" ]]; then
    
        echo -en "\e]PB839496" # S_base00
        echo -en "\e]PA93a1a1" # S_base01
        echo -en "\e]P0eee8d5" # S_base02
        echo -en "\e]P62aa198" # S_cyan
        echo -en "\e]P8fdf6e3" # S_base03
        echo -en "\e]P2859900" # S_green
        echo -en "\e]P5d33682" # S_magenta
        echo -en "\e]P1dc322f" # S_red
        echo -en "\e]PC657b83" # S_base0
        echo -en "\e]PE586e75" # S_base1
        echo -en "\e]P9cb4b16" # S_orange
        echo -en "\e]P7073642" # S_base2
        echo -en "\e]P4268bd2" # S_blue
        echo -en "\e]P3b58900" # S_yellow
        echo -en "\e]PF002b36" # S_base3
        echo -en "\e]PD6c71c4" # S_violet
        clear                  # against bg artifacts
    
    fi

}