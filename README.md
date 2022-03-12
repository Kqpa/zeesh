<div align="center">

# **zeesh**

```
▒▒▒▒ ▒▒   ▒▒▒▒ ▒▒   ▒▒▒▒ ▒▒
▒▒ ■ ▒▒   ▒▒ ■ ▒▒   ▒▒ ■ ▒▒
▒▒ ▒▒▒▒   ▒▒ ▒▒▒▒   ▒▒ ▒▒▒▒
```

## Installation

</div>

In order to run the installation script, you'll need [`cURL`](https://curl.se), [`zsh`](https://zsh.sourceforge.io) & [`git`](https://git-scm.com) installed on your system. Although, you'll need [`zsh`](https://zsh.sourceforge.io) for this repository to function properly as a whole. Individual shell scripts might require external dependencies if you want to use them.

<div align="center">

```sh
zsh -c "$(curl -s 'https://raw.githubusercontent.com/Kqpa/zeesh/master/.install.sh')"
```

## Information

</div>

If you move the repository from the home directory, you'll need to change the [`$DIRECTORY`](/.main.sh#L1) variable in the [`.main.sh`](/.main.sh) file to the directory you moved the repository to. After doing that, you will have to change the sourced path on your `~/.zshrc`.

If you want to disable a shell script or a whole directory, you can add a dot before the file/folder. For example, if you want to disable [`./config/prompt.sh`](/config/prompt.sh), you can change the file name of `prompt.sh` to `.prompt.sh`. If you want to disable a directory, let's say [`./scripts`](/scripts/), you'd have to rename the `scripts` folder to `.scripts`.

<div align="center">

## Update

```sh
cd ~/.zeesh && git stash && git pull && git stash pop && source ~/.zshrc
```

</div>
