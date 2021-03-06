#!/usr/bin/env bash

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Others
alias aux='ps uax'
alias c='pbcopy'
alias copy='pbcopy'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias count_files_recursive='find . -type f -print | wc -l'
alias count_files_recursive_per_directory='ls -d */ | xargs -I _ sh -c "find \"_\" -type f | wc -l | xargs echo _"'
alias dc='docker_connect'
alias fuck!='sudo $history[1]'
alias flat_this_dir="sudo find . -mindepth 2 -type f -exec mv -i '{}' . ';'"
alias k='kill -9'
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias reveal='open .'
alias size_of_directory="ncdu --color dark -rr -x"
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias c.='subl .'
alias i.='idea.'
alias fuck_sbt="ps aux | grep sbt | awk '{print $2}' | xargs kill -9"
alias available_commands='bash -c "compgen -c"'
alias code='cd ~/Code'

alias privateip='ipconfig getifaddr en0'
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"

alias optimize_zsh='source ${ZDOTDIR:-${HOME}}/.zlogin'

# Brew
alias brwe='brew'
alias brew-list-deps="brew list | while read cask; do echo -n \"\e[1;34m$cask ->\e[0m\"; brew deps $cask | awk '{printf(\" %s \", $0)}'; echo \"\"; done"
alias bs="brew services"
alias bsl="brew services list"
alias bsst="brew services start"
alias bssp="brew services stop"
alias bsspa="brew services stop --all"
alias bi="brew_install"
alias bu="brew_uninstall"
alias bci="brew_cask_install"
alias bcu="brew_cask_uninstall"

# Start
alias start-supervisor='supervisord -c /usr/local/etc/supervisord.ini'
alias start-dynamo='dynamodb-local &'

# Stop
alias stop-all-brew-services="brew services stop --all"

# Kill
alias kill-supervisor="kill_named 'usr/local/bin/supervisord'"
alias kill-dynamo="kill_named 'DynamoDB'"

# Log
alias log-supervisor='tail -f /usr/local/var/log/supervisord.log'

# Mac
alias out='outdated_apps'
alias up='update_apps'

# Functions
function idea. {
  idea $PWD &>/dev/null
}
