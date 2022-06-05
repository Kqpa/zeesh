# Call the function inside a folder that contains git repositories
# The function will pull all changes for every repository inside the folder

function update-repos() {

    printf "[\e[32m?\033[0m]: Update every repository inside the directory '\e[32m$(basename "$PWD")\033[0m'? [\e[32mYes\033[0m/\e[31mNo\033[0m]: " && read -r __UPDATE_REPO_OPTION

    if [ "$__UPDATE_REPO_OPTION" != "${__UPDATE_REPO_OPTION#[Yyes]}" ]; then
    
        for __REPO_DIR in */.git/refs/remotes; do 
        
            (

                cd $__REPO_DIR/../../..
                
                echo "\e[32m==>\033[0m Pulling contents from remote for '\e[32m$(dirname $(dirname $(dirname $__REPO_DIR)))\033[0m'..." 

                if ! git pull; then
                    echo "\e[31m[FAILED]:\033[0m Failed to pull contents from remote for '\e[31m$(dirname $(dirname $(dirname $__REPO_DIR)))\033[0m'"
                fi

            );
        
        done
    
    else; echo "Abort."; fi

}