# Matta Custom Theme Scripts To Do

[x] yomatta-theme-bg-set : script that takes input of image file and sets it to the current background

[] Reformat base Mango / Niri config files to play nice with custom themeing.
  [] Is there a way to define color variables?
  [] If so... can we use a separate file to define the color variables and simply have that file imported into the main config files? So that a color-change is just updating the separate file while leaving the base config files immutable?

[] ENVIRONMENT FLAG: write a script for Mango and Niri that will be executed on launch: it will clear any existing environment flag and then create a flag of its own. This flag can be used by other scripts to know which environment we're in so that the proper config files can be loaded when necessary (ie theme switching). (Initial configs can still be setup in the environment's autostart config section).



## Questions

[] How does Omarchy handle making symlinks for theme files? (Which script is being used?)
