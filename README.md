<div align="center">

# **Shell Scripts**

```
▒▒▒▒ ▒▒   ▒▒▒▒ ▒▒   ▒▒▒▒ ▒▒
▒▒ ■ ▒▒   ▒▒ ■ ▒▒   ▒▒ ■ ▒▒
▒▒ ▒▒▒▒   ▒▒ ▒▒▒▒   ▒▒ ▒▒▒▒
```

## Installation

```sh
# Make sure that you have cURL, zsh & git installed on your system
curl -s "https://raw.githubusercontent.com/Kqpa/shell-scripts/master/.install.sh" | zsh
```

</div>

You'll need [`zsh`](https://zsh.sourceforge.io) for this repository to function properly as a whole. Individual shell scripts might require external dependencies if you want to use them.

If you move the repository from the home directory, you'll need to change the [`$DIRECTORY`](/.main.sh#L1) variable in the [`.main.sh`](/.main.sh) file to the directory you moved the repository to. After doing that, you will have to change the sourced path on your shell configuration.

<div align="center">

## Update

  ```sh
cd ~/.shell-scripts && git pull && source ~/.zshrc
```

</div>
