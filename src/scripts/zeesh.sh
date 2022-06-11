function zeesh() {

    __ZEESH_OPTION="$1"
    __ZEESH_ZEESH_INFO="[\e[32mzeesh\u001b[0m::\u001b[32mzeesh\033[0m]:"

    if [[ -z "$__ZEESH_OPTION" ]]; then

        echo "$__ZEESH_ZEESH_INFO zeesh <info | config | update | uninstall>" && return

    fi

    case $__ZEESH_OPTION in

        "config")

            $__EDIT_EDITOR $__ZEESH_DIR/config.sh

        ;;

        "update")

            cd $__ZEESH_DIR && git stash && git pull && git stash pop && source $HOME/.zshrc 
            
        ;;

        "info")

            printf "\u001b[31m"
            echo "                     _      "
            echo "   _______  ___  ___| |__   "
            echo "  |_  / _ \/ _ \/ __| '_ \  "
            printf "\u001b[32m"
            echo "   / /  __/  __/\__ \ | | | "
            printf "\u001b[34m"
            echo "  /___\___|\___||___/_| |_| \e[1mv$__ZEESH_VERSION\e[0m"
            echo "                           "
            printf "\u001b[0m"
            echo " \e[32;1mInstallation Path\e[0m  ${__BOLDON}|${__BOLDOFF} ${(D)__ZEESH_DIR}"
            echo " \e[32;1mzeesh Version\e[0m      ${__BOLDON}|${__BOLDOFF} $__ZEESH_VERSION"
            echo " \e[32;1mzsh Version\e[0m        ${__BOLDON}|${__BOLDOFF} $(zsh --version)"
            echo " \e[32;1mGitHub Repository\e[0m  ${__BOLDON}|${__BOLDOFF} https://github.com/Kqpa/zeesh"
            echo " \e[32;1mBug Reports\e[0m        ${__BOLDON}|${__BOLDOFF} https://github.com/Kqpa/zeesh/issues"
            echo " \e[32;1mContact\e[0m            ${__BOLDON}|${__BOLDOFF} kqpa@pm.me"
            printf "\n"

        ;;

        "uninstall")

            echo "$__ZEESH_ZEESH_INFO backing up '~/.zshrc' under '~/.zshrc.backup'"

            cp .zshrc .zshrc.backup
        
            while IFS= read -r line; do 
                
                case $line in
                    
                    '# >>> zeesh initialize >>>') __ZEESH_UNINSTALL_INDEX=1 ;;
                    '# <<< zeesh initialize <<<') __ZEESH_UNINSTALL_INDEX=0 ;;
                    *) (( ! __ZEESH_UNINSTALL_INDEX )) && printf '%s\n' "$line" ;;
                
                esac
                
            done < ".zshrc" > .zshrc.temp

            rm -f .zshrc && mv .zshrc.temp .zshrc && rm -rf $__ZEESH_DIR

            echo "$__ZEESH_ZEESH_INFO uninstalled 'zeesh'"      
            
        ;;
        
        *) 
        
            echo "$__ZEESH_ZEESH_INFO $__ZEESH_OPTION: unknown option"

        ;;

    esac

}