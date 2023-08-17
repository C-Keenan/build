#!/bin/bash

usr=$(cat /usr/bin/ntfy_user.txt)
pswd=$(cat /usr/bin/.ntfy_pswd.txt)
url="https://ntfy.lollypopstealer.net/CrC7XTsDLPNBpMNg"

if [ "${PAM_TYPE}" = "open_session" ]; then
  curl -u $usr:$pswd -H prio:high -H tags:warning -d "'$HOSTNAME' SSH login: ${PAM_USER} from ${PAM_RHOST}" $url
fi
echo "$command"
