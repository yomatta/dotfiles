# APPS.md

*Purpose*: To establish and maintain a list of packages and apps that I like to use or that are to be used with certain desktop environments and/or window managers.

## Apps To Try

### TUI File Managers

- lf(?)
- ranger
- felix
- yazi

## WM Niri

### Required Packages

`niri`

*The niri package will pull in all necessary requirements, such as `wayland`.

### Recommended Packages

Source: http://wiki.archlinux.org/title/Niri

- `alacritty` : default terminal emulator
- `foot` : wayland terminal; displays images better than alacritty, lightweight and wayland-specific (not used in other OS... so more lightweight?)
- `neovim` : TUI text editor
- `fuzzel` : default application launcher
  - `wofi` : default app launcher I'm using on laptop
- `mako` : notifications
- `waybar` : wayland bar
- `swaybg` : background image 
- `swayidle`, `swaylock` : to lock the screen on idle status
- `xdg-desktop-portal-gtk`, `xdg-desktop-portal-gnome` : for screensharing
- `xdg-desktop-portal-kde` : as a desktop portal 
- `xwayland-satellite` : to run X11 apps
- `udiskie` : to manage and auto-mount USB drives
- `bluetui` : bluetooth TUI (launch from `waybar`)
- `impala` : `iwd` TUI front end (need to reconfigure standard cachyOS install to use `iwd` instead of `NetworkManager`)
- `thunar`, `thunar-dropbox(AUR)` : file explorer and dropbox support
- `dropbox(AUR)` : dropbox
- `libreoffice-fresh` : libreoffice

### Various Packages

- `tealdeer` : tldr
- `tree` : terminal tree viewer
- `fzf` : fuzzyfind
- `yazi` : terminal file explorer
- `eza` : alternative to `ls`
- `ticktick (aur)` : to-do list. (not sure what the actual aur package name is)
- ncdu : interactive disk usage tool (nice for showing where all your storage space is going)

### impala Setup

CachyOS requires some reconfiguration because it uses NetworkManager as its back end networking manager. Impala is a frontend TUI for iwd, which conflicts with NetworkManager.

Per Google AI:

1. `sudo pacman -S iwd`
2. `sudo nvim /etc/NetworkManager/conf.d/wifi_backend.conf`
  Add the following...
  `[device]`
  `wifi.backend=iwd`
3. Restart NetworkManager to apply changes (do not manually enable iwd.service)
  `sudo systemctl restart NetworkManager`
4. Check if the backend is working correctly:
  `nmcli radio wifi`

**Note: If you encounter issues, you can remove the configuration file from Step 2 and restart NetworkManager to revert to using `wpa_supplicant`.


## Master Package List (post-Cachy)
A list of packages/apps to be installed after a base cachyOS installation.

### Window Manager
niri
mango

### Custom Bar
waybar

### Notifications
mako

### Terminal Emulator
foot (or alacritty)

### Text Editor
neovim

### App launcher
fuzzel

### File Explorers
yazi
thunar
thunar-dropbox(AUR)

### Wallpaper
swaybg

### Fonts
ttf-jetbrains-mono-nerd
ttf-cascadia-mono-nerd

### Art
krita
blender
obs-studio
kdenlive
hyprpicker (color selector)

### Utilities / Other
xdg-desktop-portal-kde
xwayland-satellite
iwd
impala
bluetui
libreoffice-fresh
tealdeer
tree
fzf
eza
ncdu
chromium
dropbox(AUR)
ticktick(AUR)
