# Configuration       _
#   _______  ___  ___| |__
#  |_  / _ \/ _ \/ __| '_ \
#   / /  __/  __/\__ \ | | |
#  /___\___|\___||___/_| |_| v0.1.5
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
# which is an alias for `source ~/.zshrc` if you want changes
# to take effect. Every configuration variable contains a thorough
# comment explaining the behaviour that the variable controls.

# zeesh ships itself with a lot of convinient shell aliases
# which are sourced from the `./src/aliases/*` directory.
# At the early versions of zeesh, `sudo` was aliased to `doas`
# which is a less-bloated and faster alternative to sudo.
# Although, to avoid issues with it, this variable controls
# wether or not you want to alias `sudo` with `doas`
# By default, this variable is "on", indicating that sudo
# isn't aliased to doas. If you want to alias `sudo` to `doas`
# set `__DISABLE_DOAS` to "off".
__DISABLE_DOAS="on"

# zeesh contains a lot of eye candies that can be used
# on a lot of different situations. One of the features
# zeesh provides is the ability to have a random, small
# shell color script ran on your terminal startup. This
# behaviour is controlled by the `__RANDOM_CANDY` variable
# which is by default set to "on". This indicates that
# whenever you open your terminal, you'll see a random color
# script from `./src/candy/*`. If you don't want any color
# scripts at terminal startup, you can set the `__RANDOM_CANDY`
# variable to "off".
__RANDOM_CANDY="on"

# zeesh gives you the ability to customize your prompt
# with various pre-existing prompt configurations.
# If you want to change your `__ZSH_PROMPT`, you need
# to set the `__ZSH_PROMPT` variable to one of the following
# THEMES: 'random', 'default', 'classic', 'minimal', 'space'
__ZSH_PROMPT="minimal"

# zeesh gives you the ability to customize your tty theme
# with various pre-existing tty theme configurations.
# If you want to change your tty theme, you need to set
# the `__TTY_THEME` variable to one of the following
# THEMES: 'default', 'random', 'dracula-dark', 'soft-dark',
# 'solarized-dark', 'solarized-light'
__TTY_THEME="solarized-dark"

# zeesh uses accent colors for the majority of it's
# applications. The whole accent color of zeesh can be modified
# by changing the `__ZEESH_ACCENT_COLOR` variable. This variable
# can be changed to one of the following. If you don't want
# an accent color, set the variable to `off`
# COLORS: 'off', 'random', 'black', 'red', 'green', 'blue', 'magenta', 'cyan', 'white', 'yellow'
__ZEESH_ACCENT_COLOR="cyan"

# zeesh ships itself with a lot of convinient shell aliases
# which are sourced from the `./src/aliases/*` directory.
# The package manager variables below are for the `./src/aliases/pkg.sh`
# Change these variables according to your package manager.
# Main package manager command. Add sudo before the name for root privileges
__PACKAGE_MANAGER="brew"
# Update command for the package manager
__UPDATE_COMMAND="update"
# Upgrade command for the package manager
__UPGRADE_COMMAND="upgrade"
# Install command for the package manager
__INSTALL_COMMAND="install"
# Uninstall command for the package manager
__UNINSTALL_COMMAND="remove"
# Package lookup command for the package manager
__INFO_COMMAND="info"

# zeesh ships itself with ccp, which is a command line
# helper for compiling & executing a C/C++ code quickly.
# The C++ compiler that is used by ccp can be changed by modifying
# the `__CCP_COMPILER` variable. You can change this to the C++
# compiler you use, e.g. `clang++` or `g++`.
__CPP_COMPILER="g++"
# The C compiler that is used by ccp can be changed by modifying
# the `__C_COMPILER` variable. You can change this to the C compiler
# you use, e.g. `clang` or `gcc`.
__C_COMPILER="gcc"
# The `__PREFERABLE_FILE_EXTENSION` variable is only used when a file
# extension is not specified. For instance, if you passed `main` as
# the file, it would pass `main.$__PREFERABLE_FILE_EXTENSION` to the
# compiler. This variable can be changed to any valid C or C++ extension.
__PREFERABLE_FILE_EXTENSION=".cpp"

# zeesh can sometimes open files, and the `__ZEESH_EDITOR` variable
# controls which editor is used to open files. You can change this
# to any editor you use, e.g. `vim`, `micro`, `nano` or `code`.
__ZEESH_EDITOR="vim"

# zeesh debug mode is a feature that allows you to debug the
# initilization of zeesh. This is useful for debugging any issues
# regarding zeesh or if you want to submit a bug report. To turn
# on the zeesh debug mode, set the `__ZEESH_DEBUG` variable to "on".
# To turn off the zeesh debug mode, set the `__ZEESH_DEBUG` variable
# to "off".
__ZEESH_DEBUG="off"
