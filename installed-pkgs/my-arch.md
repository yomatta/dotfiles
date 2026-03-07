#!/bin/bash

*Example Guide* : github.com/dreamsofautonomy/arch-from-scratch

setfont ter-v32b #if we need larger font for install

iwctl

~ enable <wifi name>

ip addr     #verify we have an IP address.

timedatectl set-ntp true  #set system clock

lsblk   #find install drive(s)

gdisk /dev/<install-drives>
  - (or fdisk?)

(look up proper drive formatting).

1 Drive Example:
  - 3 Partitions
    - p1 : +512M (fat32) (code: ef00) (boot drive)
    - p2 : +4G (ext4) (code: ef02)
    - p3 : (rest of drive) (btrfs) (code: 8300)

1 Drive Example (cfdisk)
  - 2 Partitions
    - p1 : +512M (EFI System)
    - p2 : remainder (Linux filesystem)

mkfs.fat -F32 /dev/<p1>

mkfs.btrfs -L ArchRoot /dev/<p2>

*want to setup btrfs with subvolumes*

mount /dev/p2 /mnt

btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@snapshots
btrfs subvolume create /mnt/@var_log

umount /mnt

mount -o noatime,compress=zstd,subvol=@ /dev/p2 /mnt

mkdir -p /mnt/{boot,home,.snapshots,var/log}

mount -o noatime,compress=zstd,subvol=@home /dev/p2 /mnt/home
mount -o noatime,compress=zstd,subvol=@snapshots /dev/p2 /mnt/.snapshots
mount -o noatime,compress=zstd,subvol=@var_log /dev/p2 /mnt/var/log

mount /dev/p1 /mnt/boot

lsblk -f
  - verify that everything done above has been done correctly (everything is appearing where it's supposed to be)

btrfs subvolume list /mnt
  - alternate way to check mount points

genfstab -U /mnt >> /mnt/etc/fstab


pacstrap /mnt base linux linux-firmware sudo vim

arch-chroot /mnt




timedatectl list-timezones

timedatectl set-timezone America/Chicago

hwclock --systohc

vim /etc/locale.gen
  - uncomment 'en_US.UTF-8'

locale-gen

vim /etc/locale.conf

'LANG=en_US.UTF-8'

vim /etc/hostname

'hostname'

passwd

useradd -m mat
passwd mat

usermod -aG wheel,audio,video,optical,storage,input mat

visudo

  - 'Uncomment to allow members of group wheel to execute any command'
    - Uncomment the apppropriate line from above.

pacman -S zram-generator

vim /etc/systemd/zram-generator.conf

''''
[zram0\]  #no \ just brackets
zram-size = ram / 2
compression-algorithm = zstd
swap-priority = 100
mount-point = /dev/zram0
''''


pacman -S grub efibootmgr

mkdir -p /boot/efi

mount /dev/p1 /boot/efi

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg

pacman -S networkmanager sddm

pacman -S base-devel git

su mat
cd

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

sudo pacman -S alacritty swaybg swayidle swaylock ttf-dejavu ttf-roboto ttf-ubuntu-font-family xdg-desktop-portal-gnome xdg-desktop-portal-wlr niri

yay -S ttf-ms-fonts waypaper

**Don't forget to install various things like firefox, libreoffice?, audio, bluetooth

** Eventually we'll need to install Steam, and perhaps look into whatwe need to do to perhaps use CachyOS repos for stuff. 

exit
exit

umount -l /mnt

reboot


sudo systemctl start /dev/zram0
sudo systemctl enable --now NetworkManager
sudo systemctl enable --now sddm


