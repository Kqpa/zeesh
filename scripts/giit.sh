#!/usr/bin/env zsh

function giit() {

  # This script allows you to quickly commit, pull, or push in one command
  # Feel free to customize it for your use

clear
  
  if git rev-parse --abbrev-ref HEAD; then
  
    br=$(git rev-parse --abbrev-ref HEAD) && dir=$(pwd) 
    clear && printf "[current: "${dir}" "on" "${br}"] \n"
  
  else
  
    dir=$(pwd) && clear && printf "[current: "${dir}", git not initialized] \n"
    printf "Repository path: " && read -r repository
    if [ -z "$repository" ] ;then ;cd . ;else ;cd $repository ;fi
  
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