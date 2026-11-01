sudo pacman -S plasma-desktop plasma-login-manager plasma-nm plasma-pa yay qbittorrent vlc dolphin konsole steam kate kde-gtk-config inter-font ark unzip unrar flatpak partitionmanager libheif openssh shelly mullvad-vpn tuned-cachy tuned-cachy-ppd


sudo nano /etc/default/limine


add the acpi into the cmdline

acpi_backlight=native amdgpu.backlight=0 

sudo limine-update

sudo systemctl enable --now mullvad-daemon.service

sudo systemctl enable plasmalogin.service

sudo reboot

do cachy hello stuff

change settings like login and lock, change theme to union

do window rules and shortcut imports and add virtual desktops

change font to inter

sudo sed -i 's/^#\?DefaultTimeoutStopSec=.*/DefaultTimeoutStopSec=5s/' /etc/systemd/system.conf

sudo sed -i 's/^#\?DefaultTimeoutStopSec=.*/DefaultTimeoutStopSec=5s/' /etc/systemd/user.conf


sudo sed -i 's/^#\?SystemMaxUse=.*/SystemMaxUse=200M/' /etc/systemd/journald.conf

balooctl6 disable

balooctl6 purge

systemctl --user mask kde-baloo.service


yay --devel --save


yay -S curseforge kei


