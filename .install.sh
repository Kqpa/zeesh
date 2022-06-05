#!/usr/bin/env zsh

ZSH_DIR="${HOME}/.zsh"

printf "\u001b[31m"
echo "                     _      "
echo "   _______  ___  ___| |__   "
echo "  |_  / _ \/ _ \/ __| '_ \  "
printf "\u001b[32m"
echo "   / /  __/  __/\__ \ | | | "
printf "\u001b[34m"
echo "  /___\___|\___||___/_| |_| \e[3m...is now being installed!\e[0m"
echo "                           "
printf "\u001b[0m"

if ! command -v git &> /dev/null; then
    echo "[\e[32mzeesh\u001b[0m::\u001b[32minstaller\033[0m]: 'git' is required to install zeesh." && exit 1
fi

if [ ! -d "$ZSH_DIR" ]; then
    mkdir $ZSH_DIR && cd $ZSH_DIR
else
    cd $ZSH_DIR
fi

printf "[\e[32mzeesh\u001b[0m::\u001b[32minstaller\033[0m]: Cloning 'zeesh' from GitHub... "

if git clone --quiet https://github.com/Kqpa/zeesh && cd ./zeesh/; then
    echo "OK."; else; exit 1
fi

printf "[\e[32mzeesh\u001b[0m::\u001b[32minstaller\033[0m]: Display a random color script at shell startup? [\e[32mYes\033[0m/\e[31mNo\033[0m]: " && read -r COLOR_SCRIPT_OPTION

if [ "$COLOR_SCRIPT_OPTION" != "${COLOR_SCRIPT_OPTION#[Yyes]}" ]; then

cat <<EOT >> ~/.zshrc

# >>> zeesh initialize >>>
source ~/.zsh/zeesh/.main.sh
random-candy # Prints a random color script at shell startup
# <<< zeesh initialize <<<

EOT

else

cat <<EOT >> ~/.zshrc

# >>> zeesh initialize >>>
source ~/.zsh/zeesh/.main.sh
# <<< zeesh initialize <<<

EOT

fi

echo "[\e[32mzeesh\u001b[0m::\u001b[32minstaller\033[0m]: Installed 'zeesh' successfully!"

exec zsh
