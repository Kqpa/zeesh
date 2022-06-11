# Aliases that doesn't belong to any category

alias v='vim'

alias c='code'

if [[ $__DISABLE_DOAS == "false" ]]; then

    alias sudo='doas'

    alias _='doas'

fi

alias py='python3'

alias grep='grep --color=auto'

alias mkdir='mkdir -pv'

alias reboot='sudo reboot'

alias shutdown='sudo shutdown now'

alias reload='source ~/.zshrc' 

alias weather='curl "wttr.in"'

alias mount='mount | column -t'

alias cls='clear && random-candy'
