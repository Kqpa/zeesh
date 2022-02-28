DIRECTORY=~/.shell-scripts # Default directory is `~/.shell-scripts`

# Sources all of the scripts on the repository

for sh ($DIRECTORY/**/*.sh)
  source $sh