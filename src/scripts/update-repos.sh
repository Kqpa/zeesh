# Call the function inside a folder that contains git repositories
# The function will pull all changes for every repository inside the folder

function update-repos() {

    __ZEESH_UPDATEREPO_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}update-repos${reset_color}]:"

    for __REPO_DIR in */.git/refs/remotes; do 
        
        (

            cd $__REPO_DIR/../../..
                
            echo "$__ZEESH_UPDATEREPO_INFO pulling contents from remote for '${fg[$__ZEESH_ACCENT_COLOR]}$(dirname $(dirname $(dirname $__REPO_DIR)))${reset_color}'..." 

            if ! git pull; then
                echo "$__ZEESH_UPDATEREPO_INFO failed to pull contents from remote for '${fg[red]}$(dirname $(dirname $(dirname $__REPO_DIR)))${reset_color}'"
            fi

        );
        
    done

}