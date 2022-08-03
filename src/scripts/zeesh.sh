# Main zeesh command

function zeesh() {

    __ZEESH_OPTION="$1"
    __ZEESH_ZEESH_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}]:"

    if [[ -z "$__ZEESH_OPTION" ]]; then

        echo "$__ZEESH_ZEESH_INFO zeesh <info | config | update | uninstall>" && return

    fi

    case $__ZEESH_OPTION in

        "config")

            if [[ -z "$2" ]]; then
            
                echo "$__ZEESH_ZEESH_INFO zeesh config <reset | recover | example | edit>" && return
            
            else
                
                case $2 in

                    "reset")
                    
                        printf "$__ZEESH_ZEESH_INFO Resetting zeesh configuration..."
                        if (
                            mv "$__ZEESH_DIR/config.sh" "$__ZEESH_DIR/.config.backup.sh" && \
                            cp "$__ZEESH_DIR/.config.example.sh" "$__ZEESH_DIR/config.sh"
                        ); then
                            echo "OK."
                            echo "$__ZEESH_ZEESH_INFO Re-start your shell for the changes to take effect"
                        else
                            return 1
                        fi
                    
                    ;;
                    
                    "recover")
                    
                        printf "$__ZEESH_ZEESH_INFO Recovering zeesh configuration..."
                        if [ -f "$__ZEESH_DIR/.config.backup.sh" ]; then
                                if (
                                    \rm "$__ZEESH_DIR/config.sh" && \
                                    mv "$__ZEESH_DIR/.config.backup.sh" "$__ZEESH_DIR/config.sh"
                                ); then
                                    echo "OK."
                                    echo "$__ZEESH_ZEESH_INFO Re-start your shell for the changes to take effect"
                                else
                                    return 1
                                fi
                        else
                                echo "\n$__ZEESH_ZEESH_INFO No backup config file found"
                                return 1
                        fi
                    
                    ;;

                    "example") 

                        if command -v bat &> /dev/null || command -v batcat &> /dev/null; then
                            bat "$__ZEESH_DIR/.config.example.sh" 
                        else  
                            cat "$__ZEESH_DIR/.config.example.sh" | less
                        fi

                    ;;
                    
                    "edit")
                    
                        $__ZEESH_EDITOR "$__ZEESH_DIR/config.sh"
                    
                    ;;
                    
                    *)
                    
                        echo "$__ZEESH_ZEESH_INFO $1: $2: unknown option"
                        
                    ;;

                esac
            
            fi
        ;;

        "update")

            printf "$__ZEESH_ZEESH_INFO Updating zeesh... "     
            if (
                cd "$__ZEESH_DIR" && \
                git fetch --all --quiet && \
                git reset --hard --quiet origin/master
            ); then
                echo "OK."
                echo "$__ZEESH_ZEESH_INFO Re-start your shell for the changes to take effect"
            else
                return 1
            fi

        ;;

        "info")

            printf "${fg[red]}"
            echo "                     _      "
            echo "   _______  ___  ___| |__   "
            echo "  |_  / _ \/ _ \/ __| '_ \  "
            printf "${fg[green]}"
            echo "   / /  __/  __/\__ \ | | | "
            printf "${fg[blue]}"
            echo "  /___\___|\___||___/_| |_| ${fg_bold[$__ZEESH_ACCENT_COLOR]}$__ZEESH_VERSION${reset_color}"
            echo "                           "
            printf "${reset_color}"
            echo " ${fg[$__ZEESH_ACCENT_COLOR]}Installation Path${reset_color}  ${__BOLDON}|${__BOLDOFF} ${(D)__ZEESH_DIR}"
            echo " ${fg[$__ZEESH_ACCENT_COLOR]}zeesh Version${reset_color}      ${__BOLDON}|${__BOLDOFF} $__ZEESH_VERSION"
            echo " ${fg[$__ZEESH_ACCENT_COLOR]}zsh Version${reset_color}        ${__BOLDON}|${__BOLDOFF} $(zsh --version)"
            echo " ${fg[$__ZEESH_ACCENT_COLOR]}GitHub Repository${reset_color}  ${__BOLDON}|${__BOLDOFF} https://github.com/Kqpa/zeesh"
            echo " ${fg[$__ZEESH_ACCENT_COLOR]}Bug Reports${reset_color}        ${__BOLDON}|${__BOLDOFF} https://github.com/Kqpa/zeesh/issues"
            echo " ${fg[$__ZEESH_ACCENT_COLOR]}Contact${reset_color}            ${__BOLDON}|${__BOLDOFF} kqpa@pm.me"
            printf "\n"

        ;;

        "uninstall")

            echo "$__ZEESH_ZEESH_INFO Backing up '~/.zshrc' under '~/.zshrc.zeesh-backup'"

            cp "$HOME/.zshrc" "$HOME/.zshrc.zeesh-backup"
        
            while IFS= read -r line; do 
                
                case $line in
                    
                    '# >>> zeesh initialize >>>') __ZEESH_UNINSTALL_INDEX=1 ;;
                    '# <<< zeesh initialize <<<') __ZEESH_UNINSTALL_INDEX=0 ;;
                    *) (( ! __ZEESH_UNINSTALL_INDEX )) && printf '%s\n' "$line" ;;
                
                esac
                
            done < "$HOME/.zshrc" > "$HOME/.zshrc.zeesh-temp"

            \rm "$HOME/.zshrc" && \
            mv "$HOME/.zshrc.zeesh-temp" "$HOME/.zshrc" && \
            \rm -rf "$__ZEESH_DIR"

            echo "$__ZEESH_ZEESH_INFO Uninstalled zeesh, re-start your shell"
            
        ;;
        
        *) 
        
            echo "$__ZEESH_ZEESH_INFO $__ZEESH_OPTION: unknown option"

        ;;

    esac

}