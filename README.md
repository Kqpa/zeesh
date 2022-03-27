<div align="center">

# **zeesh**

```
▒▒▒▒ ▒▒   ▒▒▒▒ ▒▒   ▒▒▒▒ ▒▒
▒▒ ■ ▒▒   ▒▒ ■ ▒▒   ▒▒ ■ ▒▒
▒▒ ▒▒▒▒   ▒▒ ▒▒▒▒   ▒▒ ▒▒▒▒
```

## Installation

In order to run the installation script, you'll need [`cURL`](https://curl.se), [`zsh`](https://zsh.sourceforge.io) & [`git`](https://git-scm.com) installed on your system. Although, [`zsh`](https://zsh.sourceforge.io) is required for this repository to function properly as a whole.

```sh
zsh -c "$(curl -s 'https://raw.githubusercontent.com/Kqpa/zeesh/master/.install.sh')"
```

## External Dependencies
Individual shell scripts might require external dependencies if you want to use them.

</div>

> **1**: [`vim`](https://www.vim.org) from [`./aliases/etc.sh`](./aliases/etc.sh) — `vim` aliased to `v`
>
> **2**: [`code`](https://code.visualstudio.com) from [`./aliases/etc.sh`](./aliases/etc.sh) — `code` aliased to `c`
>
> **3**: [`doas`](https://github.com/slicer69/doas) from [`./aliases/etc.sh`](./aliases/etc.sh) — `doas` aliased to `sudo` & `_`
>
> **4**: [`python3`](https://www.python.org) from [`./aliases/etc.sh`](./aliases/etc.sh) — `python3` aliased to `py`
>
> **5**: [`youtube-dl`](https://github.com/ytdl-org/youtube-dl) from [`./aliases/yt-dl.sh`](./aliases/yt-dl.sh) — `youtube-dl` aliased to `yt-mp3` & `yt-mp4`
>
> **6**: `C/C++ Compiler` from [`./scripts/ccp.sh`](./scripts/ccp.sh) — a C/C++ complier is required to use this script
>
> **7**: `Archive Extractor` from [`./scripts/ext.sh`](./scripts/ext.sh) — some commands might need to be additionally installed

<div align="center">

## Information

</div>

If you move the repository from the home directory, you'll need to change the [`$DIRECTORY`](/.main.sh#L1) variable in the [`.main.sh`](/.main.sh) file to the directory you moved the repository to. After doing that, you will have to change the sourced path on your `~/.zshrc`.

If you want to disable a shell script or a whole directory, you can add a dot before the file/folder. For example, if you want to disable [`./config/prompt.sh`](/config/prompt.sh), you can change the file name of `prompt.sh` to `.prompt.sh`. If you want to disable a directory, let's say [`./scripts`](/scripts/), you'd have to rename the `scripts` folder to `.scripts`.

<div align="center">

## Update

```sh
cd ~/.zsh/zeesh && git stash && git pull && git stash pop && source ~/.zshrc
```

</div>
