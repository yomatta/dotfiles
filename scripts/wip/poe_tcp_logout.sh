#!/bin/bash

# Path of Exile Logout Macro
#
# October 23, 2025


# Find the Path of Exile process and kill its connection
sudo ss -K sport = :20503 sport = :6112

# This line might be needed if the above doesn't work with the game.
# sudo ss -K dst :6112
