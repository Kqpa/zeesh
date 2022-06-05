function __load_classic_prompt() {

    PS1='%{$fg[$__CLASSIC_PROMPT_ACCENT_COLOR]%}%n%{$reset_color%}@%m %{$fg[$__CLASSIC_PROMPT_ACCENT_COLOR]%}%(4~|%-1~/…/%2~|%4~) %{$reset_color%}$(__classic_prompt_git)%(?..%{$fg[red]%}[%{$reset_color%}%{$fg_bold[red]%}%?%{$reset_color%}%{$fg[red]%}]%{$reset_color%} )> '

}

function __classic_prompt_git() {

    __HAS_MODIFICATION=""

    __PROMPT_BRANCH=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')

    if [[ `git ls-files -dmo --exclude-standard 2> /dev/null` ]]; then; __HAS_MODIFICATION="!"; fi
    
    if [[ $__PROMPT_BRANCH == "" ]]; then : ;else echo "[$__HAS_MODIFICATION${fg[$__CLASSIC_PROMPT_ACCENT_COLOR]}$__PROMPT_BRANCH${reset_color}] " ;fi

}