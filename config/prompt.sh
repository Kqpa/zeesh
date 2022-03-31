autoload -U colors && colors

setopt prompt_subst

PS1='%{$fg[green]%}%n%{$reset_color%}@%m %{$fg[green]%}%(4~|%-1~/…/%2~|%4~) %{$reset_color%}$(prompt-branch)%(?..%{$fg[red]%}[%{$reset_color%}%{$fg_bold[red]%}%?%{$reset_color%}%{$fg[red]%}]%{$reset_color%} )> '

function prompt-branch() { 
    
    prompt_branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}') 
    
    if [[ $prompt_branch == "" ]]; then : ;else echo "[${fg[green]}$prompt_branch${reset_color}] " ;fi 

}
