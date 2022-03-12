# Add this to your ~/.zshrc for a random color script from `../candy` on shell startup
# `echo "rand.sh" >> ~/.zshrc`

function rand.sh() {
  
  rand=$(( $RANDOM % 7 + 1 ))

  case $rand in

    "1")  crunch  ;;
    "2")  mouse   ;;
    "3")  panes   ;;
    "4")  rails   ;;
    "5")  squares ;;
    "6")  void    ;;
    "7")  wheel   ;;
    *)    echo "An unexpected error occurred while executing a random shell color script." ;;
  
  esac

}