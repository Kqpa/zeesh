#!/usr/bin/env zsh

echo "[i] => Cloning 'zeesh'..."

git clone https://github.com/Kqpa/zeesh .zeesh && cd ./.zeesh/

default="${HOME}/.zeesh"

if [[ $(pwd) != $default ]]; then

    mv -f $dir $default
    echo "[i] => Moved repository to home directory."

fi

echo '\nsource ~/.zeesh/.main.sh\n' >> ~/.zshrc
echo "[i] => Sourced repository to ~/.zshrc."

printf "[?] => Display a random color script at shell startup? (y/n): " && read -r option

if [ "$option" != "${option#[Yyes]}" ]; then
    echo '\nrand\n' >> ~/.zshrc
fi

cd ~/.zeesh
echo "[i] => Installed successfully."

exec zsh