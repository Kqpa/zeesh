dir=$(pwd) && default="${HOME}/.shell-scripts"

if [[ $dir == $default ]]; then
    
    echo 'source ~/.shell-scripts/.main.sh' >> ~/.zshrc
    echo "[i] => Sourced scripts to ~/.zshrc."

    source ~/.zshrc
    echo "[i] => Reloaded shell configuration."

    cd ~/.shell-scripts
    echo "[i] => Installed successfully. Please restart your terminal."

elif [[ $dir != $default ]]; then
    
    mv -f $dir $default
    echo "[i] => Moved repository to home directory."

    echo 'source ~/.shell-scripts/.main.sh' >> ~/.zshrc
    echo "[i] => Sourced scripts to ~/.zshrc."

    source ~/.zshrc
    echo "[i] => Reloaded shell configuration."
    
    cd ~/.shell-scripts
    echo "[i] => Installed successfully. Please restart your terminal."

fi