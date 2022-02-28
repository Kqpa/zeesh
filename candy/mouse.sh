#!/usr/bin/env zsh

# Author: ivo    
# Source: http://crunchbang.org/forums/viewtopic.php?pid=130522#p130522

_init

function mouse() {

cat << EOF 

    ${boldon}${redfbright} █   █ ${reset} ${boldon}${greenfbright}█   █ ${reset} ${boldon}${yellowfbright}█   █ ${reset} ${boldon}${bluefbright}█   █ ${reset} ${boldon}${purplefbright}█   █ ${reset} ${boldon}${cyanfbright}█   █ ${reset} 
    ${boldon}${redfbright}  ■ ■  ${reset} ${boldon}${greenfbright} ■ ■  ${reset} ${boldon}${yellowfbright} ■ ■  ${reset} ${boldon}${bluefbright} ■ ■  ${reset} ${boldon}${purplefbright} ■ ■  ${reset} ${boldon}${cyanfbright} ■ ■  ${reset}
    ${boldon}${redfbright}  =■=  ${reset} ${boldon}${greenfbright} =■=  ${reset} ${boldon}${yellowfbright} =■=  ${reset} ${boldon}${bluefbright} =■=  ${reset} ${boldon}${purplefbright} =■=  ${reset} ${boldon}${cyanfbright} =■=  ${reset}

EOF

}