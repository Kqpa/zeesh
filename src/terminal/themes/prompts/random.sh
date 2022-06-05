function __load_random_prompt() {

    __ZEESH_RANDOMPROMPT_INFO="[\e[32mzeesh\u001b[0m::\u001b[32mrandom-prompt\033[0m]:"
    __RANDOM_PROMPT=$(( $RANDOM % 2 + 1 ))

  case $__RANDOM_PROMPT in

    "1") __load_minimal_prompt ;;
    "2") __load_classic_prompt ;;
    *)    echo "$__ZEESH_RANDOMPROMPT_INFO an unexpected error occured while loading a random shell prompt, loading default shell prompt" && __load_default_prompt ;;
  
  esac

}