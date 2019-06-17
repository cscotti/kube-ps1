#!/bin/bash

__parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

__kube_ps1()
{
    # Get current context
    CONTEXT=""
    if [ -f ~/.kube/config ]
    then
      CONTEXT=$(cat ~/.kube/config | grep "current-context:" --color=NO | sed "s/current-context: //" | sed "s/gke_monoprix-//"| sed "s/_europe.*//")
    fi
    echo ${CONTEXT}
}

__gcloud_ps1()
{
    CONTEXT=$(cat ~/.config/gcloud/active_config)

    echo ${CONTEXT}
}
kubeon()
{
export PS1="\[${BLUE_BG}\]\[${WHITE}\] \w \[${BLUE_BG}\]\u ${GREY_BG}($KUBE_PS1_SYMBOL_DEFAULT|${GREY}g:\[${NORMAL}\]\[\e[97;100m\]\$(__gcloud_ps1)${GREY}/k:\[${NORMAL}\]\[\e[97;100m\]\$(__kube_ps1))\[\e[47m\]\[${BLACK}\]\[${NORMAL}\]${GREY_BG}\[${BLACK}\]\$(__parse_git_branch)\[${NORMAL}\] ${ARROW} "
#export PS1="\[${GREEN}\]\u (\$'\u2388'\[${GREEN}\]g:\[${NORMAL}\]\$(__gcloud_ps1)\[${GREEN}\]/\[${GREEN}\]k:\[${NORMAL}\]\$(__kube_ps1)\[${GREEN}\])\[${NORMAL}\]\$(__parse_git_branch)\[${GREEN_BG}\]\[${BLACK}\] \w \[${NORMAL}\] > "
}
kubeoff()
{
export PS1="\[\033[48;5;0m\]\t \u \[$(tput sgr0)\]\[\033[38;5;0m\]\[\033[48;5;33m\] \w \[$(tput sgr0)\]\[\033[38;5;15m\] "
#export PS1='\[\e[00;32m\]\t \[\033[01;31m\]\u@\h\[\033[01;36m\] \w \$ \[\033[00m\]'
}
