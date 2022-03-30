autoload -U colors && colors

setopt prompt_subst

PS1='%{$fg[green]%}%n%{$reset_color%}@%m %{$fg[green]%}%(4~|%-1~/…/%2~|%4~) %{$reset_color%}$(prompt-branch)%(?..[%{$fg[red]%}%?%{$reset_color%}] )> '