source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # do nothing
end

set -gx EDITOR nvim

## My aliases
alias bsync="sudo rsync -aAXHv --delete --exclude={".cache/","Downloads/","tmp/","Dropbox/"} /home/ /media/backup/home/"
alias bsyncetc="sudo rsync -aAXHv --delete /etc/ /media/backup/etc/"
