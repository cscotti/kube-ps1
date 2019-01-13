#my specific

BLACK=$(tput setaf 0)
BLACK_BG=$(tput setab 0)
RED=$(tput setaf 1)
RED_BG=$(tput setab 1)
GREEN=$(tput setaf 2)
GREEN_BG=$(tput setab 2)
LIME_YELLOW=$(tput setaf 190)
LIME_YELLOW_BG=$(tput setab 190)
YELLOW=$(tput setaf 3)
YELLOW_BG=$(tput setab 3)
POWDER_BLUE=$(tput setaf 153)
POWDER_BLUE_BG=$(tput setab 153)
BLUE=$(tput setaf 4)
BLUE_BG=$(tput setab 4)
MAGENTA=$(tput setaf 5)
MAGENTA_BG=$(tput setab 5)
CYAN=$(tput setaf 6)
CYAN_BG=$(tput setab 6)
WHITE=$(tput setaf 7)
WHITE_BG=$(tput setab 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

source ~/.kube-prompt.sh
export PS1="\[${GREEN}\]\u [\[${GREEN}\]g:\[${NORMAL}\]\$(__gcloud_ps1)\[${GREEN}\]/\[${GREEN}\]k:\[${NORMAL}\]\$(__kube_ps1)\[${GREEN}\]]\[${YELLOW}\]\$(__parse_git_branch)\[${GREEN}\] \w >\[${NORMAL}\] "


