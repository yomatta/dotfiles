# Omarchy Mako

Omarchy keeps the `core.ini` file in the .local/share/omarchy/default/mako directory.

The mako.ini file is kept in each of the individual theme folders, and sources the above. 

When setting a theme, the mako.ini file is symlinked to the ~/.config/mako/ directory.

I suspect mako is then killed and restarted.
