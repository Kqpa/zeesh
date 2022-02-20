# **Shell Scripts**

This repository contains miscellaneous shell scripts that I personally use.

# Installation

```sh
git clone https://github.com/Kqpa/.shell-scripts
cd .shell-scripts 
chmod +x install.sh && zsh install.sh && source ~/.zshrc
```

You'll need [`zsh`](https://zsh.sourceforge.io) for this repository to function properly as a whole. Individual shell scripts might require external dependencies if you want to use them. If you're using any other shell, you're free to modify to source code. 

If you move the repository from the home directory, you'll need to change the [`$DIRECTORY`](/.main.sh#L1) variable in the [`.main.sh`](/.main.sh) file to the directory you moved the repository to. After doing that, you will have to change the sourced path on your shell configuration.

# Update

```sh
cd ~/.shell-scripts
git pull
source ~/.zshrc
```