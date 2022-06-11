# Package management aliases, the variables are located inside the `config.sh` file
# on the root of the project. Change the alias names according to your package manager.

alias brup='$__PACKAGE_MANAGER $__UPDATE_COMMAND && $__PACKAGE_MANAGER $__UPGRADE_COMMAND' # Updates & Upgrades

alias brupd='$__PACKAGE_MANAGER $__UPDATE_COMMAND' # Updates packages

alias brupg='$__PACKAGE_MANAGER $__UPGRADE_COMMAND' # Upgrades everything

alias brin='$__PACKAGE_MANAGER $__INSTALL_COMMAND' # Installs package

alias brrm='$__PACKAGE_MANAGER $__UNINSTALL_COMMAND' # Uninstalls package

alias brinf='$__PACKAGE_MANAGER $__INFO_COMMAND' # Gives information about package

alias brewski='brew update && brew upgrade && brew cleanup && brew doctor' # This is an aliases exclusively for brew
