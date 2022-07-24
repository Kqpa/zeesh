function __load_space_prompt() {

    PS1='%{$fg[cyan]%}%(4~|%-1~/…/%2~|%4~)%{$reset_color%} $(__space_prompt_git)
'
    PS1+=%(?:%{$fg[green]%}» $reset_color:%{$fg[red]%}» $reset_color)

    function precmd() {

        function precmd() {
            
            echo -n "\n"
        
        }
    
    }

}

function __space_prompt_git() {

    __HAS_MODIFICATION=""

    __PROMPT_BRANCH=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')

    if [[ $(git ls-files -dmo --exclude-standard 2> /dev/null) ]]; then; __HAS_MODIFICATION="*"; fi
    
    if [[ $__PROMPT_BRANCH == "" ]]; then : ;else 

    echo "[$__HAS_MODIFICATION${fg[cyan]}$__PROMPT_BRANCH${reset_color}]"        

    fi

}
