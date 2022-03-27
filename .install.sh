#!/usr/bin/env zsh

echo "Installing 'zeesh'..."

zsh_dir="${HOME}/.zsh"

if [ ! -d "$zsh_dir" ]; then
    mkdir $zsh_dir
    cd $zsh_dir
else
    cd $zsh_dir
fi

git clone --quiet https://github.com/Kqpa/zeesh && cd ./zeesh/

echo '\nsource ~/.zsh/zeesh/.main.sh\n' >> ~/.zshrc

printf "Display a random color script at shell startup? [Yes/No]: " && read -r option

if [ "$option" != "${option#[Yyes]}" ]; then
    echo '\nrand\n' >> ~/.zshrc
fi

echo "Installed successfully."

exec zsh