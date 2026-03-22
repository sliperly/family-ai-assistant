sudo nano /etc/systemd/logind.conf

#HandleLidSwitch=ignore
#HandleLidSwitchExternalPower=ignore
#HandleLidSwitchDocked=ignore

sudo systemctl restart systemd-logind
