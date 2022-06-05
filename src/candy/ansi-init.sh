# ANSI Color -- use these variables to easily have different color
# and format output. Make sure to output the reset sequence after 
# colors (f = foreground, b = background), and use the 'off'
# feature for anything you turn on.

__ESC=""

# Foreground colors

__BLACKF="${__ESC}[30m";   __REDF="${__ESC}[31m";    __GREENF="${__ESC}[32m"
__YELLOWF="${__ESC}[33m"   __BLUEF="${__ESC}[34m";   __PURPLEF="${__ESC}[35m"
__CYANF="${__ESC}[36m";    __WHITEF="${__ESC}[37m"

# Bright foreground colors

__BLACKFBRIGHT="${__ESC}[90m";   __REDFBRIGHT="${__ESC}[91m";    __GREENFBRIGHT="${__ESC}[92m"
__YELLOWFBRIGHT="${__ESC}[93m"   __BLUEFBRIGHT="${__ESC}[94m";   __PURPLEFBRIGHT="${__ESC}[95m"
__CYANFBRIGHT="${__ESC}[96m";    __WHITEFBRIGHT="${__ESC}[97m"

# Background colors

__BLACKB="${__ESC}[40m";   __REDB="${__ESC}[41m";    __GREENB="${__ESC}[42m"
__YELLOWB="${__ESC}[43m"   __BLUEB="${__ESC}[44m";   __PURPLEB="${__ESC}[45m"
__CYANB="${__ESC}[46m";    __WHITEB="${__ESC}[47m"

# Text styles

__BOLDON="${__ESC}[1m";    __BOLDOFF="${__ESC}[22m"
__ITALICSON="${__ESC}[3m"; __ITALICSOFF="${__ESC}[23m"
__ULVON="${__ESC}[4m";      __ULOFF="${__ESC}[24m"
__INVON="${__ESC}[7m";     __INVOFF="${__ESC}[27m"

# Reset

__RESET="${__ESC}[0m"
