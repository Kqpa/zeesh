# **Shell Scripts**

This repository contains useful miscellaneous shell scripts that will make your life easier. They can be ran on any UNIX or like system.

# Setup

- ## Dependencies
    - git
    - any shell
    - any terminal

- ## Installation

    - **1**: Clone the git repository in any path you'd like.
   
    - **2**: Open the `.main.sh` file and set your directory to the `$DIRECTORY` variable. For example, if you cloned the repository inside your home directory, you would set it to:
        ```sh 
        DIRECTORY=".shell-scripts/commands"
        ```
   
    - **3**: Open your `.shellrc` file with your desired editor and source the `.shell-scripts` directory. For example, if you cloned the repository to your home directory and you're using `zsh` as your shell, you'd edit your `.zshrc` and add: 
        ```sh 
        source ~/.shell-scripts/.main.sh
        ```

- ## New Scripts

    - `cd` into the `.shell-scripts` directory.
    - Run `git pull`
    - Reload your shell, for example if you use `zsh` as your shell running `zsh` would reload it.

- ## Contributing
    
    - See [`CONTRIBUTING.md`](https://github.com/Kqpa/.shell-scripts/blob/master/CONTRIBUTING.md).
