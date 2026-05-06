# dotfiles
My dotfiles


## fstab

To update FSTAB...

* Backup existing fstab
` sudo cp /etc/fstab /etc/fstab.bak`
* Make sure following packages are installed:
`vim`, `ntfs-3g`
* Create any necessary directories that will be used as a mount point.
`sudo mkdir /media/`
`sudo mkdir /media/{linga,storage,vm,backup}`
* Use `lsblk -f` to view existing devices and their UUIDs
* `sudo vim /etc/fstab` to edit the fstab and include any necessary additional devices.
* After the fstab has been edited and saved, restart system-d
`sudo systemctl daemon-reload`
* Test the new fstab BEFORE rebooting
`sudo mount -a`
* If there are no errors or anything after running last command then you should be good to go.


## Limine Snapper 

To update the boot loader...

* Run Limine Snapper scan
`sudo limine-entry-tool --scan`
* Run following command to view the PARTUUID of your available devices.
`lsblk -o NAME,FSTYPE,UUID,PARTUUID,MOUNTPOINT,SIZE | less`
* In Limine snapper scan, choose the appropriate boot paths.


## Declare custom user bin path in fish ...

fish:
fish_add_path <directory>

### My custom path...

fish:
fish_add_path ~/dotfiles/scripts/bin/

## Make script file executable

`chown +x _path/to/script_`

# Cool BASH I've Written

fd some-file -X cp {} _some/directory/path_
    * This found some file, recursively within a directory.
    * Copied each individual result of the above search into a new directory
    * Nice for pulling a bunch of files from omarchy configs into a new spot for my immediate reference

