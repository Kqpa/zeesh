# Quickly handle simple git tasks such as committing and pushing

function giit() {

clear

  if [ ! -z $(git-branch-name) ]; then
  
    echo "[current: "$(pwd)" "on" "$(git-branch-name)"]"
  
  else
  
    echo "[current: "$(pwd)", git not initialized]"
    printf "Repository path: " && read -r repository
    
    if [[ ! -d "$repository" || -z "$repository" ]] ;then 
    
      echo "Not a valid path." && return
    
    else 
    
      cd $repository
    
    fi
  
  fi

  printf "Pull changes before committing (y/n): " && read -r pull
  printf "Commit message: " && read -r message
  printf "Push changes (y/n): " && read -r push

clear

  if [[ "$pull" != "${pull#[Yyes]}" && "$push" != "${push#[Yyes]}" ]] ;then 
  
    git add . && git pull && git commit -m "$message" && git push
  
  elif [[ "$pull" != "${pull#[Yyes]}" && "$push" != "${push#[Nno]}" ]] ;then 
  
    git add . && git pull && git commit -m "$message"
  
  elif [[ "$pull" != "${pull#[Nno]}" && "$push" != "${push#[Nno]}" ]] ;then
  
    git add . && git commit -m "$message"
  
  elif [[ "$pull" != "${pull#[Nno]}" && "$push" != "${push#[Yyes]}" ]] ;then
  
    git add . && git commit -m "$message" && git push 
  
  fi

}

function git-branch-name() { 
    
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}') 
    
    if [[ $branch == "" ]]; then : ;else echo "$branch"; fi 

}