function giit(){

  # You can skip the repository question if you are already in the correct path
  # Feel free to customize it for your use

clear
  
  dir=$(pwd) && printf "(Current: "${dir}") Repository path: " && read -r repository
  printf "Branch: " && read -r branch
  printf "Pull changes before commiting (y/n): " && read -r pull
  printf "Commit message: " && read -r message

clear

  if [ -z "$repository" ] ;then ;cd . ;else ;cd $repository ;fi

  if [ "$pull" != "${pull#[Yyes]}" ] ;then 
    git add . && git pull --force && git commit -m "$message" && git push origin $branch --force
  else
    git add . && git commit -m "$message" && git push origin $branch --force
  fi

}