#! /bin/bash

set +e

# update window manager / environment flag
yomatta-set-windowmanager mango-desktop >/dev/null 2>&1

#ensure desktop portal starts
/usr/lib/xdg-desktop-portal-wlr &

# notify
mako &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# Permission authentication (review on mangowc wiki)
#/usr/lib/xfce-polkit/xfce-polkit &
/usr/lib/polkit-kde-authentication-agent-1 &

#dropbox
dropbox &
