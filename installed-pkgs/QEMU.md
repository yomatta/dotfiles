# QEMU Installation

QEMU is for computer virtualization. 

Guide: christitus.com/setup-qemu-in-archlinux

## Log

### Pacman System Update

### Install required packages.

- `sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 openbsd-netcat ebtables nftables libguestfs`
- `yay -S bridge-utils`

### Libvirt Group & User Permissions

- edit `/etc/libvirt/libvirtd.conf`
- Uncomment:
-- `unix_sock_group = "libvirt"`
-- `unix_sock_rw_perms = "0770"`

- Add your user and create group.
-- `sudo usermod -a -G libvirt $(whoami)`
-- `newgrp libvirt`

- Start libvirt service.
-- `sudo systemctl enable --now libvirtd`

### Reboot and launch virt-manager!
