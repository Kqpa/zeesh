# Aliases that doesn't belong to any category

alias v='vim'

alias c='code'

if [[ $__DISABLE_DOAS == "off" ]]; then

    alias sudo='doas'

    alias _='doas'

fi

alias py='python3'

alias grep='grep --color=auto'

alias mkdir='mkdir -pv'

alias reboot='sudo reboot'

alias shutdown='sudo shutdown now'

alias reload='source ~/.zshrc' 

alias cls='clear && random-candy'
