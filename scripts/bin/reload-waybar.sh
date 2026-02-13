#!/bin/bash

# Kill Waybar and Reload it. For updating the config file.

killall waybar
waybar >/dev/null 2>&1 &
