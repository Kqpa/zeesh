# **Shell Scripts**

This repository contains miscellaneous shell scripts which can be used on any UNIX or like system.

# Setup

- ## Dependencies
    - git (for updates)
    - zsh (recommended shell)

- ## Installation

    - **1**: Clone the repository in any path you'd like, although i suggest your home directory.
   
    - **2**: Open the `.main.sh` file and set the `$DIRECTORY` variable to the path you cloned the repository to. For example, if you cloned the repository inside your home directory, you would set it to:
        ```sh 
        DIRECTORY=".shell-scripts/commands"
        ```
   
    - **3**: Open your `.shellrc` and source the `.main.sh` file. For example, if you cloned the repository to your home directory and you're using `zsh` as your shell, you'd edit your `.zshrc` and add: 
        ```sh 
        source ~/.shell-scripts/.main.sh
        ```

- ## New Scripts

    - `cd` into the `.shell-scripts` directory.
    - Run `git pull`
    - Reload your shell.

- ## Contributing
    
    - See [`CONTRIBUTING.md`](https://github.com/Kqpa/.shell-scripts/blob/master/CONTRIBUTING.md).
