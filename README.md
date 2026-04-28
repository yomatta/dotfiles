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
