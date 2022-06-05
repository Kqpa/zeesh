function __load_minimal_prompt() {

    PS1=%(?:%{$fg[green]%}➜ :%{$fg[red]%}➜ )
    PS1+='%{$fg[cyan]%}%c%{$reset_color%} $(__minimal_prompt_git)%{$fg[yellow]%}» %{$reset_color%}'

}

function __minimal_prompt_git() {

    __HAS_MODIFICATION=""

    __PROMPT_BRANCH=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')

    if [[ `git ls-files -dmo --exclude-standard 2> /dev/null` ]]; then; __HAS_MODIFICATION="*"; fi
    
    if [[ $__PROMPT_BRANCH == "" ]]; then : ;else 
        
        echo "${fg[blue]}git:(${reset_color}$__HAS_MODIFICATION${fg[red]}$__PROMPT_BRANCH${reset_color}${fg[blue]})${reset_color} "
        
    fi

}
