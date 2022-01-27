# **Shell Scripts**

This repository contains miscellaneous shell scripts that I personally use.

# Installation

You'll need `zsh` for this repository to function properly as a whole. Individual shell scripts might require external dependencies if you want to use them. If you're using any other shell, you're free to modify to source code. 

If you move the repository from the home directory, you'll need to change the `DIRECTORY=".shell-scripts/commands"` in the `.main.sh` file to the directory you moved the repository to. After doing that, you will have to change the sourced path on your shell configuration.

```sh
git clone https://github.com/Kqpa/.shell-scripts
cd .shell-scripts 
chmod +x install.sh && ./install.sh
```

# Update

```sh
cd ~/.shell-scripts
git pull
source ~/.zshrc
```

# Contributing

- See [`CONTRIBUTING.md`](https://github.com/Kqpa/.shell-scripts/blob/master/CONTRIBUTING.md).