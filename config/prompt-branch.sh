function prompt-branch() { 
    
    prompt_branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}') 
    
    if [[ $prompt_branch == "" ]]; then : ;else echo '[\033[32m'$prompt_branch'\e[0m] ' ;fi 

}
