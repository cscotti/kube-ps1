#!/bin/bash

__parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

__kube_ps1()
{
    # Get current context
    CONTEXT=$(cat ~/.kube/config | grep "current-context:" --color=NO | sed "s/current-context: //" )

    if [ -n "$CONTEXT" ]; then
        if [ "$CONTEXT" = "prod" ]; then
            echo "${RED}${CONTEXT}${NORMAL}"
        else
            echo "${CONTEXT}"
        fi
    fi
    #echo ${CONTEXT}
}

__gcloud_ps1()
{
    CONTEXT=$(cat ~/.config/gcloud/active_config)

    if [ -n "$CONTEXT" ]; then
        if [ "$CONTEXT" = "ninja-prod" ]; then
            echo "${RED}${CONTEXT}${NORMAL}"
        else
            echo "${CONTEXT}"
        fi
    fi
    #echo ${CONTEXT}
}

