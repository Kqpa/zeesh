# See installation part 2
DIRECTORY=".shell-scripts"

# Sourcing shell commands
SCRIPTS="${DIRECTORY}/scripts"

source ~/$SCRIPTS/blocks.sh
source ~/$SCRIPTS/ccp.sh
source ~/$SCRIPTS/ext.sh
source ~/$SCRIPTS/giit.sh

# Sourcing aliases
ALIASES="${DIRECTORY}/aliases"

source ~/$ALIASES/cd.sh
source ~/$ALIASES/confirm.sh
source ~/$ALIASES/etc.sh
source ~/$ALIASES/git.sh
source ~/$ALIASES/pkg.sh
source ~/$ALIASES/yt-dl.sh