# Dotfiles To-Do

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
* btop?
* yazi

### How do these config files handle colors? Can they be imported?

* mango
    - .conf file 
    - format: 0xRRGGBBAA

## Theme Switching

### Configure PyWal

* How does it work?
* What is the input command for a given background?
* Where is the output containing the color palette?

