#!/usr/bin/env zsh

echo "[i] => Cloning the shell-scripts repository..."

git clone https://github.com/Kqpa/shell-scripts .shell-scripts && cd ./.shell-scripts/

dir=$(pwd) && default="${HOME}/.shell-scripts"

if [[ $dir != $default ]]; then

    mv -f $dir $default
    echo "[i] => Moved repository to home directory."

fi

echo '\nsource ~/.shell-scripts/.main.sh\n' >> ~/.zshrc
echo "[i] => Sourced scripts to ~/.zshrc."

cd ~/.shell-scripts
echo "[i] => Installed successfully. Run 'source ~/.zshrc' to apply the changes."