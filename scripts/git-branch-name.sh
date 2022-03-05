function git-branch-name() { 
    
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}') 
    
    if [[ $branch == "" ]]; then : ;else echo '[\033[32m'$branch'\e[0m] ' ;fi 

}
