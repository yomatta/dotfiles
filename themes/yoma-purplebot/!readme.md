# README

_Purpose_: Define what needs to happen to the theme files.

## Step 1: Copy Files

All files from the LOADING DIRECTORY will be copied to the active theme location:
`$HOME/.config/themes/_current/`

## Individual File Handling

Some files may need extra handling after they've been populated in the theme location...

* `background`
    - Symlink chosen image from `backgrounds/` directory to base theme location as `background`
* `yoma.yazi/`
    - Symlink this directory into the yazi config location.
    - `$HOME/.config/yazi/flavors/`
