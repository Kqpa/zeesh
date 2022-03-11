#!/usr/bin/env zsh

echo "[i] => Cloning 'zeesh'..."

git clone https://github.com/Kqpa/zeesh .zeesh && cd ./.zeesh/

dir=$(pwd) && default="${HOME}/.zeesh"

if [[ $dir != $default ]]; then

    mv -f $dir $default
    echo "[i] => Moved repository to home directory."

fi

echo '\nsource ~/.zeesh/.main.sh\n' >> ~/.zshrc
echo "[i] => Sourced scripts to ~/.zshrc."

cd ~/.zeesh
echo "[i] => Installed successfully."

exec zsh