#!/bin/bash

__parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

__kube_ps1()
{
    # Get current context
    CONTEXT=$(cat ~/.kube/config | grep "current-context:" --color=NO | sed "s/current-context: //" | sed "s/gke_monoprix-//"| sed "s/_europe.*//")

    #if [ -n "$CONTEXT" ]; then
        #if [ "$CONTEXT" = "prod" ]; then
         #   echo -e "${BRIGHT}${WHITE}${RED_BG}${BLINK}${CONTEXT}${NORMAL}"
        #else
          #  echo -e "${YELLOW}${CONTEXT}${NORMAL}"
       # fi
    #fi
    echo ${CONTEXT}
}

__gcloud_ps1()
{
    CONTEXT=$(cat ~/.config/gcloud/active_config)

    #if [ -n "$CONTEXT" ]; then
     #   if [ "$CONTEXT" = "ninja-prod" ]; then
      #      echo -e "${BRIGHT}${WHITE}${RED_BG}${BLINK}${CONTEXT}${NORMAL}"
       # else
        #    echo -e "${YELLOW}${CONTEXT}${NORMAL}"
        #fi
    #fi
    echo ${CONTEXT}
}

