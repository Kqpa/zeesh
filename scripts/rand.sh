# Add this to your ~/.zshrc for a random color script from `../candy` on shell startup
# echo "rand" >> ~/.zshrc

function rand() {
  
  rand=$(( $RANDOM % 8 + 1 ))

  case $rand in

    "1")  crunch  ;;
    "2")  dots    ;;
    "3")  mouse   ;;
    "4")  panes   ;;
    "5")  rails   ;;
    "6")  squares ;;
    "7")  void    ;;
    "8")  wheel   ;;
    *)    echo "An unexpected error occurred while executing a random shell color script." ;;
  
  esac

}
