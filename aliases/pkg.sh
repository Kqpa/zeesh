# Package management aliases, change the variables accordingly

package_manager="brew" # If package manager requires root, add sudo before the name
update_command="update"
upgrade_command="upgrade"
install_command="install"
cleanup_command="cleanup"
info_command='info'

# Change the alias names to the ones you prefer

alias brup='$package_manager $update_command && $package_manager $upgrade_command' # Updates & Upgrades

alias brupd='$package_manager $update_command' # Updates local packages

alias brupg='$package_manager $upgrade_command' # Upgrades everything

alias brin='$package_manager $install_command' # Installs package

alias brinf='$package_manager $info_command' # Gives information about package

alias brclean='$package_manager $cleanup_command' # Cleans up packages 

alias brewski='$package_manager $update_command && $package_manager $upgrade_command && $package_manager cleanup; $package_manager doctor' # Finds problems about brew packages