# This config file is meant to be sourced into CachyOS base fish config. This is just used for personal aliases and whatnot.

set -gx EDITOR nvim

## My aliases
alias bsync="sudo rsync -aAXHv --delete --exclude={".cache/","Downloads/","tmp/","Dropbox/"} /home/ /media/backup/home/"
alias bsyncetc="sudo rsync -aAXHv --delete /etc/ /media/backup/etc/"

alias resta="sudo reboot now"
alias gpull="git pull origin main"
alias gpush="git push origin main"
