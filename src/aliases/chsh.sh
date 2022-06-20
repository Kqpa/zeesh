# Changes shells

__ZEESH_CHSH_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}chsh${reset_color}]:"

alias tobash="sudo chsh -s $(which bash) $USER && echo '$__ZEESH_CHSH_INFO changed shell to bash, log out'"

alias tozsh="sudo chsh -s $(which zsh) $USER && echo '$__ZEESH_CHSH_INFO changed shell to zsh, log out'"

alias tosh="sudo chsh -s $(which sh) $USER && echo '$__ZEESH_CHSH_INFO changed shell to sh, log out'"
