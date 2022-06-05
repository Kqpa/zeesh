# Get current git branch name

function git-branch-name() { 
    
    __GIT_BRANCH=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}') 
    
    if [[ $__GIT_BRANCH == "" ]]; then : ;else echo "$__GIT_BRANCH"; fi 

}