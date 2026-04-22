#! /bin/bash

set +e

# update window manager / environment flag
yomatta-set-windowmanager mango >/dev/null 2>&1

# obs (uncomment below after reviewing mangowc wiki)
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=kde

# noctalia shell startup
qs -c noctalia-shell &

# notify
# mako &

# wallpaper
#swaybg -i ~/walls/background.png >/dev/null 2>&1 &

# topbar
#waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css >/dev/null 2>&1 &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# Permission authentication (review on mangowc wiki)
#/usr/lib/xfce-polkit/xfce-polkit &
/usr/lib/polkit-kde-authentication-agent-1 &

#dropbox
dropbox &
