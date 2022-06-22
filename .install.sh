#!/usr/bin/env zsh

autoload -U colors && colors
ZSH_DIR="${HOME}/.zsh"
ZEESH_INSTALLER_INFO="[${fg[green]}zeesh${reset_color}::${fg[green]}installer${reset_color}]:"

printf "${fg[red]}"
echo "                     _      "
echo "   _______  ___  ___| |__   "
echo "  |_  / _ \/ _ \/ __| '_ \  "
printf "${fg[green]}"
echo "   / /  __/  __/\__ \ | | | "
printf "${fg[blue]}"
echo "  /___\___|\___||___/_| |_| \e[3m...is now being installed!\e[0m"
echo "                           "
printf "${reset_color}" 

if ! command -v git &> /dev/null; then
    echo "$ZEESH_INSTALLER_INFO 'git' is required to install zeesh." && exit 1
fi

if [ ! -d "$ZSH_DIR" ]; then
    mkdir $ZSH_DIR && cd $ZSH_DIR
else
    cd $ZSH_DIR
fi

printf "$ZEESH_INSTALLER_INFO Cloning 'zeesh' from GitHub... "

if git clone --quiet https://github.com/Kqpa/zeesh && cd ./zeesh/; then
    echo "OK."; else; exit 1
fi

cat <<EOT >> ${HOME}/.zshrc

# >>> zeesh initialize >>>
source ~/.zsh/zeesh/.main.sh
# <<< zeesh initialize <<<

EOT

echo "$ZEESH_INSTALLER_INFO Installed zeesh successfully!"
echo "$ZEESH_INSTALLER_INFO Take a look at zeesh's configuration file by running `zeesh config`"

exec zsh
