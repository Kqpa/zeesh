# Call the function inside a folder that contains git repositories
# The function will pull all changes for every repository inside the folder

function update-repos() {

    __ZEESH_UPDATEREPO_INFO="[\e[32mzeesh\u001b[0m::\u001b[32mupdate-repos\033[0m]:"

    for __REPO_DIR in */.git/refs/remotes; do 
        
        (

            cd $__REPO_DIR/../../..
                
            echo "$__ZEESH_UPDATEREPO_INFO pulling contents from remote for '\e[32m$(dirname $(dirname $(dirname $__REPO_DIR)))\033[0m'..." 

            if ! git pull; then
                echo "$__ZEESH_UPDATEREPO_INFO failed to pull contents from remote for '\e[31m$(dirname $(dirname $(dirname $__REPO_DIR)))\033[0m'"
            fi

        );
        
    done

}