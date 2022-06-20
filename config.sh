# Configuration       _      
#   _______  ___  ___| |__   
#  |_  / _ \/ _ \/ __| '_ \  
#   / /  __/  __/\__ \ | | | 
#  /___\___|\___||___/_| |_| v0.1.4
#
#   GitHub       | https://github.com/Kqpa/zeesh/
#   Bug Reports  | https://github.com/Kqpa/zeesh/issues
#   Contact      | kqpa@pm.me
#   Version      | 0.1.4
#
# This file contains configuration variables that
# modify the behaviour of zeesh. The reason why
# all of these variables are prefixed with `__` is
# because all of these become an 'enviromental' variable
# when the shell starts up. To prevent clutter in enviromental
# variables, every variable in zeesh is prefixed with `__`
# which indicates that they're private.
#
# You will have to reload your shell configuration, either
# by running `exec zsh`, `source ~/.zshrc`, or `reload` 
# which is an alias for `source ~/.zshrc`. Every configuration
# variable contains a thorough comment explaining the behaviour
# the variable controls, read them before changing the variables.

# zeesh ships itself with a lot of convinient shell aliases
# which are sourced from the `./src/aliases/*` directory.
# At the early versions of zeesh, `sudo` was aliased to `doas`
# which is a less-bloated and faster alternative to sudo. 
# Although, to avoid issues with this, this variable controls
# wether or not you want to alias `sudo` with `doas`
# By default, this variable is `on`, indicating that sudo
# isn't aliased to doas. If you want to alias `sudo` to `doas`
# set `__DISABLE_DOAS` to `off`.
__DISABLE_DOAS="on"

# zeesh contains a lot of eye candies that can be used
# on a lot of different situations. One of the features
# zeesh provides is the ability to have a random, small 
# shell color script ran on your terminal startup. This 
# behaviour is controlled by the `__RANDOM_CANDY` variable
# which is by default set to `on`. This indicates that
# whenever you open your terminal, you'll see a random color
# script from `./src/candy/*`. If you don't want any color
# scripts at terminal startup, you can set the `__RANDOM_CANDY`
# variable to `off`.
__RANDOM_CANDY="on"

# zeesh gives you the ability to customize your prompt
# with various pre-existing prompt configurations.
# If you want to change your `__ZSH_PROMPT`, you need
# to set the `__ZSH_PROMPT` variable to one of the following
# THEMES: 'default', 'random', 'classic', 'minimal'
__ZSH_PROMPT="classic"

# zeesh gives you the ability to customize your tty theme
# with various pre-existing tty theme configurations.
# If you want to change your tty theme, you need to set
# the `__TTY_THEME` variable to one of the following
# THEMES: 'default', 'random', 'dracula-dark', 'soft-dark', 
# 'solarized-dark', 'solarized-light'
__TTY_THEME="solarized-light"

# zeesh uses accent colors for the majority of it's 
# applications. The whole accent color of zeesh can be modified
# by changing the `__ZEESH_ACCENT_COLOR` variable. This variable
# can be changed to one of the following
# COLORS: 'black', 'red', 'green', 'blue', 'magenta', 'cyan', 'white'
__ZEESH_ACCENT_COLOR="magenta"
__PACKAGE_MANAGER="brew" # If package manager requires root, add sudo before the name
__UPDATE_COMMAND="update"
__UPGRADE_COMMAND="upgrade"
__INSTALL_COMMAND="install"
__UNINSTALL_COMMAND="remove"
__INFO_COMMAND="info"
  # You can change the `$__CPP_COMPILER` to the one you use, e.g. `clang++`, etc...
  # You can change the `$__C_COMPILER` to the one you use, e.g. `clang`, etc...
  # Reload the shell configuration after you change these values

  # The `$__PREFERABLE_FILE_EXTENSION` is only used when a file extension is not specified
  # For example, if you inputted `index` as the file, it would pass `index.$__PREFERABLE_FILE_EXTENSION` as the file to the compiler
  # `$__PREFERABLE_FILE_EXTENSION` can be any valid C or C++ file extension

__PREFERABLE_FILE_EXTENSION=".cpp"

__CPP_COMPILER="g++"

__C_COMPILER="gcc"

__EDIT_EDITOR="vim"
__ZEESH_DEBUG="off" # on turns debug on, off turns debug off
