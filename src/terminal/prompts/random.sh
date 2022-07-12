function __load_random_prompt() {

    __ZEESH_RANDOMPROMPT_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}random-prompt${reset_color}]:"
    __RANDOM_PROMPT=$(( $RANDOM % 2 + 1 ))

  case $__RANDOM_PROMPT in

    "1") __load_minimal_prompt ;;
    "2") __load_classic_prompt ;;
    *)   echo "$__ZEESH_RANDOMPROMPT_INFO an unexpected error occured while loading a random prompt, loading default prompt" && __load_default_prompt ;;
  
  esac

}