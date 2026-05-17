# Dotfiles To-Do

## Dark Theme

### GTK Apps

`sudo pacman -S nwg-look gnome-themes-extra`

`nwg-look`

Switch theme to Adwaita Dark and click dropdown box to select "prefer dark"

### QT Apps

`sudo pacman -S qt6ct`

Will need to update ENV variables (different for each WM?)

#### Hyprland LUA 
_Note_: According to Josean Martinez video "How I Setup Hyprland For An Incredible Workflow on Arch Linux"
Time: ~30:00m

Add the following to the ENVIRONMENT VARIABLES section of LUA config...

`hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")`

May need to reboot Hyprland at this point...

Run following command and select dark theme preference...

`qt6ct`

> [!NOTE]
> This process should be similar in Mango and Niri, need to research this more and update notes.

#### Niri

Input the following into the startup file for QT themeing:

```
environment {
    QT_QPA_PLATFORMTHEME "qt6ct"

}
```

## Flag Integration

* Set WM
* Set hardware system (cachy-laptop, cachy-desktop, cachy-ser5)
* Function: if statement to determine which system we're on (and corresponding place for output)
* Function: if statement to determine which WM is being used (and place for output)

# My Custom Themes

Purpose: Developing scripts / systems to handle my custom themes.

## To Do
1. For each of the apps to be themed, identify how they handle theming and create appropriate new theme-files in the theme subfolder.
2. For each of the above apps, create the appropriate #import in their config files.
3. Once all theme-files for a single theme have been created and all corresponding imports have been included, duplicate this theme and make some changes. 
4. Test how the changes take affect, and all steps along the way to ensuring the new theme is correctly applied.
5. Using Omarchy bin scripts as an example (~/dotfiles/scripts/omarchy-scripts/), build my own custom theme-switch scripts.

## Apps To Be Themed

* mango
* niri
* waybar
    * css import file?
* fuzzel / launcher
* nvim
    * lua include file? (neovim.lua sourced from 'themes' location?)
* foot
    - foot has its own theme folder with imports in the INI file. Just create a new import to the _current theme.
* btop?
* yazi

### How do these config files handle colors? Can they be imported?

* mango
    - .conf file 
    - format: 0xRRGGBBAA

## Theme Switching

### Configure PyWal

* How does it work?

  ```
  wal -i <path/to/image>
  ```

  This will use the image path provided and output various color files in .config folder. 

  Need to figure out how to properly utilize these outputed files in my color configurations.

* What is the input command for a given background?
* Where is the output containing the color palette?

# Omarchy Theme Process


