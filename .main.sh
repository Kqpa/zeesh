DIRECTORY=".shell-scripts" # Default is ~/.shell-scripts

# Sourcing aliases
ALIASES="${DIRECTORY}/aliases"

source ~/$ALIASES/cd.sh
source ~/$ALIASES/chsh.sh
source ~/$ALIASES/confirm.sh
source ~/$ALIASES/etc.sh
source ~/$ALIASES/git.sh
source ~/$ALIASES/pkg.sh
source ~/$ALIASES/yt-dl.sh

# Sourcing eye-candies
CANDY="${DIRECTORY}/candy"

source ~/$CANDY/_init.sh
source ~/$CANDY/crunch.sh
source ~/$CANDY/mouse.sh
source ~/$CANDY/panes.sh
source ~/$CANDY/rails.sh
source ~/$CANDY/squares.sh
source ~/$CANDY/void.sh
source ~/$CANDY/wheel.sh

# Sourcing shell commands
SCRIPTS="${DIRECTORY}/scripts"

source ~/$SCRIPTS/ccp.sh
source ~/$SCRIPTS/ext.sh
source ~/$SCRIPTS/giit.sh
source ~/$SCRIPTS/rand.sh
