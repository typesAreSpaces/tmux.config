#!/bin/bash

function check_email() {
  email="$(cat ~/.unread_email | xargs)"
  if [ -z "$email" ]
  then
    printf "%s" "#[fg=#51afef]  X"
  else
    printf "%s" "#[fg=#51afef] ${email}"
  fi
}

function _date() {
  printf "%s" "#[fg=#bbc2cf, bg=#282c34]  $(date +'%b %d %y')"
}

function _time() {
  printf "%s" "#[fg=#51afef]  $(date +'%H:%M:%S %Z') #[fg=#bbc2cf, bg=#424858]"
}

function main() {
  #check_email
  _date
  _time
}

main
