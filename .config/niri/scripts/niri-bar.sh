#! /bin/bash

#pkill waybar
#sleep 0.2
#waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css >/dev/null 2>&1 &
#waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css

pkill waybar
sleep 0.2
waybar -c ~/.config/niri/config-niri.jsonc -s ~/.config/niri/style-niri.css >/dev/null 2>&1 &
