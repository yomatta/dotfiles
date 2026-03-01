# Need to code this and test it to include it as a part of a custom Arch/Cachy setup script.

# for setting up Impala to play nice with NetworkManager

# add the following to /etc/NetworkManager/conf.d/wifi_backend.conf
# [device]
# wifi.backend=iwd

# Restart NetworkManager to apply changes (do not manually enable iwd.service)
# sudo systemctl restart NetworkManager

# check if the back is working correctly (output = 'enabled')
# nmcli radio wifi

# if issues: remove config file wifi_backend.conf and restart NetworkManager
