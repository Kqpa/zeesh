# Package management aliases, change the variables accordingly

__PACKAGE_MANAGER="brew" # If package manager requires root, add sudo before the name
__UPDATE_COMMAND="update"
__UPGRADE_COMMAND="upgrade"
__INSTALL_COMMAND="install"
__UNINSTALL_COMMAND="remove"
__INFO_COMMAND="info"

# Change the alias names to the ones you prefer

alias brup='$__PACKAGE_MANAGER $__UPDATE_COMMAND && $__PACKAGE_MANAGER $__UPGRADE_COMMAND' # Updates & Upgrades

alias brupd='$__PACKAGE_MANAGER $__UPDATE_COMMAND' # Updates packages

alias brupg='$__PACKAGE_MANAGER $__UPGRADE_COMMAND' # Upgrades everything

alias brin='$__PACKAGE_MANAGER $__INSTALL_COMMAND' # Installs package

alias brrm='$__PACKAGE_MANAGER $__UNINSTALL_COMMAND' # Uninstalls package

alias brinf='$__PACKAGE_MANAGER $__INFO_COMMAND' # Gives information about package

alias brewski='brew update && brew upgrade && brew cleanup && brew doctor' # This is an aliases exclusively for brew