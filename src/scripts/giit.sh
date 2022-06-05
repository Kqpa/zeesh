# Quickly handle simple git tasks such as committing and pushing

function giit() {

  __ZEESH_GIIT_INFO="[\e[32mzeesh\u001b[0m::\u001b[32mgiit\033[0m]:"
  __GIT_MESSAGE="$1"
  __GIT_PULL="$2"
  __GIT_PUSH="$3"

  if [ -z $(__git_branch_name) ]; then

    echo "$__ZEESH_GIIT_INFO not a valid git repository" && return 1

  elif [[ -z $__GIT_MESSAGE || -z $__GIT_PULL || -z $__GIT_PUSH ]]; then
    
    echo "$__ZEESH_GIIT_INFO giit <message> <pull [y/n]> <push [y/n]>" && return

  else

    if [[ "$__GIT_PULL" != "${__GIT_PULL#[Yyes]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Yyes]}" ]]; then 
    
      git add . && git pull && git commit -m "$__GIT_MESSAGE" && git push
    
    elif [[ "$__GIT_PULL" != "${__GIT_PULL#[Yyes]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Nno]}" ]]; then 
    
      git add . && git pull && git commit -m "$__GIT_MESSAGE"
    
    elif [[ "$__GIT_PULL" != "${__GIT_PULL#[Nno]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Nno]}" ]]; then
    
      git add . && git commit -m "$__GIT_MESSAGE"
    
    elif [[ "$__GIT_PULL" != "${__GIT_PULL#[Nno]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Yyes]}" ]]; then
    
      git add . && git commit -m "$__GIT_MESSAGE" && git push 
    
    fi

  fi

}

function __git_branch_name() { 
    
    __GIT_BRANCH=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}') 
    
    if [[ $__GIT_BRANCH == "" ]]; then : ;else echo "$__GIT_BRANCH"; fi 

}
