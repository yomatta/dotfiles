# DWM Readme

_Purpose_: This is my personal-use DWM help file. For making notes while learning DWM. 

## To Do

[] external monitor support (laptop)
[x] dropbox autostart
[] system tray?
[] Switch alt/win 
[] bluetooth integration (bluetui)
[] network integration (impala)
[] volume integration (pavucontrol)
[] keybind updates
    [x] close window
    [x] terminal
    [x] browser
    [] btop
    [x] file explorer / yazi
    [x] close all (ctrl mod del)
    [x] launcher
[] rofi integration / themeing
    - Should I use a different launcher here? 
    - Or bite the bullet and setup Rofi like everyone else?...



## Functions

* `zoom` : take focus (move active window to master)
* `view` : show all tags, but possibly still limited to current layout (so monocle view only shows 1 window?)
    - Need to play with this some more.
* `togglebar` : hide the top bar 
* `tag` : 
    - Specifically: ModShift 0 = apply all tags to current window
    - To cancel: apply a single tag to the window (ModShift 1-9)
* `killclient` : kill window
* `focusstack` : 
    - _default_ : Mod j|k 
    - k
* `setmfact` : increase/decrease the horizontal split
* `incnmaster` : incr/decr # of master windows


## Patches

Process:

`dwm.suckless.org`
Patches
Find patch... find appropriate .diff file.

`~/dwm/patches/`
`wget <link-to-diff-file>`
`cd ..`
`rm config.h`
`patch --dry-run < patches/patch-diff-file.diff`

`--dry-run` flag will allow you to test-install the patch prior to actually compiling it.
If there are any errors in the above command, will need to troubleshoot.

If there are no errors...
`patch < patches/patch-diff-file.diff`

## Multi Monitor

`xrandr` : to show current monitor outputs.

* It looks like you can just use the above command + flags to configure the monitor(s) in real time?
    - See `tldr xrandr` for more.



