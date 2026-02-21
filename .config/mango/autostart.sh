#! /bin/bash

set +e

# obs (uncomment below after reviewing mangowc wiki)
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots

# notify
swaync &

# wallpaper
swaybg -i ~/walls/wall1.png >/dev/null 2>&1 &

# topbar
waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css >/dev/null 2>&1 &

# keep clipboard content 
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# Permission authentication (review on mangowc wiki)
/usr/lib/xfce-polkit/xfce-polkit &
