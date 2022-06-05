# Quickly handle simple git tasks such as committing and pushing

function giit() {

clear

  if [ ! -z $(git-branch-name) ]; then
  
    echo "[current: "$(pwd)" "on" "$(git-branch-name)"]"
  
  else
  
    echo "[current: "$(pwd)", git not initialized]"
    printf "Repository path: " && read -r __GIT_REPOSITORY
    
    if [[ ! -d "$__GIT_REPOSITORY" || -z "$__GIT_REPOSITORY" ]]; then 
    
      echo "Not a valid path." && return
    
    else 
    
      cd $__GIT_REPOSITORY
    
    fi
  
  fi

  printf "Pull changes before committing (y/n): " && read -r __GIT_PULL
  printf "Commit message: " && read -r __GIT_MESSAGE
  printf "Push changes (y/n): " && read -r __GIT_PUSH

clear

  if [[ "$__GIT_PULL" != "${__GIT_PULL#[Yyes]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Yyes]}" ]]; then 
  
    git add . && git pull && git commit -m "$__GIT_MESSAGE" && git push
  
  elif [[ "$__GIT_PULL" != "${__GIT_PULL#[Yyes]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Nno]}" ]]; then 
  
    git add . && git pull && git commit -m "$__GIT_MESSAGE"
  
  elif [[ "$__GIT_PULL" != "${__GIT_PULL#[Nno]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Nno]}" ]]; then
  
    git add . && git commit -m "$__GIT_MESSAGE"
  
  elif [[ "$__GIT_PULL" != "${__GIT_PULL#[Nno]}" && "$__GIT_PUSH" != "${__GIT_PUSH#[Yyes]}" ]]; then
  
    git add . && git commit -m "$__GIT_MESSAGE" && git push 
  
  fi

}
