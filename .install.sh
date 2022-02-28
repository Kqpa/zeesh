#!/usr/bin/env zsh

git clone https://github.com/Kqpa/shell-scripts .shell-scripts && cd ./.shell-scripts/

dir=$(pwd) && default="${HOME}/.shell-scripts"

if [[ $dir == $default ]]; then
    
    echo '\nsource ~/.shell-scripts/.main.sh' >> ~/.zshrc
    echo "[i] => Sourced scripts to ~/.zshrc."

    source ~/.zshrc
    echo "[i] => Reloaded shell configuration."

    cd ~/.shell-scripts
    echo "[i] => Installed successfully. Please restart your terminal."

elif [[ $dir != $default ]]; then
    
    mv -f $dir $default
    echo "[i] => Moved repository to home directory."

    echo '\nsource ~/.shell-scripts/.main.sh' >> ~/.zshrc
    echo "[i] => Sourced scripts to ~/.zshrc."

    source ~/.zshrc
    echo "[i] => Reloaded shell configuration."
    
    cd ~/.shell-scripts
    echo "[i] => Installed successfully. Please restart your terminal."

fi