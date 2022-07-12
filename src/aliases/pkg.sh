# Package management aliases, change the alias names according to your package manager
# Edit the variables from the configuration file by running 'zeesh config'

alias brup='$__PACKAGE_MANAGER $__UPDATE_COMMAND && $__PACKAGE_MANAGER $__UPGRADE_COMMAND' # Updates & Upgrades

alias brupd='$__PACKAGE_MANAGER $__UPDATE_COMMAND' # Updates packages

alias brupg='$__PACKAGE_MANAGER $__UPGRADE_COMMAND' # Upgrades everything

alias brin='$__PACKAGE_MANAGER $__INSTALL_COMMAND' # Installs package

alias brrm='$__PACKAGE_MANAGER $__UNINSTALL_COMMAND' # Uninstalls package

alias brinf='$__PACKAGE_MANAGER $__INFO_COMMAND' # Gives information about package
