autoload -U colors && colors

setopt prompt_subst

PS1='%{$fg[green]%}%n%{$reset_color%}@%m %{$fg[green]%}%(4~|%-1~/…/%2~|%4~) %{$reset_color%}$(git-branch-name)> '